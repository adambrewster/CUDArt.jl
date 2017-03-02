function _precompile_()
    ccall(:jl_generating_output, Cint, ()) == 1 || return nothing
    precompile(CUDArt.init, (Array{Int64, 1},))
    precompile(CUDArt.size, (CUDArt.CudaPitchedArray{Float64, 2}, Int64,))
    precompile(CUDArt.size, (CUDArt.CudaPitchedArray{UInt16, 2}, Int64,))
    precompile(CUDArt.size, (CUDArt.CudaPitchedArray{Int64, 1}, Int64,))
    precompile(CUDArt.attribute, (Int64, UInt32,))
    precompile(CUDArt.stride, (CUDArt.CudaPitchedArray{Int64, 1}, Int64,))
    precompile(CUDArt.size, (CUDArt.CudaPitchedArray{Int32, 2}, Int64,))
    precompile(CUDArt.stride, (CUDArt.CudaPitchedArray{Float64, 2}, Int64,))
    precompile(CUDArt.free, (CUDArt.CudaPitchedArray{Int32, 2},))
    precompile(CUDArt._copy!, (Array{Float64, 2}, CUDArt.CudaArray{Float64, 2}, CUDArt.Stream,))
    precompile(CUDArt.stride, (CUDArt.CudaPitchedArray{UInt16, 2}, Int64,))
    precompile(CUDArt._copy!, (Array{UInt16, 2}, CUDArt.CudaArray{UInt16, 2}, CUDArt.Stream,))
    precompile(CUDArt._copy!, (Array{Int32, 2}, CUDArt.CudaArray{Int32, 2}, CUDArt.Stream,))
    precompile(CUDArt.Type, (Type{CUDArt.CudaArray{Int64, 1}}, CUDArt.CudaPtr{Int64}, Tuple{Int64}, Int64,))
    precompile(CUDArt._copy!, (Array{Int64, 1}, CUDArt.CudaArray{Int64, 1}, CUDArt.Stream,))
    precompile(CUDArt._copy!, (CUDArt.HostArray{Int32, 2}, CUDArt.CudaArray{Int32, 2}, CUDArt.Stream,))
    precompile(CUDArt.pitchedptr, (Array{Int32, 2},))
    precompile(CUDArt.reinterpret, (Type{Float64}, CUDArt.CudaArray{Float64, 1}, Tuple{Int64, Int64, Int64, Int64},))
    precompile(CUDArt.free, (CUDArt.CudaPitchedArray{Float32, 1},))
    precompile(CUDArt.pitchedptr, (CUDArt.CudaArray{UInt16, 2},))
    precompile(CUDArt._copy!, (Array{Float64, 1}, CUDArt.CudaArray{Float64, 1}, CUDArt.Stream,))
    precompile(CUDArt.CUDArt_gen.cudaMalloc, (Base.RefValue{Ptr{Void}}, Int64,))
    precompile(CUDArt.pitchedptr, (Array{UInt16, 2},))
    precompile(CUDArt.stride, (CUDArt.CudaPitchedArray{Int32, 2}, Int64,))
    precompile(CUDArt.pitchedptr, (Array{Float64, 2},))
    precompile(CUDArt._copy!, (CUDArt.CudaPitchedArray{Float64, 2}, Base.SubArray{Float32, 2, Array{Float32, 2}, Tuple{Base.StepRange{Int64, Int64}, Base.Colon}, false}, CUDArt.Stream,))
    precompile(CUDArt._copy!, (CUDArt.CudaArray{Int32, 2}, CUDArt.HostArray{Int32, 2}, CUDArt.Stream,))
    precompile(CUDArt.pitchedptr, (Array{Int64, 1},))
    precompile(CUDArt._copy!, (CUDArt.CudaArray{Float64, 2}, Array{Float64, 2}, CUDArt.Stream,))
    precompile(CUDArt.free, (CUDArt.CudaPitchedArray{UInt16, 2},))
    precompile(CUDArt._copy!, (CUDArt.CudaArray{UInt16, 2}, Array{UInt16, 2}, CUDArt.Stream,))
    precompile(CUDArt._copy!, (CUDArt.CudaArray{Int64, 1}, Array{Int64, 1}, CUDArt.Stream,))
    precompile(CUDArt._copy!, (CUDArt.CudaArray{Int32, 2}, Array{Int32, 2}, CUDArt.Stream,))
    precompile(CUDArt.free, (CUDArt.CudaPitchedArray{Int64, 1},))
    precompile(CUDArt.device, ())
    precompile(CUDArt._copy!, (CUDArt.CudaArray{Float64, 1}, Array{Float64, 1}, CUDArt.Stream,))
    precompile(CUDArt.Type, (Type{CUDArt.CudaArray}, Base.UnitRange{Int64},))
    precompile(CUDArt.close, (Array{Int64, 1},))
    precompile(CUDArt.Type, (Type{CUDArt.CudaArray}, Array{Float64, 2},))
    precompile(CUDArt.Type, (Type{CUDArt.CudaPtr{UInt8}}, Ptr{UInt8}, CUDAdrv.CuContext,))
    precompile(CUDArt.checkstrides_pitched, (CUDArt.CudaPitchedArray{Int64, 1},))
    precompile(CUDArt.copy!, (CUDArt.CudaPitchedArray{Float64, 2}, Array{Float32, 2},))
    precompile(CUDArt.checkstrides_pitched, (CUDArt.CudaPitchedArray{Int32, 2},))
    precompile(CUDArt.checkstrides_pitched, (CUDArt.CudaPitchedArray{Float64, 2},))
    precompile(CUDArt.checkstrides_pitched, (CUDArt.CudaPitchedArray{UInt16, 2},))
    precompile(CUDArt.size, (CUDArt.CudaArray{UInt16, 2}, Int64,))
    precompile(CUDArt.fill!, (CUDArt.CudaPitchedArray{Float64, 2}, Float64,))
    precompile(CUDArt.checkstrides_pitched, (CUDArt.CudaArray{UInt16, 2},))
    precompile(CUDArt.similar, (CUDArt.CudaArray{Int64, 1},))
    precompile(CUDArt.similar, (CUDArt.CudaArray{Int64, 1}, Tuple{Int64},))
    precompile(CUDArt.get!, (CUDArt.CudaPitchedArray{Float64, 2}, CUDArt.CudaPitchedArray{Float64, 2}, Tuple{Int64, Base.UnitRange{Int64}}, Float64,))
    precompile(CUDArt.free, (CUDArt.CudaPtr{Float32},))
    precompile(CUDArt.Type, (Type{CUDArt.CudaPitchedArray}, Base.UnitRange{Int64},))
    precompile(CUDArt.similar, (CUDArt.CudaPitchedArray{Int64, 1},))
    precompile(CUDArt.checkstrides_pitched, (Array{Float64, 2},))
    precompile(CUDArt.Type, (Type{CUDArt.CUDArt_gen.cudaExtent}, Type{UInt16}, Tuple{Int64, Int64},))
    precompile(CUDArt.CUDArt_gen.checkerror, (UInt32,))
    precompile(CUDArt.Type, (Type{CUDArt.CUDArt_gen.cudaExtent}, Type{Int64}, Tuple{Int64},))
    precompile(CUDArt.free, (CUDArt.CudaPtr{Int32},))
    precompile(CUDArt.Type, (Type{CUDArt.CUDArt_gen.cudaExtent}, Type{Int32}, Tuple{Int64, Int64},))
    precompile(CUDArt.Type, (Type{CUDArt.CUDArt_gen.cudaExtent}, Type{Float64}, Tuple{Int64, Int64},))
    precompile(CUDArt.device, (Int64,))
    precompile(CUDArt.Type, (Type{CUDArt.CUDArt_gen.cudaExtent}, Type{Float32}, Tuple{Int64},))
    precompile(CUDArt.vec, (CUDArt.CudaArray{Float64, 2},))
    precompile(CUDArt.free, (CUDArt.CudaPitchedArray{Float64, 2},))
    precompile(CUDArt.free, (CUDArt.CudaPtr{Int64},))
    precompile(CUDArt._copy!, (Array{Int32, 2}, CUDArt.CudaPitchedArray{Int32, 2}, CUDArt.Stream,))
    precompile(CUDArt.pointer, (CUDArt.CudaPitchedArray{Float64, 2},))
    precompile(CUDArt.free, (CUDArt.CudaPtr{Float64},))
    precompile(CUDArt.free, (CUDArt.CudaPtr{UInt16},))
    precompile(CUDArt.Type, (Type{CUDArt.CudaPitchedArray{Float64, 2}}, CUDArt.CUDArt_gen.cudaPitchedPtr, Tuple{Int64, Int64}, Int64,))
    precompile(CUDArt.pointer, (CUDArt.CudaPitchedArray{Int64, 1},))
    precompile(CUDArt.size, (CUDArt.CudaArray{Float64, 4},))
    precompile(CUDArt.Type, (Type{CUDArt.CudaArray{Int32, 2}}, CUDArt.CudaPtr{Int32}, Tuple{Int64, Int64}, Int64,))
    precompile(CUDArt.copy, (CUDArt.CudaPtr{Float64},))
    precompile(CUDArt.fill!, (CUDArt.CudaPitchedArray{Int64, 1}, Int64,))
    precompile(CUDArt.Type, (Type{CUDArt.CudaArray{Float64, 1}}, CUDArt.CudaPtr{Float64}, Tuple{Int64}, Int64,))
    precompile(CUDArt.fill!, (CUDArt.CudaArray{Int64, 1}, UInt8,))
    precompile(CUDArt.fill!, (CUDArt.CudaPitchedArray{Int32, 2}, Int64,))
    precompile(CUDArt.fill!, (CUDArt.CudaArray{Int32, 2}, Int64,))
    precompile(CUDArt.devices, (Function,))
    precompile(CUDArt.Type, (Type{CUDArt.CudaArray{UInt16, 2}}, CUDArt.CudaPtr{UInt16}, Tuple{Int64, Int64}, Int64,))
    precompile(CUDArt.Type, (Type{CUDArt.CudaPitchedArray{Int32, 2}}, CUDArt.CUDArt_gen.cudaPitchedPtr, Tuple{Int64, Int64}, Int64,))
    precompile(CUDArt.Type, (Type{CUDArt.CudaArray{Float32, 1}}, CUDArt.CudaPtr{Float32}, Tuple{Int64}, Int64,))
    precompile(CUDArt.fill!, (CUDArt.CudaArray{Float64, 2}, Int64,))
    precompile(CUDArt.Type, (Type{CUDArt.CudaPitchedArray{Float32, 1}}, CUDArt.CUDArt_gen.cudaPitchedPtr, Tuple{Int64}, Int64,))
    precompile(CUDArt.free, (CUDArt.CudaPtr{UInt8},))
    precompile(CUDArt.Type, (Type{CUDArt.CudaPitchedArray{UInt16, 2}}, CUDArt.CUDArt_gen.cudaPitchedPtr, Tuple{Int64, Int64}, Int64,))
    precompile(CUDArt.Type, (Type{CUDArt.CudaPitchedArray{Int64, 1}}, CUDArt.CUDArt_gen.cudaPitchedPtr, Tuple{Int64}, Int64,))
    precompile(CUDArt.Type, (Type{CUDArt.CudaArray{Float64, 2}}, CUDArt.CudaPtr{Float64}, Tuple{Int64, Int64}, Int64,))
    precompile(CUDArt.fill!, (CUDArt.CudaArray{Int64, 1}, Int64,))
    precompile(CUDArt.size, (CUDArt.CudaArray{Float64, 2},))
    precompile(CUDArt.fill!, (CUDArt.CudaPitchedArray{Int64, 1}, UInt8,))
    precompile(CUDArt.copy!, (Array{Int32, 2}, CUDArt.CudaArray{Int32, 2},))
    precompile(CUDArt.size, (CUDArt.CudaPitchedArray{Float64, 2},))
    precompile(CUDArt.Type, (Type{CUDArt.CudaPtr{Float32}}, Ptr{Float32}, CUDAdrv.CuContext,))
    precompile(CUDArt.fill!, (CUDArt.CudaArray{Float64, 2}, Float64,))
    precompile(CUDArt.similar, (CUDArt.CudaPitchedArray{Int64, 1}, Tuple{Int64},))
    precompile(CUDArt.fill!, (CUDArt.CudaPitchedArray{Float64, 2}, Int64,))
    precompile(CUDArt.Type, (Type{CUDArt.CudaPtr{Int32}}, Ptr{Int32}, CUDAdrv.CuContext,))
    precompile(CUDArt.Type, (Type{CUDArt.CudaPtr{Int64}}, Ptr{Int64}, CUDAdrv.CuContext,))
    precompile(CUDArt.Type, (Type{CUDArt.CudaPtr{UInt16}}, Ptr{UInt16}, CUDAdrv.CuContext,))
    precompile(CUDArt.Type, (Type{CUDArt.CudaPtr{Float64}}, Ptr{Float64}, CUDAdrv.CuContext,))
    precompile(CUDArt.size, (CUDArt.CudaPitchedArray{Int64, 1},))
    precompile(CUDArt.size, (CUDArt.CudaArray{Int64, 1},))
    precompile(CUDArt.init, (Int64,))
    precompile(CUDArt.checkstrides_pitched, (Array{UInt16, 2},))
    precompile(CUDArt.checkstrides_pitched, (Array{Int32, 2},))
    precompile(CUDArt.pointer, (CUDArt.CudaArray{Float64, 2},))
    precompile(CUDArt.vec, (CUDArt.CudaArray{Float64, 1},))
    precompile(CUDArt.checkstrides_pitched, (Array{Int64, 1},))
    precompile(CUDArt.device_reset, (Int64,))
    precompile(CUDArt.free, (CUDArt.HostArray{Int32, 2},))
    precompile(CUDArt.close, (Int64,))
    precompile(CUDArt._copy!, (CUDArt.CudaArray{Float64, 2}, Base.SubArray{Float32, 2, Array{Float32, 2}, Tuple{Base.StepRange{Int64, Int64}, Base.Colon}, false}, CUDArt.Stream,))
    precompile(CUDArt.copy!, (CUDArt.CudaArray{Float64, 2}, Array{Float32, 2},))
    precompile(CUDArt.copy!, (CUDArt.CudaPitchedArray{Float64, 2}, Tuple{Base.UnitRange{Int64}, Base.UnitRange{Int64}}, CUDArt.CudaPitchedArray{Float64, 2}, Tuple{Base.UnitRange{Int64}, Base.UnitRange{Int64}},))
    precompile(CUDArt.devcount, ())
    precompile(CUDArt.to_host, (CUDArt.CudaPitchedArray{Int64, 1},))
    precompile(CUDArt._copy!, (CUDArt.CudaPitchedArray{UInt16, 2}, Array{UInt16, 2}, CUDArt.Stream,))
    precompile(CUDArt._copy!, (CUDArt.CudaPitchedArray{Float64, 2}, Array{Float64, 2}, CUDArt.Stream,))
    precompile(CUDArt.copy!, (CUDArt.CudaPitchedArray{UInt16, 2}, CUDArt.CudaArray{UInt16, 2},))
    precompile(CUDArt._copy!, (CUDArt.CudaPitchedArray{Int64, 1}, Array{Int64, 1}, CUDArt.Stream,))
    precompile(CUDArt.copy!, (CUDArt.CudaArray{UInt16, 2}, CUDArt.CudaPitchedArray{UInt16, 2},))
    precompile(CUDArt.to_host, (CUDArt.CudaPitchedArray{Float64, 2},))
    precompile(CUDArt.to_host, (CUDArt.CudaPitchedArray{UInt16, 2},))
    precompile(CUDArt.copy!, (CUDArt.CudaPitchedArray{Float64, 2}, Base.SubArray{Float32, 2, Array{Float32, 2}, Tuple{Base.StepRange{Int64, Int64}, Base.Colon}, false},))
    precompile(CUDArt._copy!, (CUDArt.CudaPitchedArray{Int32, 2}, Array{Int32, 2}, CUDArt.Stream,))
    precompile(CUDArt.to_host, (CUDArt.CudaPitchedArray{Int32, 2},))
    precompile(CUDArt.copy!, (CUDArt.CudaArray{Float64, 2}, Base.SubArray{Float32, 2, Array{Float32, 2}, Tuple{Base.StepRange{Int64, Int64}, Base.Colon}, false},))
    precompile(CUDArt.copy!, (CUDArt.HostArray{Int32, 2}, CUDArt.CudaArray{Int32, 2},))
    precompile(CUDArt.to_host, (CUDArt.CudaArray{Float64, 2},))
    precompile(CUDArt.to_host, (CUDArt.CudaArray{Int32, 2},))
    precompile(CUDArt.to_host, (CUDArt.CudaArray{Int64, 1},))
    precompile(CUDArt.to_host, (CUDArt.CudaArray{UInt16, 2},))
    precompile(CUDArt.to_host, (CUDArt.CudaArray{Float64, 1},))
    precompile(CUDArt.free, (CUDArt.CudaArray{Float64, 2},))
end
