# pointer.jl
#
# Julia type and memory management for CUDA pointers.  Combined
# from CUDA.jl, CUDArt.jl, and Nick Henderson's fork of CUDArt.jl.

# A raw CUDA pointer
type CudaPtr{T}
    ptr::Ptr{T}
    ctx::CuContext
end

# Type alias for previous name
const CudaDevicePtr = CudaPtr

#############################
# Low-level memory handling #
#############################

CudaPtr() = CudaPtr(C_NULL, CuContext(C_NULL))
CudaPtr(T::Type) = CudaPtr(unsafe_convert(Ptr{T},C_NULL), CuContext(C_NULL))
unsafe_convert{P<:Ptr}(::Type{P}, p::CudaPtr) = unsafe_convert(P, p.ptr)
convert{P<:Ptr}(::Type{P}, p::CudaPtr) = unsafe_convert(P, p.ptr)
copy(p::CudaPtr) = CudaPtr(p.ptr, p.ctx)
Base.deepcopy_internal(ptr::CudaPtr, ::ObjectIdDict) = copy(ptr)

rawpointer(p::CudaPtr) = p

function malloc(T::Type, n::Integer)
    p = Ref{Ptr{Void}}(C_NULL)
    nbytes = sizeof(T)*n
    rt.cudaMalloc(p, nbytes)
    cptr = CudaPtr{T}(unsafe_convert(Ptr{T}, p[]), contexts[device()])
    cptr
end
malloc(nbytes::Integer) = malloc(UInt8, nbytes)

Base.close(p::CudaPtr) = free(p)
function free{T}(p::CudaPtr{T})
    cnull = unsafe_convert(Ptr{T}, C_NULL)
    if p.ptr != cnull
        rt.cudaFree(p)
        p.ptr = cnull
    end
end

const Ptrs = Union{Ptr, CudaPtr, rt.cudaPitchedPtr}
const CudaPtrs = Union{CudaPtr, rt.cudaPitchedPtr}

cudamemcpykind(dstp::Ptr, srcp::Ptr) = rt.cudaMemcpyHostToHost
cudamemcpykind(dstp::CudaPtrs, srcp::Ptr) = rt.cudaMemcpyHostToDevice
cudamemcpykind(dstp::Ptr, srcp::CudaPtrs) = rt.cudaMemcpyDeviceToHost
cudamemcpykind(dstp::CudaPtrs, srcp::CudaPtrs) = rt.cudaMemcpyDeviceToDevice
cudamemcpykind(dst::Ptrs, src::Ptrs) = error("This should never happen") # prevent a useless ambiguity warning
cudamemcpykind(dst, src::Ptrs) = cudamemcpykind(pointer(dst), src)
cudamemcpykind(dst::Ptrs, src) = cudamemcpykind(dst, pointer(src))
cudamemcpykind(dst, src) = cudamemcpykind(pointer(dst), pointer(src))

## converting pointers to an appropriate unsigned ##

const CUDA_NULL = CudaPtr()

# pointer to integer
convert(::Type{UInt}, x::CudaPtr) = convert(UInt,x.ptr)
convert{T<:Integer}(::Type{T}, x::CudaPtr) = convert(T,unsigned(x))

# integer to pointer
convert{T}(::Type{CudaPtr{T}}, x::Integer) = CudaPtr(convert(Ptr{T},x))

# pointer to pointer
convert{T}(::Type{CudaPtr{T}}, p::CudaPtr{T}) = p
convert{T}(::Type{CudaPtr{T}}, p::CudaPtr) = CudaPtr(convert(Ptr{T},p.ptr))

integer(x::CudaPtr) = convert(UInt, x.ptr)
unsigned(x::CudaPtr) = convert(UInt, x.ptr)

eltype{T}(::CudaPtr{T}) = T

## limited pointer arithmetic & comparison ##

==(x::CudaPtr, y::CudaPtr) = UInt(x) == UInt(y)
-(x::CudaPtr, y::CudaPtr) = UInt(x) - UInt(y)

+(x::CudaPtr, y::Integer) = oftype(x, UInt(UInt(x) + y))
-(x::CudaPtr, y::Integer) = oftype(x, UInt(UInt(x) - y))
+(x::Integer, y::CudaPtr) = y + x

zero{T}(::Type{CudaPtr{T}}) = unsafe_convert(CudaPtr{T}, C_NULL)
zero{T}(x::CudaPtr{T}) = unsafe_convert(CudaPtr{T}, C_NULL)
one{T}(::Type{CudaPtr{T}}) = unsafe_convert(CudaPtr{T}, 1)
one{T}(x::CudaPtr{T}) = unsafe_convert(CudaPtr{T}, 1)
