# 1 "aux_updates.cudafe2.gpu"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "aux_updates.cudafe2.gpu"
# 211 "/usr/lib/gcc/x86_64-linux-gnu/4.4.5/include/stddef.h" 3
typedef unsigned long size_t;
# 1 "/usr/local/cuda/include/crt/device_runtime.h" 1 3
# 38 "/usr/local/cuda/include/crt/device_runtime.h" 3
# 1 "/usr/local/cuda/include/host_defines.h" 1 3
# 39 "/usr/local/cuda/include/crt/device_runtime.h" 2 3




typedef const void *__texture_type__;

typedef const void *__surface_type__;
# 135 "/usr/local/cuda/include/crt/device_runtime.h" 3
# 1 "/usr/local/cuda/include/builtin_types.h" 1 3
# 56 "/usr/local/cuda/include/builtin_types.h" 3
# 1 "/usr/local/cuda/include/device_types.h" 1 3
# 60 "/usr/local/cuda/include/device_types.h" 3
enum cudaRoundMode
{
  cudaRoundNearest,
  cudaRoundZero,
  cudaRoundPosInf,
  cudaRoundMinInf
};
# 57 "/usr/local/cuda/include/builtin_types.h" 2 3
# 1 "/usr/local/cuda/include/driver_types.h" 1 3
# 118 "/usr/local/cuda/include/driver_types.h" 3
enum cudaError
{





  cudaSuccess = 0,





  cudaErrorMissingConfiguration = 1,





  cudaErrorMemoryAllocation = 2,





  cudaErrorInitializationError = 3,
# 153 "/usr/local/cuda/include/driver_types.h" 3
  cudaErrorLaunchFailure = 4,
# 162 "/usr/local/cuda/include/driver_types.h" 3
  cudaErrorPriorLaunchFailure = 5,
# 172 "/usr/local/cuda/include/driver_types.h" 3
  cudaErrorLaunchTimeout = 6,
# 181 "/usr/local/cuda/include/driver_types.h" 3
  cudaErrorLaunchOutOfResources = 7,





  cudaErrorInvalidDeviceFunction = 8,
# 196 "/usr/local/cuda/include/driver_types.h" 3
  cudaErrorInvalidConfiguration = 9,





  cudaErrorInvalidDevice = 10,





  cudaErrorInvalidValue = 11,





  cudaErrorInvalidPitchValue = 12,





  cudaErrorInvalidSymbol = 13,




  cudaErrorMapBufferObjectFailed = 14,




  cudaErrorUnmapBufferObjectFailed = 15,





  cudaErrorInvalidHostPointer = 16,





  cudaErrorInvalidDevicePointer = 17,





  cudaErrorInvalidTexture = 18,





  cudaErrorInvalidTextureBinding = 19,






  cudaErrorInvalidChannelDescriptor = 20,





  cudaErrorInvalidMemcpyDirection = 21,
# 277 "/usr/local/cuda/include/driver_types.h" 3
  cudaErrorAddressOfConstant = 22,
# 286 "/usr/local/cuda/include/driver_types.h" 3
  cudaErrorTextureFetchFailed = 23,
# 295 "/usr/local/cuda/include/driver_types.h" 3
  cudaErrorTextureNotBound = 24,
# 304 "/usr/local/cuda/include/driver_types.h" 3
  cudaErrorSynchronizationError = 25,





  cudaErrorInvalidFilterSetting = 26,





  cudaErrorInvalidNormSetting = 27,







  cudaErrorMixedDeviceExecution = 28,







  cudaErrorCudartUnloading = 29,




  cudaErrorUnknown = 30,





  cudaErrorNotYetImplemented = 31,
# 352 "/usr/local/cuda/include/driver_types.h" 3
  cudaErrorMemoryValueTooLarge = 32,






  cudaErrorInvalidResourceHandle = 33,







  cudaErrorNotReady = 34,






  cudaErrorInsufficientDriver = 35,
# 387 "/usr/local/cuda/include/driver_types.h" 3
  cudaErrorSetOnActiveProcess = 36,





  cudaErrorInvalidSurface = 37,





  cudaErrorNoDevice = 38,





  cudaErrorECCUncorrectable = 39,




  cudaErrorSharedObjectSymbolNotFound = 40,




  cudaErrorSharedObjectInitFailed = 41,





  cudaErrorUnsupportedLimit = 42,





  cudaErrorDuplicateVariableName = 43,





  cudaErrorDuplicateTextureName = 44,





  cudaErrorDuplicateSurfaceName = 45,
# 449 "/usr/local/cuda/include/driver_types.h" 3
  cudaErrorDevicesUnavailable = 46,




  cudaErrorInvalidKernelImage = 47,







  cudaErrorNoKernelImageForDevice = 48,
# 475 "/usr/local/cuda/include/driver_types.h" 3
  cudaErrorIncompatibleDriverContext = 49,






  cudaErrorPeerAccessAlreadyEnabled = 50,






  cudaErrorPeerAccessNotEnabled = 51,





  cudaErrorDeviceAlreadyInUse = 54,







  cudaErrorProfilerDisabled = 55,






  cudaErrorProfilerNotInitialized = 56,






  cudaErrorProfilerAlreadyStarted = 57,





   cudaErrorProfilerAlreadyStopped = 58,




  cudaErrorStartupFailure = 0x7f,





  cudaErrorApiFailureBase = 10000
};





enum cudaChannelFormatKind
{
  cudaChannelFormatKindSigned = 0,
  cudaChannelFormatKindUnsigned = 1,
  cudaChannelFormatKindFloat = 2,
  cudaChannelFormatKindNone = 3
};





struct cudaChannelFormatDesc
{
  int x;
  int y;
  int z;
  int w;
  enum cudaChannelFormatKind f;
};





struct cudaArray;





enum cudaMemoryType
{
  cudaMemoryTypeHost = 1,
  cudaMemoryTypeDevice = 2
};





enum cudaMemcpyKind
{
  cudaMemcpyHostToHost = 0,
  cudaMemcpyHostToDevice = 1,
  cudaMemcpyDeviceToHost = 2,
  cudaMemcpyDeviceToDevice = 3,
  cudaMemcpyDefault = 4
};






struct cudaPitchedPtr
{
  void *ptr;
  size_t pitch;
  size_t xsize;
  size_t ysize;
};






struct cudaExtent
{
  size_t width;
  size_t height;
  size_t depth;
};






struct cudaPos
{
  size_t x;
  size_t y;
  size_t z;
};





struct cudaMemcpy3DParms
{
  struct cudaArray *srcArray;
  struct cudaPos srcPos;
  struct cudaPitchedPtr srcPtr;

  struct cudaArray *dstArray;
  struct cudaPos dstPos;
  struct cudaPitchedPtr dstPtr;

  struct cudaExtent extent;
  enum cudaMemcpyKind kind;
};





struct cudaMemcpy3DPeerParms
{
  struct cudaArray *srcArray;
  struct cudaPos srcPos;
  struct cudaPitchedPtr srcPtr;
  int srcDevice;

  struct cudaArray *dstArray;
  struct cudaPos dstPos;
  struct cudaPitchedPtr dstPtr;
  int dstDevice;

  struct cudaExtent extent;
};





struct cudaGraphicsResource;





enum cudaGraphicsRegisterFlags
{
  cudaGraphicsRegisterFlagsNone = 0,
  cudaGraphicsRegisterFlagsReadOnly = 1,
  cudaGraphicsRegisterFlagsWriteDiscard = 2,
  cudaGraphicsRegisterFlagsSurfaceLoadStore = 4
};





enum cudaGraphicsMapFlags
{
  cudaGraphicsMapFlagsNone = 0,
  cudaGraphicsMapFlagsReadOnly = 1,
  cudaGraphicsMapFlagsWriteDiscard = 2
};





enum cudaGraphicsCubeFace {
  cudaGraphicsCubeFacePositiveX = 0x00,
  cudaGraphicsCubeFaceNegativeX = 0x01,
  cudaGraphicsCubeFacePositiveY = 0x02,
  cudaGraphicsCubeFaceNegativeY = 0x03,
  cudaGraphicsCubeFacePositiveZ = 0x04,
  cudaGraphicsCubeFaceNegativeZ = 0x05
};





struct cudaPointerAttributes
{




    enum cudaMemoryType memoryType;
# 728 "/usr/local/cuda/include/driver_types.h" 3
    int device;





    void *devicePointer;





    void *hostPointer;
};





struct cudaFuncAttributes
{





   size_t sharedSizeBytes;





   size_t constSizeBytes;




   size_t localSizeBytes;






   int maxThreadsPerBlock;




   int numRegs;






   int ptxVersion;






   int binaryVersion;
};





enum cudaFuncCache
{
  cudaFuncCachePreferNone = 0,
  cudaFuncCachePreferShared = 1,
  cudaFuncCachePreferL1 = 2
};





enum cudaComputeMode
{
  cudaComputeModeDefault = 0,
  cudaComputeModeExclusive = 1,
  cudaComputeModeProhibited = 2,
  cudaComputeModeExclusiveProcess = 3
};





enum cudaLimit
{
    cudaLimitStackSize = 0x00,
    cudaLimitPrintfFifoSize = 0x01,
    cudaLimitMallocHeapSize = 0x02
};





enum cudaOutputMode
{
    cudaKeyValuePair = 0x00,
    cudaCSV = 0x01
};





struct cudaDeviceProp
{
  char name[256];
  size_t totalGlobalMem;
  size_t sharedMemPerBlock;
  int regsPerBlock;
  int warpSize;
  size_t memPitch;
  int maxThreadsPerBlock;
  int maxThreadsDim[3];
  int maxGridSize[3];
  int clockRate;
  size_t totalConstMem;
  int major;
  int minor;
  size_t textureAlignment;
  int deviceOverlap;
  int multiProcessorCount;
  int kernelExecTimeoutEnabled;
  int integrated;
  int canMapHostMemory;
  int computeMode;
  int maxTexture1D;
  int maxTexture2D[2];
  int maxTexture3D[3];
  int maxTexture1DLayered[2];
  int maxTexture2DLayered[3];
  size_t surfaceAlignment;
  int concurrentKernels;
  int ECCEnabled;
  int pciBusID;
  int pciDeviceID;
  int tccDriver;
  int asyncEngineCount;
  int unifiedAddressing;
  int memoryClockRate;
  int memoryBusWidth;
  int l2CacheSize;
  int maxThreadsPerMultiProcessor;
};
# 934 "/usr/local/cuda/include/driver_types.h" 3
typedef enum cudaError cudaError_t;





typedef struct CUstream_st *cudaStream_t;





typedef struct CUevent_st *cudaEvent_t;





typedef struct cudaGraphicsResource *cudaGraphicsResource_t;





typedef struct CUuuid_st cudaUUID_t;





typedef enum cudaOutputMode cudaOutputMode_t;
# 58 "/usr/local/cuda/include/builtin_types.h" 2 3
# 1 "/usr/local/cuda/include/surface_types.h" 1 3
# 77 "/usr/local/cuda/include/surface_types.h" 3
enum cudaSurfaceBoundaryMode
{
  cudaBoundaryModeZero = 0,
  cudaBoundaryModeClamp = 1,
  cudaBoundaryModeTrap = 2
};





enum cudaSurfaceFormatMode
{
  cudaFormatModeForced = 0,
  cudaFormatModeAuto = 1
};





struct surfaceReference
{



  struct cudaChannelFormatDesc channelDesc;
};
# 59 "/usr/local/cuda/include/builtin_types.h" 2 3
# 1 "/usr/local/cuda/include/texture_types.h" 1 3
# 83 "/usr/local/cuda/include/texture_types.h" 3
enum cudaTextureAddressMode
{
  cudaAddressModeWrap = 0,
  cudaAddressModeClamp = 1,
  cudaAddressModeMirror = 2,
  cudaAddressModeBorder = 3
};





enum cudaTextureFilterMode
{
  cudaFilterModePoint = 0,
  cudaFilterModeLinear = 1
};





enum cudaTextureReadMode
{
  cudaReadModeElementType = 0,
  cudaReadModeNormalizedFloat = 1
};





struct textureReference
{



  int normalized;



  enum cudaTextureFilterMode filterMode;



  enum cudaTextureAddressMode addressMode[3];



  struct cudaChannelFormatDesc channelDesc;



  int sRGB;
  int __cudaReserved[15];
};
# 60 "/usr/local/cuda/include/builtin_types.h" 2 3
# 1 "/usr/local/cuda/include/vector_types.h" 1 3
# 59 "/usr/local/cuda/include/vector_types.h" 3
# 1 "/usr/local/cuda/include/builtin_types.h" 1 3
# 60 "/usr/local/cuda/include/builtin_types.h" 3
# 1 "/usr/local/cuda/include/vector_types.h" 1 3
# 60 "/usr/local/cuda/include/builtin_types.h" 2 3
# 60 "/usr/local/cuda/include/vector_types.h" 2 3
# 1 "/usr/local/cuda/include/host_defines.h" 1 3
# 61 "/usr/local/cuda/include/vector_types.h" 2 3
# 92 "/usr/local/cuda/include/vector_types.h" 3
struct char1
{
  signed char x;
};


struct uchar1
{
  unsigned char x;
};


struct __attribute__((aligned(2))) char2
{
  signed char x, y;
};


struct __attribute__((aligned(2))) uchar2
{
  unsigned char x, y;
};


struct char3
{
  signed char x, y, z;
};


struct uchar3
{
  unsigned char x, y, z;
};


struct __attribute__((aligned(4))) char4
{
  signed char x, y, z, w;
};


struct __attribute__((aligned(4))) uchar4
{
  unsigned char x, y, z, w;
};


struct short1
{
  short x;
};


struct ushort1
{
  unsigned short x;
};


struct __attribute__((aligned(4))) short2
{
  short x, y;
};


struct __attribute__((aligned(4))) ushort2
{
  unsigned short x, y;
};


struct short3
{
  short x, y, z;
};


struct ushort3
{
  unsigned short x, y, z;
};


struct __attribute__((aligned(8))) short4 { short x; short y; short z; short w; };


struct __attribute__((aligned(8))) ushort4 { unsigned short x; unsigned short y; unsigned short z; unsigned short w; };


struct int1
{
  int x;
};


struct uint1
{
  unsigned int x;
};


struct __attribute__((aligned(8))) int2 { int x; int y; };


struct __attribute__((aligned(8))) uint2 { unsigned int x; unsigned int y; };


struct int3
{
  int x, y, z;
};


struct uint3
{
  unsigned int x, y, z;
};


struct __attribute__((aligned(16))) int4
{
  int x, y, z, w;
};


struct __attribute__((aligned(16))) uint4
{
  unsigned int x, y, z, w;
};


struct long1
{
  long int x;
};


struct ulong1
{
  unsigned long x;
};
# 246 "/usr/local/cuda/include/vector_types.h" 3
struct __attribute__((aligned(2*sizeof(long int)))) long2
{
  long int x, y;
};


struct __attribute__((aligned(2*sizeof(unsigned long int)))) ulong2
{
  unsigned long int x, y;
};




struct long3
{
  long int x, y, z;
};


struct ulong3
{
  unsigned long int x, y, z;
};


struct __attribute__((aligned(16))) long4
{
  long int x, y, z, w;
};


struct __attribute__((aligned(16))) ulong4
{
  unsigned long int x, y, z, w;
};


struct float1
{
  float x;
};


struct __attribute__((aligned(8))) float2 { float x; float y; };


struct float3
{
  float x, y, z;
};


struct __attribute__((aligned(16))) float4
{
  float x, y, z, w;
};


struct longlong1
{
  long long int x;
};


struct ulonglong1
{
  unsigned long long int x;
};


struct __attribute__((aligned(16))) longlong2
{
  long long int x, y;
};


struct __attribute__((aligned(16))) ulonglong2
{
  unsigned long long int x, y;
};


struct longlong3
{
  long long int x, y, z;
};


struct ulonglong3
{
  unsigned long long int x, y, z;
};


struct __attribute__((aligned(16))) longlong4
{
  long long int x, y, z ,w;
};


struct __attribute__((aligned(16))) ulonglong4
{
  unsigned long long int x, y, z, w;
};


struct double1
{
  double x;
};


struct __attribute__((aligned(16))) double2
{
  double x, y;
};


struct double3
{
  double x, y, z;
};


struct __attribute__((aligned(16))) double4
{
  double x, y, z, w;
};
# 390 "/usr/local/cuda/include/vector_types.h" 3
typedef struct char1 char1;

typedef struct uchar1 uchar1;

typedef struct char2 char2;

typedef struct uchar2 uchar2;

typedef struct char3 char3;

typedef struct uchar3 uchar3;

typedef struct char4 char4;

typedef struct uchar4 uchar4;

typedef struct short1 short1;

typedef struct ushort1 ushort1;

typedef struct short2 short2;

typedef struct ushort2 ushort2;

typedef struct short3 short3;

typedef struct ushort3 ushort3;

typedef struct short4 short4;

typedef struct ushort4 ushort4;

typedef struct int1 int1;

typedef struct uint1 uint1;

typedef struct int2 int2;

typedef struct uint2 uint2;

typedef struct int3 int3;

typedef struct uint3 uint3;

typedef struct int4 int4;

typedef struct uint4 uint4;

typedef struct long1 long1;

typedef struct ulong1 ulong1;

typedef struct long2 long2;

typedef struct ulong2 ulong2;

typedef struct long3 long3;

typedef struct ulong3 ulong3;

typedef struct long4 long4;

typedef struct ulong4 ulong4;

typedef struct float1 float1;

typedef struct float2 float2;

typedef struct float3 float3;

typedef struct float4 float4;

typedef struct longlong1 longlong1;

typedef struct ulonglong1 ulonglong1;

typedef struct longlong2 longlong2;

typedef struct ulonglong2 ulonglong2;

typedef struct longlong3 longlong3;

typedef struct ulonglong3 ulonglong3;

typedef struct longlong4 longlong4;

typedef struct ulonglong4 ulonglong4;

typedef struct double1 double1;

typedef struct double2 double2;

typedef struct double3 double3;

typedef struct double4 double4;
# 493 "/usr/local/cuda/include/vector_types.h" 3
struct dim3
{
    unsigned int x, y, z;





};


typedef struct dim3 dim3;
# 60 "/usr/local/cuda/include/builtin_types.h" 2 3
# 136 "/usr/local/cuda/include/crt/device_runtime.h" 2 3
# 1 "/usr/local/cuda/include/device_launch_parameters.h" 1 3
# 67 "/usr/local/cuda/include/device_launch_parameters.h" 3
uint3 extern const threadIdx;

uint3 extern const blockIdx;

dim3 extern const blockDim;

dim3 extern const gridDim;

int extern const warpSize;
# 137 "/usr/local/cuda/include/crt/device_runtime.h" 2 3
# 1 "/usr/local/cuda/include/crt/storage_class.h" 1 3
# 137 "/usr/local/cuda/include/crt/device_runtime.h" 2 3
# 213 "/usr/lib/gcc/x86_64-linux-gnu/4.4.5/include/stddef.h" 2 3
# 145 "/usr/include/bits/types.h" 3
typedef long __clock_t;
# 60 "/usr/include/time.h" 3
typedef __clock_t clock_t;
# 15 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
__attribute__((global)) __attribute__((__used__)) extern void _Z16kernel_Mult_Wi_uPfiS_iS_S_iiii(float *, int, float *, int, float *, float *, int, int, int, int);
# 65 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
__attribute__((global)) __attribute__((__used__)) extern void _Z11kernel_blurPfiS_iS_iii(float *, int, float *, int, float *, int, int, int);
# 1 "/usr/local/cuda/include/common_functions.h" 1
# 147 "/usr/local/cuda/include/common_functions.h"
# 1 "/usr/local/cuda/include/math_functions.h" 1 3
# 1064 "/usr/local/cuda/include/math_functions.h" 3
# 1 "/usr/local/cuda/include/math_constants.h" 1 3
# 1065 "/usr/local/cuda/include/math_functions.h" 2 3






# 1 "/usr/local/cuda/include/device_functions.h" 1 3
# 484 "/usr/local/cuda/include/device_functions.h" 3
static __inline__ __attribute__((always_inline)) float __sinf(float a)
{
  return __builtin_sinf(a);
}

static __inline__ __attribute__((always_inline)) float __cosf(float a)
{
  return __builtin_cosf(a);
}

static __inline__ __attribute__((always_inline)) float __log2f(float a)
{
  return __builtin_log2f(a);
}







static __inline__ __attribute__((always_inline)) float __tanf(float a)
{
  return __fdividef (__sinf(a), __cosf(a));
}

static __inline__ __attribute__((always_inline)) void __sincosf(float a, float *sptr, float *cptr)
{
  *sptr = __sinf(a);
  *cptr = __cosf(a);
}

static __inline__ __attribute__((always_inline)) float __expf(float a)
{
  return exp2f(a * 1.442695041f);
}

static __inline__ __attribute__((always_inline)) float __exp10f(float a)
{
  return exp2f(a * 3.321928094f);
}

static __inline__ __attribute__((always_inline)) float __log10f(float a)
{
  return 0.301029996f * __log2f(a);
}

static __inline__ __attribute__((always_inline)) float __logf(float a)
{
  return 0.693147181f * __log2f(a);
}

static __inline__ __attribute__((always_inline)) float __powf(float a, float b)
{
  return exp2f(b * __log2f(a));
}

static __inline__ __attribute__((always_inline)) float fdividef(float a, float b)
{

  return __fdividef(a, b);



}
# 561 "/usr/local/cuda/include/device_functions.h" 3
static __inline__ __attribute__((always_inline)) double fdivide(double a, double b)
{
  return a / b;
}
# 2588 "/usr/local/cuda/include/device_functions.h" 3
static __inline__ __attribute__((always_inline)) int __ffs(int a)
{
  return 32 - __clz(a & -a);
}

static __inline__ __attribute__((always_inline)) int __ffsll(long long int a)
{
  return 64 - __clzll(a & -a);
}
# 2606 "/usr/local/cuda/include/device_functions.h" 3
# 1 "/usr/local/cuda/include/sm_11_atomic_functions.h" 1 3
# 2607 "/usr/local/cuda/include/device_functions.h" 2 3
# 1 "/usr/local/cuda/include/sm_12_atomic_functions.h" 1 3
# 2608 "/usr/local/cuda/include/device_functions.h" 2 3
# 1 "/usr/local/cuda/include/sm_13_double_functions.h" 1 3
# 2609 "/usr/local/cuda/include/device_functions.h" 2 3
# 1 "/usr/local/cuda/include/sm_20_atomic_functions.h" 1 3
# 2610 "/usr/local/cuda/include/device_functions.h" 2 3
# 1 "/usr/local/cuda/include/sm_20_intrinsics.h" 1 3
# 2611 "/usr/local/cuda/include/device_functions.h" 2 3
# 1 "/usr/local/cuda/include/surface_functions.h" 1 3
# 1382 "/usr/local/cuda/include/surface_functions.h" 3
extern uchar1 __surf1Dreadc1(const void*, int, enum cudaSurfaceBoundaryMode);
extern uchar2 __surf1Dreadc2(const void*, int, enum cudaSurfaceBoundaryMode);
extern uchar4 __surf1Dreadc4(const void*, int, enum cudaSurfaceBoundaryMode);
extern ushort1 __surf1Dreads1(const void*, int, enum cudaSurfaceBoundaryMode);
extern ushort2 __surf1Dreads2(const void*, int, enum cudaSurfaceBoundaryMode);
extern ushort4 __surf1Dreads4(const void*, int, enum cudaSurfaceBoundaryMode);
extern uint1 __surf1Dreadu1(const void*, int, enum cudaSurfaceBoundaryMode);
extern uint2 __surf1Dreadu2(const void*, int, enum cudaSurfaceBoundaryMode);
extern uint4 __surf1Dreadu4(const void*, int, enum cudaSurfaceBoundaryMode);
extern ulonglong1 __surf1Dreadl1(const void*, int, enum cudaSurfaceBoundaryMode);
extern ulonglong2 __surf1Dreadl2(const void*, int, enum cudaSurfaceBoundaryMode);
extern uchar1 __surf2Dreadc1(const void*, int, int, enum cudaSurfaceBoundaryMode);
extern uchar2 __surf2Dreadc2(const void*, int, int, enum cudaSurfaceBoundaryMode);
extern uchar4 __surf2Dreadc4(const void*, int, int, enum cudaSurfaceBoundaryMode);
extern ushort1 __surf2Dreads1(const void*, int, int, enum cudaSurfaceBoundaryMode);
extern ushort2 __surf2Dreads2(const void*, int, int, enum cudaSurfaceBoundaryMode);
extern ushort4 __surf2Dreads4(const void*, int, int, enum cudaSurfaceBoundaryMode);
extern uint1 __surf2Dreadu1(const void*, int, int, enum cudaSurfaceBoundaryMode);
extern uint2 __surf2Dreadu2(const void*, int, int, enum cudaSurfaceBoundaryMode);
extern uint4 __surf2Dreadu4(const void*, int, int, enum cudaSurfaceBoundaryMode);
extern ulonglong1 __surf2Dreadl1(const void*, int, int, enum cudaSurfaceBoundaryMode);
extern ulonglong2 __surf2Dreadl2(const void*, int, int, enum cudaSurfaceBoundaryMode);
extern void __surf1Dwritec1( uchar1, const void*, int, enum cudaSurfaceBoundaryMode);
extern void __surf1Dwritec2( uchar2, const void*, int, enum cudaSurfaceBoundaryMode);
extern void __surf1Dwritec4( uchar4, const void*, int, enum cudaSurfaceBoundaryMode);
extern void __surf1Dwrites1( ushort1, const void*, int, enum cudaSurfaceBoundaryMode);
extern void __surf1Dwrites2( ushort2, const void*, int, enum cudaSurfaceBoundaryMode);
extern void __surf1Dwrites4( ushort4, const void*, int, enum cudaSurfaceBoundaryMode);
extern void __surf1Dwriteu1( uint1, const void*, int, enum cudaSurfaceBoundaryMode);
extern void __surf1Dwriteu2( uint2, const void*, int, enum cudaSurfaceBoundaryMode);
extern void __surf1Dwriteu4( uint4, const void*, int, enum cudaSurfaceBoundaryMode);
extern void __surf1Dwritel1(ulonglong1, const void*, int, enum cudaSurfaceBoundaryMode);
extern void __surf1Dwritel2(ulonglong2, const void*, int, enum cudaSurfaceBoundaryMode);
extern void __surf2Dwritec1( uchar1, const void*, int, int, enum cudaSurfaceBoundaryMode);
extern void __surf2Dwritec2( uchar2, const void*, int, int, enum cudaSurfaceBoundaryMode);
extern void __surf2Dwritec4( uchar4, const void*, int, int, enum cudaSurfaceBoundaryMode);
extern void __surf2Dwrites1( ushort1, const void*, int, int, enum cudaSurfaceBoundaryMode);
extern void __surf2Dwrites2( ushort2, const void*, int, int, enum cudaSurfaceBoundaryMode);
extern void __surf2Dwrites4( ushort4, const void*, int, int, enum cudaSurfaceBoundaryMode);
extern void __surf2Dwriteu1( uint1, const void*, int, int, enum cudaSurfaceBoundaryMode);
extern void __surf2Dwriteu2( uint2, const void*, int, int, enum cudaSurfaceBoundaryMode);
extern void __surf2Dwriteu4( uint4, const void*, int, int, enum cudaSurfaceBoundaryMode);
extern void __surf2Dwritel1(ulonglong1, const void*, int, int, enum cudaSurfaceBoundaryMode);
extern void __surf2Dwritel2(ulonglong2, const void*, int, int, enum cudaSurfaceBoundaryMode);
# 2612 "/usr/local/cuda/include/device_functions.h" 2 3
# 1 "/usr/local/cuda/include/texture_fetch_functions.h" 1 3
# 2797 "/usr/local/cuda/include/texture_fetch_functions.h" 3
extern uint4 __utexfetchi1D(const void*, int4);
extern int4 __itexfetchi1D(const void*, int4);
extern float4 __ftexfetchi1D(const void*, int4);
extern uint4 __utexfetch1D(const void*, float4);
extern int4 __itexfetch1D(const void*, float4);
extern float4 __ftexfetch1D(const void*, float4);
extern uint4 __utexfetch2D(const void*, float4);
extern int4 __itexfetch2D(const void*, float4);
extern float4 __ftexfetch2D(const void*, float4);
extern uint4 __utexfetch3D(const void*, float4);
extern int4 __itexfetch3D(const void*, float4);
extern float4 __ftexfetch3D(const void*, float4);
extern uint4 __utexfetchl1D(const void*, float4, int);
extern int4 __itexfetchl1D(const void*, float4, int);
extern float4 __ftexfetchl1D(const void*, float4, int);
extern uint4 __utexfetchl2D(const void*, float4, int);
extern int4 __itexfetchl2D(const void*, float4, int);
extern float4 __ftexfetchl2D(const void*, float4, int);
# 2613 "/usr/local/cuda/include/device_functions.h" 2 3
# 1072 "/usr/local/cuda/include/math_functions.h" 2 3
# 1081 "/usr/local/cuda/include/math_functions.h" 3
int __cuda_error_not_implememted(void);
# 1110 "/usr/local/cuda/include/math_functions.h" 3
static __inline__ __attribute__((always_inline)) float rintf(float a)
{
  return __builtin_roundf(a);
}

static __inline__ __attribute__((always_inline)) long int lrintf(float a)
{

  return (long int)__float2ll_rn(a);



}

static __inline__ __attribute__((always_inline)) long long int llrintf(float a)
{
  return __float2ll_rn(a);
}

static __inline__ __attribute__((always_inline)) float nearbyintf(float a)
{
  return __builtin_roundf(a);
}







static __inline__ __attribute__((always_inline)) int __signbitf(float a)
{
  return (int)((unsigned int)__float_as_int(a) >> 31);
}




static __inline__ __attribute__((always_inline)) float copysignf(float a, float b)
{
  return __int_as_float((__float_as_int(b) & 0x80000000) |
                        (__float_as_int(a) & ~0x80000000));
}

static __inline__ __attribute__((always_inline)) int __finitef(float a)
{
  return fabsf(a) < __int_as_float(0x7f800000);
}
# 1168 "/usr/local/cuda/include/math_functions.h" 3
static __inline__ __attribute__((always_inline)) int __isinff(float a)
{
  return fabsf(a) == __int_as_float(0x7f800000);
}

static __inline__ __attribute__((always_inline)) int __isnanf(float a)
{
  return !(fabsf(a) <= __int_as_float(0x7f800000));
}

static __inline__ __attribute__((always_inline)) float nextafterf(float a, float b)
{
  unsigned int ia;
  unsigned int ib;
  ia = __float_as_int(a);
  ib = __float_as_int(b);

  if ((ia << 1) < 0x01000000) ia &= 0x80000000;
  if ((ib << 1) < 0x01000000) ib &= 0x80000000;

  if (__isnanf(a) || __isnanf(b)) return a + b;
  if (__int_as_float (ia | ib) == 0.0f) return __int_as_float(ib);

  if (__int_as_float(ia) == 0.0f) {
    return __int_as_float (0x00800000 | (__float_as_int(b) & 0x80000000));
  }





  if ((a < b) && (a < 0.0f)) ia--;
  if ((a < b) && (a > 0.0f)) ia++;
  if ((a > b) && (a < 0.0f)) ia++;
  if ((a > b) && (a > 0.0f)) ia--;
  a = __int_as_float(ia);

  if (a == 0.0f) {
    a = __int_as_float(ia & 0x80000000);
  }

  return a;
}

static __inline__ __attribute__((always_inline)) unsigned long long int __internal_nan_kernel(const char *s)
{
  unsigned long long i = 0;
  int c;
  int ovfl = 0;
  int invld = 0;
  if (s && (*s == '0')) {
    s++;
    if ((*s == 'x') || (*s == 'X')) {
      s++;
      while (*s == '0') s++;
      while (*s) {
        if (i > 0x0fffffffffffffffULL) {
          ovfl = 1;
        }
        c = (((*s) >= 'A') && ((*s) <= 'F')) ? (*s + 'a' - 'A') : (*s);
        if ((c >= 'a') && (c <= 'f')) {
          c = c - 'a' + 10;
          i = i * 16 + c;
        } else if ((c >= '0') && (c <= '9')) {
          c = c - '0';
          i = i * 16 + c;
        } else {
          invld = 1;
        }
        s++;
      }
    } else {
      while (*s == '0') s++;
      while (*s) {
        if (i > 0x1fffffffffffffffULL) {
          ovfl = 1;
        }
        c = *s;
        if ((c >= '0') && (c <= '7')) {
          c = c - '0';
          i = i * 8 + c;
        } else {
          invld = 1;
        }
        s++;
      }
    }
  } else if (s) {
    while (*s) {
      c = *s;
      if ((i > 1844674407370955161ULL) ||
          ((i == 1844674407370955161ULL) && (c > '5'))) {
        ovfl = 1;
      }
      if ((c >= '0') && (c <= '9')) {
        c = c - '0';
        i = i * 10 + c;
      } else {
        invld = 1;
      }
      s++;
    }
  }
  if (ovfl) {
    i = ~0ULL;
  }
  if (invld) {
    i = 0ULL;
  }
  i = (i & 0x000fffffffffffffULL) | 0x7ff8000000000000ULL;
  return i;
}

static __inline__ __attribute__((always_inline)) float nanf(const char *tagp)
{
  return __int_as_float(0x7fffffff);
}

static __inline__ __attribute__((always_inline)) float __internal_fmad(float a, float b, float c)
{

  return __fmaf_rn (a, b, c);



}


static __inline__ __attribute__((always_inline)) float __internal_atanhf_kernel(float a_1, float a_2)
{
  float a, a2, t;

  a = a_1 + a_2;
  a2 = a * a;
  t = 1.566305595598990E-001f/64.0f;
  t = __internal_fmad (t, a2, 1.995081856004762E-001f/16.0f);
  t = __internal_fmad (t, a2, 3.333382699617026E-001f/4.0f);
  t = t * a2;
  t = __internal_fmad (t, a, a_2);
  t = t + a_1;
  return t;
}




static __inline__ __attribute__((always_inline)) float __internal_atanf_kernel(float a)
{
  float t4, t0, t1;

  t4 = a * a;
  t0 = -5.674867153f;
  t0 = __internal_fmad (t4, -0.823362947f, t0);
  t0 = __internal_fmad (t0, t4, -6.565555096f);
  t0 = t0 * t4;
  t0 = t0 * a;
  t1 = t4 + 11.33538818f;
  t1 = __internal_fmad (t1, t4, 28.84246826f);
  t1 = __internal_fmad (t1, t4, 19.69667053f);
  t1 = 1.0f / t1;
  a = __internal_fmad (t0, t1, a);
  return a;
}


static __inline__ __attribute__((always_inline)) float __internal_tan_kernel(float a)
{
  float a2, s, t;

  a2 = a * a;
  t = __internal_fmad (4.114678393115178E-003f, a2, -8.231194034909670E-001f);
  s = a2 - 2.469348886157666E+000f;
  s = 1.0f / s;
  t = t * s;
  t = t * a2;
  t = __internal_fmad (t, a, a);
  return t;
}

static __inline__ __attribute__((always_inline)) float __internal_accurate_logf(float a)
{
  float t;
  float z;
  float m;
  int ia;
  ia = __float_as_int(a);

  if ((a > 0.0f) && (a < __int_as_float(0x7f800000))) {
    int e = -127;
# 1366 "/usr/local/cuda/include/math_functions.h" 3
    m = __int_as_float((ia & 0x807fffff) | 0x3f800000);
    e += ((unsigned)ia >> 23);
    if (m > 1.414213562f) {
      m = m * 0.5f;
      e = e + 1;
    }
    t = m - 1.0f;
    z = m + 1.0f;
    z = __fdividef (t, z);
    z = -t * z;
    z = __internal_atanhf_kernel(t, z);
    z = __internal_fmad ((float)e, 0.693147181f, z);
    return z;
  } else {

    return __logf(a);
  }
}

static __inline__ __attribute__((always_inline)) float2 __internal_log_ep(float a)
{
  float2 res;
  int expo;
  float m;
  float log_hi, log_lo;
  float t_hi, t_lo;
  float f, g, u, v, q;
  float r, s, e;
  expo = (__float_as_int(a) >> 23) & 0xff;
# 1403 "/usr/local/cuda/include/math_functions.h" 3
  expo -= 127;
  m = __int_as_float((__float_as_int(a) & 0x807fffff) | 0x3f800000);
  if (m > 1.414213562f) {
    m = m * 0.5f;
    expo = expo + 1;
  }






  f = m - 1.0f;
  g = m + 1.0f;
  g = 1.0f / g;
  u = 2.0f * f * g;
  v = u * u;
  q = 1.49356810919559350E-001f/64.0f;
  q = __internal_fmad (q, v, 1.99887797540072460E-001f/16.0f);
  q = __internal_fmad (q, v, 3.33333880955515580E-001f/4.0f);
  q = q * v;
  q = q * u;
  log_hi = __int_as_float(__float_as_int(u) & 0xfffff000);
  v = __int_as_float(__float_as_int(f) & 0xfffff000);
  u = 2.0f * (f - log_hi);
  f = f - v;
  u = __internal_fmad (-log_hi, v, u);
  u = __internal_fmad (-log_hi, f, u);
  u = g * u;



  r = log_hi + u;
  s = u - (r - log_hi);
  log_hi = r;
  log_lo = s;

  r = log_hi + q;
  s = ((log_hi - r) + q) + log_lo;
  log_hi = e = r + s;
  log_lo = (r - e) + s;


  t_hi = expo * 0.6931457519f;
  t_lo = expo * 1.4286067653e-6f;


  r = t_hi + log_hi;
  s = (((t_hi - r) + log_hi) + log_lo) + t_lo;
  res.y = e = r + s;
  res.x = (r - e) + s;
  return res;
}

static __inline__ __attribute__((always_inline)) float __internal_accurate_log2f(float a)
{
  return 1.442695041f * __internal_accurate_logf(a);
}




static __inline__ __attribute__((always_inline)) float2 __internal_dsmul (float2 x, float2 y)
{
    float2 z;
# 1482 "/usr/local/cuda/include/math_functions.h" 3
    float up, mh, ml;
    ml = __fmul_rn (x.y, y.y);
    mh = __fmaf_rn (x.y, y.y, -ml);
    mh = __fmaf_rn (x.x, y.x, mh);
    mh = __fmaf_rn (x.y, y.x, mh);
    mh = __fmaf_rn (x.x, y.y, mh);
    z.y = up = __fadd_rn (ml, mh);
    z.x = __fadd_rn(__fadd_rn(ml, -up), mh);

    return z;
}


static __attribute__((constant)) unsigned int __cudart_i2opi_f [] = {
  0x3c439041,
  0xdb629599,
  0xf534ddc0,
  0xfc2757d1,
  0x4e441529,
  0xa2f9836e,
};


static __inline__ __attribute__((always_inline)) float __internal_trig_reduction_kernel(float a, int *quadrant)
{
  float j;
  int q;
  if (fabsf(a) > 48039.0f) {

    unsigned int ia = __float_as_int(a);
    unsigned int s = ia & 0x80000000;
    unsigned int result[7];
    unsigned int phi, plo;
    unsigned int hi, lo;
    unsigned int e;
    int idx;
    e = ((ia >> 23) & 0xff) - 128;
    ia = (ia << 8) | 0x80000000;

    idx = 4 - (e >> 5);
    hi = 0;
#pragma unroll 1
    for (q = 0; q < 6; q++) {
      plo = __cudart_i2opi_f[q] * ia;
      phi = __umulhi (__cudart_i2opi_f[q], ia);
      lo = hi + plo;
      hi = phi + (lo < plo);
      result[q] = lo;
    }
    result[q] = hi;
    e = e & 31;



    hi = result[idx+2];
    lo = result[idx+1];
    if (e) {
      q = 32 - e;
      hi = (hi << e) + (lo >> q);
      lo = (lo << e) + (result[idx] >> q);
    }
    q = hi >> 30;

    hi = (hi << 2) + (lo >> 30);
    lo = (lo << 2);
    e = hi >> 31;
    q += e;
    if (s) q = -q;
    if (e) {
      unsigned int t;
      hi = ~hi;
      lo = -(int)lo;
      t = (lo == 0);
      hi += t;
      s = s ^ 0x80000000;
    }
    *quadrant = q;

    e = __clz(hi);
    if (e) {
      hi = (hi << e) + (lo >> (32 - e));
    }
    lo = hi * 0xc90fdaa2;
    hi = __umulhi(hi, 0xc90fdaa2);
    if ((int)hi > 0) {
      hi = (hi << 1) + (lo >> 31);
      e++;
    }
    ia = s | (((126 - e) << 23) + ((((hi + 1) >> 7) + 1) >> 1));
    return __int_as_float(ia);
  }
  q = __float2int_rn (a * 0.636619772f);
  j = (float)q;


  a = __fmaf_rn (-j, 1.5707962512969971e+000f, a);
  a = __fmaf_rn (-j, 7.5497894158615964e-008f, a);
  a = __fmaf_rn (-j, 5.3903029534742384e-015f, a);






  *quadrant = q;
  return a;
}
# 1599 "/usr/local/cuda/include/math_functions.h" 3
static __inline__ __attribute__((always_inline)) float __internal_expf_kernel(float a, float scale)
{
  float j, z;

  j = truncf(a * 1.442695041f);
  z = __internal_fmad (j, -0.6931457519f, a);
  z = __internal_fmad (j, -1.4286067653e-6f, z);
  z = z * 1.442695041f;
  z = exp2f(z) * exp2f(j + scale);
  return z;
}

static __inline__ __attribute__((always_inline)) float __internal_accurate_expf(float a)
{
  float z;

  z = __internal_expf_kernel(a, 0.0f);
  if (a < -105.0f) z = 0.0f;
  if (a > 105.0f) z = __int_as_float(0x7f800000);
  return z;
}

static __inline__ __attribute__((always_inline)) float __internal_accurate_exp10f(float a)
{
  float j, z;

  j = truncf(a * 3.321928094f);
  z = __internal_fmad (j, -3.0102920532226563e-001f, a);
  z = __internal_fmad (j, -7.9034171557301747e-007f, z);
  z = z * 3.321928094f;
  z = exp2f(z) * exp2f(j);
  if (a < -46.0f) z = 0.0f;
  if (a > 46.0f) z = __int_as_float(0x7f800000);
  return z;
}

static __inline__ __attribute__((always_inline)) float __internal_lgammaf_pos(float a)
{
  float sum;
  float s, t;

  if (a == __int_as_float(0x7f800000)) {
    return a;
  }
  if (a >= 3.0f) {
    if (a >= 7.8f) {



      s = __fdividef (1.0f, a);
      t = s * s;
      sum = 0.77783067e-3f;
      sum = __internal_fmad (sum, t, -0.2777655457e-2f);
      sum = __internal_fmad (sum, t, 0.83333273853e-1f);
      sum = __internal_fmad (sum, s, 0.918938533204672f);
      s = 0.5f * __internal_accurate_logf(a);
      t = a - 0.5f;
      s = s * t;
      t = s - a;
      s = __fadd_rn(s, sum);
      t = t + s;
      return t;
    } else {
      a = a - 3.0f;
      s = -7.488903254816711E+002f;
      s = __internal_fmad (s, a, -1.234974215949363E+004f);
      s = __internal_fmad (s, a, -4.106137688064877E+004f);
      s = __internal_fmad (s, a, -4.831066242492429E+004f);
      s = __internal_fmad (s, a, -1.430333998207429E+005f);
      t = a - 2.592509840117874E+002f;
      t = __internal_fmad (t, a, -1.077717972228532E+004f);
      t = __internal_fmad (t, a, -9.268505031444956E+004f);
      t = __internal_fmad (t, a, -2.063535768623558E+005f);
      t = __fdividef (s, t);
      t = t + a;
      return t;
    }
  } else if (a >= 1.5f) {
    a = a - 2.0f;
    t = 4.959849168282574E-005f;
    t = __internal_fmad (t, a, -2.208948403848352E-004f);
    t = __internal_fmad (t, a, 5.413142447864599E-004f);
    t = __internal_fmad (t, a, -1.204516976842832E-003f);
    t = __internal_fmad (t, a, 2.884251838546602E-003f);
    t = __internal_fmad (t, a, -7.382757963931180E-003f);
    t = __internal_fmad (t, a, 2.058131963026755E-002f);
    t = __internal_fmad (t, a, -6.735248600734503E-002f);
    t = __internal_fmad (t, a, 3.224670187176319E-001f);
    t = __internal_fmad (t, a, 4.227843368636472E-001f);
    t = t * a;
    return t;
  } else if (a >= 0.7f) {
    a = 1.0f - a;
    t = 4.588266515364258E-002f;
    t = __internal_fmad (t, a, 1.037396712740616E-001f);
    t = __internal_fmad (t, a, 1.228036339653591E-001f);
    t = __internal_fmad (t, a, 1.275242157462838E-001f);
    t = __internal_fmad (t, a, 1.432166835245778E-001f);
    t = __internal_fmad (t, a, 1.693435824224152E-001f);
    t = __internal_fmad (t, a, 2.074079329483975E-001f);
    t = __internal_fmad (t, a, 2.705875136435339E-001f);
    t = __internal_fmad (t, a, 4.006854436743395E-001f);
    t = __internal_fmad (t, a, 8.224669796332661E-001f);
    t = __internal_fmad (t, a, 5.772156651487230E-001f);
    t = t * a;
    return t;
  } else {
    t = 3.587515669447039E-003f;
    t = __internal_fmad (t, a, -5.471285428060787E-003f);
    t = __internal_fmad (t, a, -4.462712795343244E-002f);
    t = __internal_fmad (t, a, 1.673177015593242E-001f);
    t = __internal_fmad (t, a, -4.213597883575600E-002f);
    t = __internal_fmad (t, a, -6.558672843439567E-001f);
    t = __internal_fmad (t, a, 5.772153712885004E-001f);
    t = t * a;
    t = __internal_fmad (t, a, a);
    return -__internal_accurate_logf(t);
  }
}


static __inline__ __attribute__((always_inline)) float __internal_sin_kernel(float x)
{
  float x2, z;

  x2 = x * x;
  z = -1.95152959e-4f;
  z = __internal_fmad (z, x2, 8.33216087e-3f);
  z = __internal_fmad (z, x2, -1.66666546e-1f);
  z = z * x2;
  z = __internal_fmad (z, x, x);
  return z;
}


static __inline__ __attribute__((always_inline)) float __internal_cos_kernel(float x)
{
  float x2, z;

  x2 = x * x;
  z = 2.44331571e-5f;
  z = __internal_fmad (z, x2, -1.38873163e-3f);
  z = __internal_fmad (z, x2, 4.16666457e-2f);
  z = __internal_fmad (z, x2, -5.00000000e-1f);
  z = __internal_fmad (z, x2, 1.00000000e+0f);
  return z;
}

static __inline__ __attribute__((always_inline)) float __internal_accurate_sinf(float a)
{
  float z;
  int i;

  if (__isinff(a)) {
    a = __fmul_rn (a, 0.0f);
  }
  a = __internal_trig_reduction_kernel(a, &i);

  if (i & 1) {
    z = __internal_cos_kernel(a);
  } else {
    z = __internal_sin_kernel(a);
  }
  if (i & 2) {
    z = -z;
  }
  if (a == 0.0f) {
    z = __fmul_rn (a, 0.0f);
  }
  return z;
}







static __inline__ __attribute__((always_inline)) float sinf(float a)
{

  return __sinf(a);



}

static __inline__ __attribute__((always_inline)) float sinpif(float a)
{
  volatile float z;
  int i;

  if (__isinff(a)) {
    a = __fmul_rn (a, 0.0f);
  }
  if (a == truncf(a)) {
    a = __int_as_float(__float_as_int(a) & 0x80000000);
  }
  i = __float2int_rn (a * 2.0f);
  z = (float)i;
  z = __internal_fmad (-z, 0.5f, a);

  z = __fmaf_rn (z, 3.141592503e+00f, z * 1.509958025e-07f);



  if (i & 1) {
    z = __internal_cos_kernel(z);
  } else {
    z = __internal_sin_kernel(z);
  }
  if (i & 2) {
    z = -z;
  }
  if (a == 0.0f) {
    z = __fmul_rn (a, 0.0f);
  }
  return z;
}

static __inline__ __attribute__((always_inline)) float cospif(float a)
{
  volatile float z;
  int i;

  if (fabsf(a) > 16777216.0f) {
    a = __fmul_rn (a, 0.0f);
  }
  i = __float2int_rn (a * 2.0f);
  z = (float)i;
  z = __internal_fmad (-z, 0.5f, a);

  z = __fmaf_rn (z, 3.141592503e+00f, z * 1.509958025e-07f);



  i++;
  if (i & 1) {
    z = __internal_cos_kernel(z);
  } else {
    z = __internal_sin_kernel(z);
  }
  if (i & 2) {
    z = -z;
  }
  if (z == 0.0f) {
    z = fabsf (z);
  }
  return z;
}

static __inline__ __attribute__((always_inline)) float cosf(float a)
{

  return __cosf(a);
# 1874 "/usr/local/cuda/include/math_functions.h" 3
}

static __inline__ __attribute__((always_inline)) float tanf(float a)
{

  return __tanf(a);
# 1895 "/usr/local/cuda/include/math_functions.h" 3
}

static __inline__ __attribute__((always_inline)) float log2f(float a)
{

  return __log2f(a);



}

static __inline__ __attribute__((always_inline)) float expf(float a)
{

  return __expf(a);



}

static __inline__ __attribute__((always_inline)) float exp10f(float a)
{

  return __exp10f(a);



}

static __inline__ __attribute__((always_inline)) float coshf(float a)
{
  float z;

  a = fabsf(a);
  z = __internal_expf_kernel(a, -2.0f);
  z = __internal_fmad (2.0f, z, __fdividef (0.125f, z));
  if (a >= 90.0f) {
    z = __int_as_float(0x7f800000);
  }
  return z;
}

static __inline__ __attribute__((always_inline)) float sinhf(float a)
{
  float s, z;

  s = a;
  a = fabsf(a);
  if (a >= 1.0f) {
    z = __internal_expf_kernel(a, -2.0f);
    z = __internal_fmad (2.0f, z, -__fdividef (0.125f, z));
    if (a >= 90.0f) {
      z = __int_as_float(0x7f800000);
    }
    z = __int_as_float(__float_as_int(z) | (__float_as_int(s) & 0x80000000));
  } else {
    float a2 = s * s;

    z = 2.816951222e-6f;
    z = __internal_fmad (z, a2, 1.983615978e-4f);
    z = __internal_fmad (z, a2, 8.333350058e-3f);
    z = __internal_fmad (z, a2, 1.666666650e-1f);
    z = z * a2;
    z = __internal_fmad (z, s, s);
  }
  return z;
}

static __inline__ __attribute__((always_inline)) float tanhf(float a)
{
  float s, t;

  t = fabsf(a);
  if (t >= 0.55f) {
    s = 1.0f - __fdividef(2.0f,(__internal_expf_kernel(2.0f * t, 0.0f)+1.0f));
    if (t >= 88.0f) {
      s = 1.0f;
    }
    s = __int_as_float(__float_as_int(s) | (__float_as_int(a) & 0x80000000));
  } else {
    float z2;
    z2 = a * a;
    t = 1.643758066599993e-2f;
    t = __internal_fmad (t, z2, -5.267181327760551e-2f);
    t = __internal_fmad (t, z2, 1.332072505223051e-1f);
    t = __internal_fmad (t, z2, -3.333294663641083e-1f);
    t = t * z2;
    s = __internal_fmad (t, a, a);
    if (a == 0.0f) {
      s = a + a;
    }
  }
  return s;
}

static __inline__ __attribute__((always_inline)) float atan2f(float a, float b)
{
  float t0, t1, fa, fb;

  fb = fabsf(b);
  fa = fabsf(a);
  if ((fa == 0.0f) && (fb == 0.0f)) {
    t0 = (__float_as_int(b) < 0) ? 3.141592654f : 0.0f;
    t0 = __int_as_float(__float_as_int(t0) | (__float_as_int(a) & 0x80000000));
  } else if ((fa == __int_as_float(0x7f800000)) && (fb == __int_as_float(0x7f800000))) {
    t0 = (__float_as_int(b) < 0) ? 2.356194490f : 0.785398163f;
    t0 = __int_as_float(__float_as_int(t0) | (__float_as_int(a) & 0x80000000));
  } else {


    t0 = fminf(fa, fb);
    t1 = fmaxf(fa, fb);
    t0 = t0 / t1;
    t0 = __internal_atanf_kernel(t0);

    if (fa > fb) t0 = 1.570796327f - t0;
    if (b < 0.0f) t0 = 3.141592654f - t0;
    t0 = __int_as_float(__float_as_int(t0) | (__float_as_int(a) & 0x80000000));
    t1 = a + b;
    if (!(t1 <= __int_as_float(0x7f800000))) {

        t0 = t1;
    }
  }
  return t0;
}

static __inline__ __attribute__((always_inline)) float atanf(float a)
{
  float t0, t1;


  t0 = fabsf(a);
  t1 = t0;
  if (t0 > 1.0f) {
    t1 = 1.0f / t1;
  }

  t1 = __internal_atanf_kernel(t1);

  if (t0 > 1.0f) {
    t1 = 1.570796327f - t1;
  }
  if (t0 <= __int_as_float(0x7f800000)) {
    t1 = __int_as_float(__float_as_int(t1) | (__float_as_int(a) & 0x80000000));
  }
  return t1;
}


static __inline__ __attribute__((always_inline)) float __internal_asinf_kernel(float a)
{
  float a2, t;
  a2 = a * a;
  t = 5.175137819e-002f;
  t = __internal_fmad (t, a2, 1.816697683e-002f);
  t = __internal_fmad (t, a2, 4.675685871e-002f);
  t = __internal_fmad (t, a2, 7.484657646e-002f);
  t = __internal_fmad (t, a2, 1.666701424e-001f);
  t = t * a2;
  a = __internal_fmad (t, a, a);
  return a;
}

static __inline__ __attribute__((always_inline)) float asinf(float a)
{
  float t0, t1, t2;

  t0 = fabsf(a);
  t2 = 1.0f - t0;
  t2 = 0.5f * t2;
  t2 = sqrtf(t2);
  t1 = t0 > 0.57f ? t2 : t0;
  t1 = __internal_asinf_kernel(t1);
  t2 = __internal_fmad (-2.0f, t1, 1.570796327f);
  if (t0 > 0.57f) {
    t1 = t2;
  }
  if (t1 <= __int_as_float(0x7f800000)) {
    t1 = __int_as_float(__float_as_int(t1) | (__float_as_int(a) & 0x80000000));
  }
  return t1;
}

static __inline__ __attribute__((always_inline)) float acosf(float a)
{
  float t0, t1, t2;

  t0 = fabsf(a);
  t2 = 1.0f - t0;
  t2 = 0.5f * t2;
  t2 = sqrtf(t2);
  t1 = t0 > 0.57f ? t2 : t0;
  t1 = __internal_asinf_kernel(t1);
  t1 = t0 > 0.57f ? 2.0f * t1 : 1.570796327f - t1;
  if (__float_as_int(a) < 0) {
    t1 = 3.141592654f - t1;
  }
  return t1;
}

static __inline__ __attribute__((always_inline)) float logf(float a)
{

  return __logf(a);



}

static __inline__ __attribute__((always_inline)) float log10f(float a)
{

  return __log10f(a);



}

static __inline__ __attribute__((always_inline)) float log1pf(float a)
{
  float t;
  if (a >= -0.394f && a <= 0.65f) {

    t = a + 2.0f;
    t = __fdividef (a, t);
    t = -a * t;
    t = __internal_atanhf_kernel (a, t);
  } else {
    t = __internal_accurate_logf (1.0f + a);
  }
  return t;
}

static __inline__ __attribute__((always_inline)) float acoshf(float a)
{
  float t;

  t = a - 1.0f;
  if (fabsf(t) > 8388608.0f) {

    return 0.693147181f + __internal_accurate_logf(a);
  } else {
    t = t + sqrtf(__fadd_rn(__fmul_rz(a, t), t));
    return log1pf(t);
  }
}

static __inline__ __attribute__((always_inline)) float asinhf(float a)
{
  float fa, oofa, t;

  fa = fabsf(a);
  if (fa > 8.507059173e37f) {
    t = 0.693147181f + __logf(fa);
  } else {
    oofa = 1.0f / fa;
    t =fa+__fdividef (fa,(oofa+sqrtf(__internal_fmad(oofa,oofa,1.0f))));
    t = log1pf(t);
  }
  if (fa <= __int_as_float(0x7f800000)) {
    t = __int_as_float(__float_as_int(t) | (__float_as_int(a) & 0x80000000));
  }
  return t;
}

static __inline__ __attribute__((always_inline)) float atanhf(float a)
{
  float fa, t;

  fa = fabsf(a);
  t = __fdividef ((2.0f * fa), (1.0f - fa));
  t = 0.5f * log1pf(t);
  if (fabsf(t) <= __int_as_float(0x7f800000)) {
    t = __int_as_float(__float_as_int(t) | (__float_as_int(a) & 0x80000000));
  }
  return t;
}

static __inline__ __attribute__((always_inline)) float expm1f(float a)
{
  float t, z, j, u;

  t = rintf (a * 1.442695041f);

  if (fabsf(a) < 0.41f) {
    t = 0.0f;
  }
  z = __internal_fmad (-t, 0.6931457519f, a);
  z = __internal_fmad (-t, 1.4286067653e-6f, z);

  j = t;
  if (t == 128.0f) j = j - 1.0f;

  u = 1.38795078474044430E-003f;
  u = __internal_fmad (u, z, 8.38241261853264930E-003f);
  u = __internal_fmad (u, z, 4.16678317762833940E-002f);
  u = __internal_fmad (u, z, 1.66663978874356580E-001f);
  u = __internal_fmad (u, z, 4.99999940395997040E-001f);
  u = u * z;
  u = __internal_fmad (u, z, z);

  z = exp2f (j);
  u = __internal_fmad (u, z, z - 1.0f);
  if (t == 128.0f) u = u + u;

  if (j > 128.0f) u = __int_as_float(0x7f800000);
  if (j < -25.0f) u = -1.0f;

  if (a == 0.0f) {
    u = __int_as_float(__float_as_int(a) & 0x80000000);
  }
  return u;
}

static __inline__ __attribute__((always_inline)) float hypotf(float a, float b)
{
  float v, w, s, t, fa, fb;

  fa = fabsf(a);
  fb = fabsf(b);
  v = s = fmaxf(fa, fb);
  w = t = fminf(fa, fb);
  if (v > 8.507059173e37f) {
    s = s * 0.25f;
    t = t * 0.25f;
  }
  t = __fdividef(t, s);
  t = __internal_fmad (t, t, 1.0f);
  t = v * sqrtf(t);
  if (v == 0.0f) {
    t = v + w;
  }
  if ((!(fa <= __int_as_float(0x7f800000))) || (!(fb <= __int_as_float(0x7f800000)))) {
    t = a + b;
  }
  if (v == __int_as_float(0x7f800000)) {
    t = v + w;
  }
  return t;
}

static __inline__ __attribute__((always_inline)) float cbrtf(float a)
{
  float s, t;

  s = fabsf(a);
  t = exp2f(0.333333333f * __log2f(s));
  t = t - (t - (__fdividef (s, t * t))) * 0.333333333f;
  if (__float_as_int(a) < 0) {
    t = -t;
  }
  s = a + a;
  if (s == a) t = s;
  return t;
}

static __inline__ __attribute__((always_inline)) float rcbrtf(float a)
{
  float s, t;

  s = fabsf(a);
  t = exp2f(-0.333333333f * __log2f(s));
  t = __internal_fmad(__internal_fmad(t*t, -s*t, 1.0f), 0.333333333f*t, t);
  if (__float_as_int(a) < 0) {
    t = -t;
  }
  s = a + a;
  if (s == a) t = __fdividef (1.0f, a);
  return t;
}

static __inline__ __attribute__((always_inline)) float erff(float a)
{
  float t, r, q;

  t = fabsf(a);
  if (t >= 1.0f) {



    q = __internal_fmad (t, 0.3275911f, 1.0f);
    q = 1.0f / q;
    r = 1.061405429f;
    r = __internal_fmad (r, q, -1.453152027f);
    r = __internal_fmad (r, q, 1.421413741f);
    r = __internal_fmad (r, q, -0.284496736f);
    r = __internal_fmad (r, q, 0.254829592f);
    r = r * q;
    q = __internal_expf_kernel(-a * a, 0.0f);
    r = __internal_fmad (-q, r, 1.0f);
    if (t >= 5.5f) {
      r = 1.0f;
    }
    a = __int_as_float (__float_as_int(r) | (__float_as_int(a) & 0x80000000));
  } else {
    t = a * a;
    r = -5.58510127926029810E-004f;
    r = __internal_fmad (r, t, 4.90688891415893070E-003f);
    r = __internal_fmad (r, t, -2.67027980930150640E-002f);
    r = __internal_fmad (r, t, 1.12799056505903940E-001f);
    r = __internal_fmad (r, t, -3.76122956138427440E-001f);
    r = __internal_fmad (r, t, 1.12837911712623450E+000f);
    a = a * r;
  }
  return a;
}
# 2320 "/usr/local/cuda/include/math_functions.h" 3
static __inline__ __attribute__((always_inline)) float erfinvf(float a)
{
  float s, t, r;


  s = __fmaf_rn (a, -a, 1.0f);





  t = - __log2f (s);
  if (t > 8.2f) {
    t = rsqrtf (t);
    r = -5.8991436871681446E-001f;
    r = __internal_fmad (r, t, -6.6300422537735360E-001f);
    r = __internal_fmad (r, t, 1.5970110948817704E+000f);
    r = __internal_fmad (r, t, -6.7521557026467416E-001f);
    r = __internal_fmad (r, t, -9.5224791160399669E-002f);
    r = __internal_fmad (r, t, 8.3535343797791939E-001f);
    t = 1.0f / t;
    t = r * t;
    if (a < 0.0f) t = -t;
    return t;
  } else {
    r = -2.5172707606685652E-010f;
    r = __internal_fmad (r, t, 9.4274289432374619E-009f);
    r = __internal_fmad (r, t, -1.2054753059594516E-007f);
    r = __internal_fmad (r, t, 2.1697004698667657E-007f);
    r = __internal_fmad (r, t, 8.0621488510822390E-006f);
    r = __internal_fmad (r, t, -3.1675491789646913E-005f);
    r = __internal_fmad (r, t, -7.7436312951712784E-004f);
    r = __internal_fmad (r, t, 5.5465877941375773E-003f);
    r = __internal_fmad (r, t, 1.6082022430967846E-001f);
    r = __internal_fmad (r, t, 8.8622690039402130E-001f);
    return r * a;
  }
}

static __inline__ __attribute__((always_inline)) float erfcf(float a)
{
  if (a <= 0.813f) {
    return 1.0f - erff(a);
  } else {
    float p;
    float q;
    float h;
    float l;
    float t;
# 2379 "/usr/local/cuda/include/math_functions.h" 3
    t = __fdividef(1.0f, a);

    p = - 9.9910025099425892E-001f;
    p = __internal_fmad (p, t, - 2.6108451215634448E-001f);
    p = __internal_fmad (p, t, + 1.2460347155371844E-001f);
    p = __internal_fmad (p, t, + 1.3243909814778765E-001f);
    p = __internal_fmad (p, t, + 3.3477599162629441E-002f);
    q = t + 2.2542670016875404E+000f;
    q = __internal_fmad (q, t, + 2.1514433559696009E+000f);
    q = __internal_fmad (q, t, + 1.0284106806050302E+000f);
    q = __internal_fmad (q, t, + 2.6094298761636442E-001f);
    q = __internal_fmad (q, t, - 3.9951461024063317E-006f);

    p = __fdividef(p, q);
    p = p * t;
# 2405 "/usr/local/cuda/include/math_functions.h" 3
    h = -a * a;
    l = __fmaf_rn (a, a, h);
    q = __internal_expf_kernel(h, -1.0f);
    q = __fmaf_rn (q, -l, q);

    p = __internal_fmad (p, q, q);
    p = p * t;
    if (a > 10.055f) {
      p = 0.0f;
    }
    return p;
  }
}

static __inline__ __attribute__((always_inline)) float erfcinvf(float a)
{
  float t;
  if (a <= 0.0f) {
    t = rsqrtf (__int_as_float (0xffc00000));
    if (a == 0.0f) {
      t = (1.0f - a) * __int_as_float(0x7f800000);
    }
  }
  else if (a >= 0.0625f) {
    t = erfinvf (1.0f - a);
  }
  else {
    float p, q;
    t = __internal_accurate_logf(a);
    t = rsqrtf(-t);
    p = -1.64441567910e-1f;
    p = __internal_fmad (p, t, 6.80544246825e-1f);
    p = __internal_fmad (p, t, -1.12808139162e+0f);
    p = __internal_fmad (p, t, 6.90969348887e-1f);
    p = __internal_fmad (p, t, 1.38271964963e+0f);
    p = __internal_fmad (p, t, 1.55047000312e-1f);
    q = t + 1.38522814199e+0f;
    q = __internal_fmad (q, t, 1.55024849822e-1f);
    q = q * t;
    t = __fdividef (p, q);
  }
  return t;
}

static __inline__ __attribute__((always_inline)) float lgammaf(float a)
{
  float t;
  float i;
  int quot;
  t = __internal_lgammaf_pos(fabsf(a));
  if (a >= 0.0f) return t;
  a = fabsf(a);
  i = floorf(a);
  if (a == i) return __int_as_float(0x7f800000);
  if (a < 1e-19f) return -__internal_accurate_logf(a);
  i = rintf (2.0f * a);
  quot = (int)i;
  i = __internal_fmad (-i, 0.5f, a);
  i = i * 3.141592654f;
  if (quot & 1) {
    i = __internal_cos_kernel(i);
  } else {
    i = __internal_sin_kernel(i);
  }
  i = fabsf(i);
  t = 1.144729886f - __internal_accurate_logf(i * a) - t;
  return t;
}

static __inline__ __attribute__((always_inline)) float ldexpf(float a, int b)
{
  float fa = fabsf(a);

  if ((fa == 0.0f) || (fa == __int_as_float(0x7f800000)) || (b == 0)) {
    if (!(fa > 0.0f)) a = a + a;
    return a;
  } else if (abs(b) < 126) {
    return a * exp2f((float)b);
  } else if (abs(b) < 252) {
    int bhalf = b / 2;
    return a * exp2f((float)bhalf) * exp2f((float)(b - bhalf));
  } else {
    int bquarter = b / 4;
    float t = exp2f((float)bquarter);
    return a * t * t * t * exp2f((float)(b - 3 * bquarter));
  }
}

static __inline__ __attribute__((always_inline)) float scalbnf(float a, int b)
{

  return ldexpf(a, b);
}

static __inline__ __attribute__((always_inline)) float scalblnf(float a, long int b)
{
  int t;
  if (b > 2147483647L) {
    t = 2147483647;
  } else if (b < (-2147483647 - 1)) {
    t = (-2147483647 - 1);
  } else {
    t = (int)b;
  }
  return scalbnf(a, t);
}

static __inline__ __attribute__((always_inline)) float frexpf(float a, int *b)
{
  float fa = fabsf(a);
  unsigned int expo;
  unsigned int denorm;

  if (fa < 1.175494351e-38f) {
    a *= 16777216.0f;
    denorm = 24;
  } else {
    denorm = 0;
  }
  expo = ((__float_as_int(a) >> 23) & 0xff);
  if ((fa == 0.0f) || (expo == 0xff)) {
    expo = 0;
    a = a + a;
  } else {
    expo = expo - denorm - 126;
    a = __int_as_float(((__float_as_int(a) & 0x807fffff) | 0x3f000000));
  }
  *b = expo;
  return a;
}

static __inline__ __attribute__((always_inline)) float modff(float a, float *b)
{
  float t;
  if (__finitef(a)) {
    t = truncf(a);
    *b = t;
    t = a - t;
    t = __int_as_float(__float_as_int(t) | (__float_as_int(a) & 0x80000000));
    return t;
  } else if (__isinff(a)) {
    *b = a;
    return __int_as_float(__float_as_int(a) & 0x80000000);
  } else {
    *b = a + a;
    return a + a;
  }
}

static __inline__ __attribute__((always_inline)) float fmodf(float a, float b)
{
  float orig_a = a;
  float orig_b = b;
  a = fabsf(a);
  b = fabsf(b);
  if (!((a <= __int_as_float(0x7f800000)) && (b <= __int_as_float(0x7f800000)))) {
    return orig_a + orig_b;
  }
  if ((a == __int_as_float(0x7f800000)) || (b == 0.0f)) {
    return rsqrtf (__int_as_float (0xffc00000));
  } else if (a >= b) {
# 2578 "/usr/local/cuda/include/math_functions.h" 3
    float scaled_b = __int_as_float ((__float_as_int(b) & 0x007fffff) |
                                     (__float_as_int(a) & 0x7f800000));
    if (scaled_b > a) {
      scaled_b *= 0.5f;
    }

    while (scaled_b >= b) {
      if (a >= scaled_b) {
        a -= scaled_b;
      }
      scaled_b *= 0.5f;
    }
    return __int_as_float (__float_as_int(a) |
                           (__float_as_int(orig_a) & 0x80000000));
  } else {
    if (!(a > 0.0f)) orig_a = orig_a + orig_a;
    return orig_a;
  }
}

static __inline__ __attribute__((always_inline)) float remainderf(float a, float b)
{

  float twoa = 0.0f;
  unsigned int quot0 = 0;
  float orig_a = a;
  float orig_b = b;

  a = fabsf(a);
  b = fabsf(b);
  if (!((a <= __int_as_float(0x7f800000)) && (b <= __int_as_float(0x7f800000)))) {
    return orig_a + orig_b;
  }
  if ((a == __int_as_float(0x7f800000)) || (b == 0.0f)) {
    return rsqrtf (__int_as_float (0xffc00000));
  } else if (a >= b) {
# 2625 "/usr/local/cuda/include/math_functions.h" 3
    float scaled_b = __int_as_float ((__float_as_int(b) & 0x007fffff) |
                                     (__float_as_int(a) & 0x7f800000));
    if (scaled_b > a) {
      scaled_b *= 0.5f;
    }

    if (a == scaled_b) {
      return __int_as_float(__float_as_int(orig_a) & 0x80000000);
    }

    while (scaled_b >= b) {
      quot0 = 0;
      if (a >= scaled_b) {
        twoa = __internal_fmad (a, 2.0f, -scaled_b) - scaled_b;
        a = a - scaled_b;
        quot0 = 1;
      }
      scaled_b *= 0.5f;
    }
  }
# 2653 "/usr/local/cuda/include/math_functions.h" 3
  if (a >= 1.175494351e-38f) {
    twoa = 2.0f * a;
    if ((twoa > b) || ((twoa == b) && quot0)) {
      a -= b;
      a = __int_as_float(__float_as_int(a) | 0x80000000);
    }
  } else {

    if ((twoa > b) || ((twoa == b) && quot0)) {
      a = 0.5f * __internal_fmad(b, -2.0f, twoa);
      a = __int_as_float(__float_as_int(a) | 0x80000000);
    }
  }

  a = __int_as_float((__float_as_int(orig_a) & 0x80000000)^
                     __float_as_int(a));
  return a;
}

static __inline__ __attribute__((always_inline)) float remquof(float a, float b, int* quo)
{
  float twoa = 0.0f;
  unsigned int quot = 0;
  unsigned int sign;
  float orig_a = a;
  float orig_b = b;


  sign = 0 - ((__float_as_int(a) ^ __float_as_int(b)) < 0);
  a = fabsf(a);
  b = fabsf(b);
  if (!((a <= __int_as_float(0x7f800000)) && (b <= __int_as_float(0x7f800000)))) {
    *quo = quot;
    return orig_a + orig_b;
  }
  if ((a == __int_as_float(0x7f800000)) || (b == 0.0f)) {
    *quo = quot;
    return rsqrtf (__int_as_float (0xffc00000));
  } else if (a >= b) {
# 2704 "/usr/local/cuda/include/math_functions.h" 3
    float scaled_b = __int_as_float ((__float_as_int(b) & 0x007fffff) |
                                     (__float_as_int(a) & 0x7f800000));
    if (scaled_b > a) {
      scaled_b *= 0.5f;
    }

    if (a == scaled_b) {
      if (__float_as_int(b) > 0x7e800000) {
          a *= 0.25f;
          b *= 0.25f;
      }
      a = __fdividef(a,b) + 0.5f;
      quot = (a < 8.0f) ? (int)a : 0;
      quot = quot ^ sign;
      quot = quot - sign;
      *quo = quot;
      return __int_as_float(__float_as_int(orig_a) & 0x80000000);
    }

    while (scaled_b >= b) {
      quot <<= 1;
      if (a >= scaled_b) {
        twoa = (2.0f * a - scaled_b) - scaled_b;
        a -= scaled_b;
        quot += 1;
      }
      scaled_b *= 0.5f;
    }
  }
# 2742 "/usr/local/cuda/include/math_functions.h" 3
  if (a >= 1.175494351e-38f) {
    twoa = 2.0f * a;
    if ((twoa > b) || ((twoa == b) && (quot & 1))) {
      quot++;
      a -= b;
      a = __int_as_float(__float_as_int(a) | 0x80000000);
    }
  } else {

    if ((twoa > b) || ((twoa == b) && (quot & 1))) {
      quot++;
      a = 0.5f * (twoa - 2.0f * b);
      a = __int_as_float(__float_as_int(a) | 0x80000000);
    }
  }

  a = __int_as_float((__float_as_int(orig_a) & 0x80000000)^
                     __float_as_int(a));
  quot = quot & (~((~0)<<3));
  quot = quot ^ sign;
  quot = quot - sign;
  *quo = quot;
  return a;
}

static __inline__ __attribute__((always_inline)) float fmaf(float a, float b, float c)
{
  return __fmaf_rn(a, b, c);
}

static __inline__ __attribute__((always_inline)) float __internal_accurate_powf(float a, float b)
{
  float2 loga, prod;
  float t;


  loga = __internal_log_ep(a);


  if (fabsf(b) > 1.0e34f) b *= 1.220703125e-4f;
  prod.y = b;
  prod.x = 0.0f;
  prod = __internal_dsmul (prod, loga);


  if (__float_as_int(prod.y) == 0x42b17218) {
    prod.y = __int_as_float(__float_as_int(prod.y) - 1);
    prod.x = prod.x + __int_as_float(0x37000000);
  }


  t = __internal_accurate_expf(prod.y);

  if (t != __int_as_float(0x7f800000)) {



    t = __internal_fmad (t, prod.x, t);
  }
  return t;
}

static __inline__ __attribute__((always_inline)) float powif(float a, int b)
{
  unsigned int e = abs(b);
  float r = 1.0f;

  while (1) {
    if ((e & 1) != 0) {
      r = __fmul_rn (r, a);
    }
    e = e >> 1;
    if (e == 0) {
      r = (b < 0) ? 1.0f / r : r;
      return r;
    }
    a = __fmul_rn (a, a);
  }
}

static __inline__ __attribute__((always_inline)) double powi(double a, int b)
{
  unsigned int e = abs(b);
  double r = 1.0;

  while (1) {
    if ((e & 1) != 0) {
      r = r * a;
    }
    e = e >> 1;
    if (e == 0) {
      return b < 0 ? 1.0 / r : r;
    }
    a = a * a;
  }
}

static __inline__ __attribute__((always_inline)) float powf(float a, float b)
{

  return __powf(a, b);
# 2890 "/usr/local/cuda/include/math_functions.h" 3
}


static __inline__ __attribute__((always_inline)) float __internal_tgammaf_kernel(float a)
{
  float t;
  t = -1.05767296987211380E-003f;
  t = __internal_fmad (t, a, 7.09279059435508670E-003f);
  t = __internal_fmad (t, a, -9.65347121958557050E-003f);
  t = __internal_fmad (t, a, -4.21736613253687960E-002f);
  t = __internal_fmad (t, a, 1.66542401247154280E-001f);
  t = __internal_fmad (t, a, -4.20043267827838460E-002f);
  t = __internal_fmad (t, a, -6.55878234051332940E-001f);
  t = __internal_fmad (t, a, 5.77215696929794240E-001f);
  t = __internal_fmad (t, a, 1.00000000000000000E+000f);
  return t;
}





static __inline__ __attribute__((always_inline)) float tgammaf(float a)
{
  float s, xx, x=a;
  if (x >= 0.0f) {
    if (x > 36.0f) x = 36.0f;
    s = 1.0f;
    xx = x;
    if (x > 34.03f) {
      xx -= 1.0f;
    }
    while (xx > 1.5f) {
      xx = xx - 1.0f;
      s = s * xx;
    }
    if (x >= 0.5f) {
      xx = xx - 1.0f;
    }
    xx = __internal_tgammaf_kernel(xx);
    if (x < 0.5f) {
      xx = xx * x;
    }
    s = __fdividef(s, xx);
    if (x > 34.03f) {

      xx = x - 1.0f;
      s = s * xx;
    }
    return s;
  } else {
    if (x == floorf(x)) {
      x = rsqrtf (__int_as_float (0xffc00000));
    }
    if (x < -41.1f) x = -41.1f;
    xx = x;
    if (x < -34.03f) {
      xx += 6.0f;
    }
    s = xx;
    while (xx < -0.5f) {
      xx = xx + 1.0f;
      s = s * xx;
    }
    xx = __internal_tgammaf_kernel(xx);
    s = s * xx;
    s = 1.0f / s;
    if (x < -34.03f) {
      xx = x;
      xx *= (x + 1.0f);
      xx *= (x + 2.0f);
      xx *= (x + 3.0f);
      xx *= (x + 4.0f);
      xx *= (x + 5.0f);
      xx = 1.0f / xx;
      s = s * xx;
      if ((a < -42.0f) && !(((int)a)&1)) {
        s = __int_as_float(0x80000000);
      }
    }
    return s;
  }
}

static __inline__ __attribute__((always_inline)) float roundf(float a)
{
  float fa = fabsf(a);
  float u = __int_as_float (0x3f000000 | (__float_as_int(a) & 0x80000000));
  u = truncf (a + u);
  if (fa > 8388608.0f) u = a;
  if (fa < 0.5f) u = truncf (a);
  return u;
}

static __inline__ __attribute__((always_inline)) long long int __internal_llroundf_kernel(float a)
{
  unsigned long long int res, t = 0ULL;
  int shift;
  unsigned int ia = __float_as_int(a);

  if ((ia << 1) > 0xff000000) return 0x8000000000000000LL;
  if ((int)ia >= 0x5f000000) return 0x7fffffffffffffffLL;
  if (ia >= 0xdf000000) return 0x8000000000000000LL;
  shift = 189 - ((ia >> 23) & 0xff);
  res = ((long long int)(((ia << 8) | 0x80000000) >> 1)) << 32;
  if (shift >= 64) {
    t = res;
    res = 0;
  } else if (shift) {
    t = res << (64 - shift);
    res = res >> shift;
  }
  if (t >= 0x8000000000000000ULL) {
    res++;
  }
  if ((int)ia < 0) res = (unsigned long long int)(-(long long int)res);
  return (long long int)res;
}

static __inline__ __attribute__((always_inline)) long long int llroundf(float a)
{
  return __internal_llroundf_kernel(a);
}

static __inline__ __attribute__((always_inline)) long int lroundf(float a)
{

  return (long int)llroundf(a);



}

static __inline__ __attribute__((always_inline)) float fdimf(float a, float b)
{
  float t;
  t = a - b;
  if (a <= b) {
    t = 0.0f;
  }
  return t;
}

static __inline__ __attribute__((always_inline)) int ilogbf(float a)
{
  unsigned int i;
  int expo;
  float fa;
  fa = fabsf(a);
  i = __float_as_int(fa);
  if (i < 0x00800000) {

    expo = -118 - __clz(i);
    if (i == 0x00000000) {
      expo = -((int)((unsigned int)-1 >> 1))-1;
    }
  } else {
    expo = ((int)((i >> 23) & 0xff)) - 127;
    if ((i == 0x7f800000)) {
      expo = ((int)((unsigned int)-1 >> 1));
    }
    if ((i > 0x7f800000)) {
      expo = -((int)((unsigned int)-1 >> 1))-1;
    }
  }
  return expo;
}

static __inline__ __attribute__((always_inline)) float logbf(float a)
{
  unsigned int i;
  int expo;
  float fa, res;
  fa = fabsf(a);
  i = __float_as_int(fa);
  if (i < 0x00800000) {

    expo = -118 - __clz(i);
    res = (float)expo;
    if (a == 0.0f) {
      res = -__int_as_float(0x7f800000);
    }
  } else {
    expo = ((int)((i >> 23) & 0xff)) - 127;
    res = (float)expo;
    if ((i >= 0x7f800000)) {

      res = a * a;
    }
  }
  return res;
}

static __inline__ __attribute__((always_inline)) void sincosf(float a, float *sptr, float *cptr)
{

  __sincosf(a, sptr, cptr);
# 3116 "/usr/local/cuda/include/math_functions.h" 3
}
# 5207 "/usr/local/cuda/include/math_functions.h" 3
# 1 "/usr/local/cuda/include/math_functions_dbl_ptx3.h" 1 3
# 63 "/usr/local/cuda/include/math_functions_dbl_ptx3.h" 3
static __inline__ __attribute__((always_inline)) double rint(double a)
{
  return __builtin_round(a);
}

static __inline__ __attribute__((always_inline)) long int lrint(double a)
{

  return (long int)__double2ll_rn(a);



}

static __inline__ __attribute__((always_inline)) long long int llrint(double a)
{
  return __double2ll_rn(a);
}

static __inline__ __attribute__((always_inline)) double nearbyint(double a)
{
  return __builtin_round(a);
}







static __inline__ __attribute__((always_inline)) int __signbit(double a)
{
  return (int)((unsigned int)__double2hiint(a) >> 31);
}

static __inline__ __attribute__((always_inline)) int __finite(double a)
{
  return fabs(a) < __longlong_as_double(0x7ff0000000000000ULL);
}

static __inline__ __attribute__((always_inline)) int __isinf(double a)
{
  return fabs(a) == __longlong_as_double(0x7ff0000000000000ULL);
}

static __inline__ __attribute__((always_inline)) int __isnan(double a)
{
  return !(fabs(a) <= __longlong_as_double(0x7ff0000000000000ULL));
}

static __inline__ __attribute__((always_inline)) double copysign(double a, double b)
{
  int alo, ahi, bhi;

  bhi = __double2hiint(b);
  alo = __double2loint(a);
  ahi = __double2hiint(a);
  ahi = (bhi & 0x80000000) | (ahi & ~0x80000000);
  return __hiloint2double(ahi, alo);
}


static __inline__ __attribute__((always_inline)) double __internal_copysign_pos(double a, double b)
{
  int alo, ahi, bhi;

  bhi = __double2hiint(b);
  alo = __double2loint(a);
  ahi = __double2hiint(a);
  ahi = (bhi & 0x80000000) | ahi;
  return __hiloint2double(ahi, alo);
}

static __inline__ __attribute__((always_inline)) double __internal_fast_rcp(double a)
{
  double e, y;
  float x;
  asm ("cvt.f32.f64.rn     %0,%1;" : "=f"(x) : "d"(a));
  asm ("rcp.approx.f32.ftz %0,%1;" : "=f"(x) : "f"(x));
  asm ("cvt.f64.f32        %0,%1;" : "=d"(y) : "f"(x));
  e = __fma_rn (-a, y, 1.0);
  e = __fma_rn ( e, e, e);
  y = __fma_rn ( e, y, y);
  return y;
}


static __attribute__((constant)) unsigned long long int __cudart_i2opi_d [] = {
  0x6bfb5fb11f8d5d08ULL,
  0x3d0739f78a5292eaULL,
  0x7527bac7ebe5f17bULL,
  0x4f463f669e5fea2dULL,
  0x6d367ecf27cb09b7ULL,
  0xef2f118b5a0a6d1fULL,
  0x1ff897ffde05980fULL,
  0x9c845f8bbdf9283bULL,
  0x3991d639835339f4ULL,
  0xe99c7026b45f7e41ULL,
  0xe88235f52ebb4484ULL,
  0xfe1deb1cb129a73eULL,
  0x06492eea09d1921cULL,
  0xb7246e3a424dd2e0ULL,
  0xfe5163abdebbc561ULL,
  0xdb6295993c439041ULL,
  0xfc2757d1f534ddc0ULL,
  0xa2f9836e4e441529ULL,
};

static __inline__ __attribute__((always_inline)) double __internal_trig_reduction_kerneld(double a, int *quadrant)
{
  double j;
  int q;
  if (fabs(a) > 2147483648.0) {

    unsigned long long int ia;
    unsigned long long int s;
    unsigned long long int result[5];
    unsigned long long int phi, plo;
    unsigned long long int hi, lo;
    unsigned int e;
    int idx;

    ia = __double_as_longlong(a);
    s = ia & 0x8000000000000000ULL;
    e = (unsigned int)(((ia >> 52) & 0x7ff) - 1024);
    ia = (ia << 11) | 0x8000000000000000ULL;

    idx = 16 - (e >> 6);
    hi = 0;
#pragma unroll 1
    for (q = (idx-1); q < min(18,idx+3); q++) {
      plo = __cudart_i2opi_d[q] * ia;
      phi = __umul64hi (__cudart_i2opi_d[q], ia);
      lo = hi + plo;
      hi = phi + (lo < plo);
      result[q-(idx-1)] = lo;
    }
    result[q-(idx-1)] = hi;
    e = e & 63;



    hi = result[3];
    lo = result[2];
    if (e) {
      q = 64 - e;
      hi = (hi << e) | (lo >> q);
      lo = (lo << e) | (result[1] >> q);
    }
    q = (int)(hi >> 62);

    hi = (hi << 2) | (lo >> 62);
    lo = (lo << 2);
    e = hi >> 63;
    q += e;
    if (s) q = -q;
    if (e) {
      unsigned long long int t;
      hi = ~hi;
      lo = -(long long int)lo;
      t = (lo == 0ULL);
      hi += t;
      s = s ^ 0x8000000000000000ULL;
    }
    *quadrant = q;

    e = __clzll(hi);
    if (e) {
      hi = (hi << e) | (lo >> (64 - e));
    }
    lo = hi * 0xC90FDAA22168C235ULL;
    hi = __umul64hi (hi, 0xC90FDAA22168C235ULL);
    if ((long long int)hi > 0) {
      hi = (hi << 1) | (lo >> 63);
      e++;
    }
    ia = s | ((((unsigned long long int)(1022 - e)) << 52) +
              ((((hi + 1) >> 10) + 1) >> 1));
    return __longlong_as_double(ia);
  }

  q = __double2int_rn (a * 6.3661977236758138e-1);
  j = (double)q;




  a = __fma_rn (-j, 1.5707963267948966e+000, a);
  a = __fma_rn (-j, 6.1232339957367574e-017, a);
  a = __fma_rn (-j, 8.4784276603688985e-032, a);
  *quadrant = q;
  return a;
}


static __inline__ __attribute__((always_inline)) double __internal_sin_kerneld(double x)
{
  double x2, z;
  x2 = x * x;
  z = 1.5896230157221844E-010;
  z = __fma_rn (z, x2, -2.5050747762850355E-008);
  z = __fma_rn (z, x2, 2.7557313621385676E-006);
  z = __fma_rn (z, x2, -1.9841269829589539E-004);
  z = __fma_rn (z, x2, 8.3333333333221182E-003);
  z = __fma_rn (z, x2, -1.6666666666666630E-001);
  z = z * x2;
  z = __fma_rn (z, x, x);
  return z;
}


static __inline__ __attribute__((always_inline)) double __internal_cos_kerneld(double x)
{
  double x2, z;
  x2 = x * x;
  z = -1.136788825395985E-011;
  z = __fma_rn (z, x2, 2.087588480545065E-009);
  z = __fma_rn (z, x2, -2.755731555403950E-007);
  z = __fma_rn (z, x2, 2.480158729365970E-005);
  z = __fma_rn (z, x2, -1.388888888888074E-003);
  z = __fma_rn (z, x2, 4.166666666666664E-002);
  z = __fma_rn (z, x2, -5.000000000000000E-001);
  z = __fma_rn (z, x2, 1.000000000000000E+000);
  return z;
}


static __inline__ __attribute__((always_inline)) double __internal_tan_kerneld(double x, int i)
{
  double x2, z, q;
  x2 = x * x;
  z = 9.8006287203286300E-006;
  z = __fma_rn (z, x2, -2.4279526494179897E-005);
  z = __fma_rn (z, x2, 4.8644173130937162E-005);
  z = __fma_rn (z, x2, -2.5640012693782273E-005);
  z = __fma_rn (z, x2, 6.7223984330880073E-005);
  z = __fma_rn (z, x2, 8.3559287318211639E-005);
  z = __fma_rn (z, x2, 2.4375039850848564E-004);
  z = __fma_rn (z, x2, 5.8886487754856672E-004);
  z = __fma_rn (z, x2, 1.4560454844672040E-003);
  z = __fma_rn (z, x2, 3.5921008885857180E-003);
  z = __fma_rn (z, x2, 8.8632379218613715E-003);
  z = __fma_rn (z, x2, 2.1869488399337889E-002);
  z = __fma_rn (z, x2, 5.3968253972902704E-002);
  z = __fma_rn (z, x2, 1.3333333333325342E-001);
  z = __fma_rn (z, x2, 3.3333333333333381E-001);
  z = z * x2;
  q = __fma_rn (z, x, x);
  if (i) {
    double s = q - x;
    double w = __fma_rn (z, x, -s);
    z = 1.0 / q;
    z = -z;
    s = __fma_rn (q, z, 1.0);
    q = __fma_rn (z, __fma_rn (z, w, s), z);
  }
  return q;
}


static __inline__ __attribute__((always_inline)) double __internal_expm1_kernel (double a)
{
  double t;
  t = 2.08842685477913050E-009;
  t = __fma_rn (t, a, 2.51366409033551950E-008);
  t = __fma_rn (t, a, 2.75574612072447230E-007);
  t = __fma_rn (t, a, 2.75571539284473460E-006);
  t = __fma_rn (t, a, 2.48015869443077950E-005);
  t = __fma_rn (t, a, 1.98412699878799470E-004);
  t = __fma_rn (t, a, 1.38888888892029890E-003);
  t = __fma_rn (t, a, 8.33333333327662860E-003);
  t = __fma_rn (t, a, 4.16666666666656370E-002);
  t = __fma_rn (t, a, 1.66666666666667380E-001);
  t = __fma_rn (t, a, 5.00000000000000000E-001);
  t = t * a;
  t = __fma_rn (t, a, a);
  return t;
}


static __inline__ __attribute__((always_inline)) double __internal_atanh_kernel (double a_1, double a_2)
{
  double a, a2, t;

  a = a_1 + a_2;
  a2 = a * a;
  t = 7.597322383488143E-002/65536.0;
  t = __fma_rn (t, a2, 6.457518383364042E-002/16384.0);
  t = __fma_rn (t, a2, 7.705685707267146E-002/4096.0);
  t = __fma_rn (t, a2, 9.090417561104036E-002/1024.0);
  t = __fma_rn (t, a2, 1.111112158368149E-001/256.0);
  t = __fma_rn (t, a2, 1.428571416261528E-001/64.0);
  t = __fma_rn (t, a2, 2.000000000069858E-001/16.0);
  t = __fma_rn (t, a2, 3.333333333333198E-001/4.0);
  t = t * a2;
  t = __fma_rn (t, a, a_2);
  t = t + a_1;
  return t;
}

static __inline__ __attribute__((always_inline)) double __internal_exp2i_kernel(int b)
{
  return __hiloint2double((b + 1023) << 20, 0);
}

static __inline__ __attribute__((always_inline)) double __internal_half(double a)
{
  unsigned int ihi, ilo;
  ilo = __double2loint(a);
  ihi = __double2hiint(a);
  return __hiloint2double(ihi - 0x00100000, ilo);
}

static __inline__ __attribute__((always_inline)) double __internal_twice(double a)
{
  unsigned int ihi, ilo;
  ilo = __double2loint(a);
  ihi = __double2hiint(a);
  return __hiloint2double(ihi + 0x00100000, ilo);
}

static __inline__ __attribute__((always_inline)) double sin(double a)
{
  double z;
  int i;
  if (__isinf(a) || (a == 0.0)) {
    return __dmul_rn(a, 0.0);
  }
  z = __internal_trig_reduction_kerneld(a, &i);

  if (i & 1) {
    z = __internal_cos_kerneld(z);
  } else {
    z = __internal_sin_kerneld(z);
  }
  if (i & 2) {
    z = -z;
  }
  return z;
}

static __inline__ __attribute__((always_inline)) double sinpi(double a)
{
  volatile double z;
  long long l;
  int i;

  if (__isinf(a)) {
    a = __dmul_rn(a, 0.0);
  }
  if (a == trunc(a)) {
    a = __longlong_as_double(__double_as_longlong(a)&0x8000000000000000ULL);
  }
  l = __double2ll_rn (a * 2.0f);
  i = (int)l;
  z = (double)l;
  z = __fma_rn (-z, 0.5, a);
  z = __fma_rn (z, 3.1415926535897931e+0, z * 1.2246467991473532e-16);
  if (i & 1) {
    z = __internal_cos_kerneld(z);
  } else {
    z = __internal_sin_kerneld(z);
  }
  if (i & 2) {
    z = -z;
  }
  if (a == 0.0) {
    z = a;
  }
  return z;
}

static __inline__ __attribute__((always_inline)) double cospi(double a)
{
  volatile double z;
  long long l;
  int i;

  if (fabs(a) > 9007199254740992.0) {
    a = __dmul_rn (a, 0.0);
  }
  l = __double2ll_rn (a * 2.0f);
  i = (int)l;
  z = (double)l;
  z = __fma_rn (-z, 0.5, a);
  z = __fma_rn (z, 3.1415926535897931e+0, z * 1.2246467991473532e-16);
  i++;
  if (i & 1) {
    z = __internal_cos_kerneld(z);
  } else {
    z = __internal_sin_kerneld(z);
  }
  if (i & 2) {
    z = -z;
  }
  if (z == 0.0) {
    z = fabs (z);
  }
  return z;
}

static __inline__ __attribute__((always_inline)) double cos(double a)
{
  double z;
  int i;
  if (__isinf(a)) {
    return __longlong_as_double(0xfff8000000000000ULL);
  }
  z = __internal_trig_reduction_kerneld(a, &i);

  i++;
  if (i & 1) {
    z = __internal_cos_kerneld(z);
  } else {
    z = __internal_sin_kerneld(z);
  }
  if (i & 2) {
    z = -z;
  }
  return z;
}

static __inline__ __attribute__((always_inline)) void sincos(double a, double *sptr, double *cptr)
{
  volatile double s, c;
  double t;
  int i;

  if (__isinf(a)) {
    a = __dmul_rn (a, 0.0);
  }
  a = __internal_trig_reduction_kerneld(a, &i);
  c = __internal_cos_kerneld(a);
  s = __internal_sin_kerneld(a);
  t = s;
  if (i & 1) {
    s = c;
    c = t;
  }
  if (i & 2) {
    s = -s;
  }
  i++;
  if (i & 2) {
    c = -c;
  }
  if (a == 0.0) {
    s = a;
  }
  *sptr = s;
  *cptr = c;
}

static __inline__ __attribute__((always_inline)) double tan(double a)
{
  double z;
  int i;
  if (__isinf(a)) {
    return __dadd_rn (a, -a);
  }
  z = __internal_trig_reduction_kerneld(a, &i);

  z = __internal_tan_kerneld(z, i & 1);
  return z;
}

static __inline__ __attribute__((always_inline)) double log(double a)
{
  double m, f, g, u, v, tmp, q, ulo, log_lo, log_hi;
  int ihi, ilo;

  ihi = __double2hiint(a);
  ilo = __double2loint(a);

  if ((a > 0.0) && (a < __longlong_as_double(0x7ff0000000000000ULL))) {
    int e = -1023;

    if ((unsigned)ihi < (unsigned)0x00100000) {
      a = a * 18014398509481984.0;
      e -= 54;
      ihi = __double2hiint(a);
      ilo = __double2loint(a);
    }



    e += (ihi >> 20);
    ihi = (ihi & 0x800fffff) | 0x3ff00000;
    m = __hiloint2double (ihi, ilo);
    if ((unsigned)ihi > (unsigned)0x3ff6a09e) {
      m = __internal_half(m);
      e = e + 1;
    }

    f = m - 1.0;
    g = m + 1.0;
    g = __internal_fast_rcp(g);
    u = f * g;
    u = u + u;

    v = u * u;
    q = 6.7261411553826339E-2/65536.0;
    q = __fma_rn (q, v, 6.6133829643643394E-2/16384.0);
    q = __fma_rn (q, v, 7.6940931149150890E-2/4096.0);
    q = __fma_rn (q, v, 9.0908745692137444E-2/1024.0);
    q = __fma_rn (q, v, 1.1111111499059706E-1/256.0);
    q = __fma_rn (q, v, 1.4285714283305975E-1/64.0);
    q = __fma_rn (q, v, 2.0000000000007223E-1/16.0);
    q = __fma_rn (q, v, 3.3333333333333326E-1/4.0);
    tmp = 2.0 * (f - u);
    tmp = __fma_rn (-u, f, tmp);
    ulo = g * tmp;

    q = q * v;
    q = q * u;

    log_hi = u;
    log_lo = ulo + q;

    q = __fma_rn ( e, 6.9314718055994529e-1, log_hi);
    tmp = __fma_rn (-e, 6.9314718055994529e-1, q);
    tmp = tmp - log_hi;
    log_hi = q;
    log_lo = log_lo - tmp;
    log_lo = __fma_rn (e, 2.3190468138462996e-17, log_lo);
    return log_hi + log_lo;
  } else {
    if (__isnan(a)) {
      return a + a;
    }

    if (a == 0) {
      return -__longlong_as_double(0x7ff0000000000000ULL);
    }

    if (a == __longlong_as_double(0x7ff0000000000000ULL)) {
      return a;
    }

    return __longlong_as_double(0xfff8000000000000ULL);
  }
}


static __inline__ __attribute__((always_inline)) double2 __internal_ddadd_xgty (double2 x, double2 y)
{
  double2 z;
  double r, s, e;
  r = x.y + y.y;
  e = x.y - r;
  s = ((e + y.y) + y.x) + x.x;
  z.y = e = r + s;
  z.x = (r - e) + s;
  return z;
}


static __inline__ __attribute__((always_inline)) double2 __internal_ddmul (double2 x, double2 y)
{
  double e;
  double2 t, z;
  t.y = x.y * y.y;
  t.x = __fma_rn (x.y, y.y, -t.y);
  t.x = __fma_rn (x.x, y.x, t.x);
  t.x = __fma_rn (x.y, y.x, t.x);
  t.x = __fma_rn (x.x, y.y, t.x);
  z.y = e = t.y + t.x;
  z.x = (t.y - e) + t.x;
  return z;
}

static __inline__ __attribute__((always_inline)) double2 __internal_log_ext_prec(double a)
{
  double2 res;
  double2 qq, cc, uu, tt;
  double f, g, u, v, q, ulo, tmp, m;
  int ilo, ihi, expo;

  ihi = __double2hiint(a);
  ilo = __double2loint(a);
  expo = (ihi >> 20) & 0x7ff;

  if (expo == 0) {
    a *= 18014398509481984.0;
    ihi = __double2hiint(a);
    ilo = __double2loint(a);
    expo = (ihi >> 20) & 0x7ff;
    expo -= 54;
  }
  expo -= 1023;




  ihi = (ihi & 0x800fffff) | 0x3ff00000;
  m = __hiloint2double (ihi, ilo);
  if ((unsigned)ihi > (unsigned)0x3ff6a09e) {
    m = __internal_half(m);
    expo = expo + 1;
  }





  f = m - 1.0;
  g = m + 1.0;
  g = __internal_fast_rcp(g);
  u = f * g;
  u = u + u;

  v = u * u;
  q = 6.6253631649203309E-2/65536.0;
  q = __fma_rn (q, v, 6.6250935587260612E-2/16384.0);
  q = __fma_rn (q, v, 7.6935437806732829E-2/4096.0);
  q = __fma_rn (q, v, 9.0908878711093280E-2/1024.0);
  q = __fma_rn (q, v, 1.1111111322892790E-1/256.0);
  q = __fma_rn (q, v, 1.4285714284546502E-1/64.0);
  q = __fma_rn (q, v, 2.0000000000003113E-1/16.0);
  q = q * v;

  tmp = 2.0 * (f - u);
  tmp = __fma_rn (-u, f, tmp);
  ulo = g * tmp;

  qq.y = q;
  qq.x = 0.0;
  uu.y = u;
  uu.x = ulo;
  cc.y = 3.3333333333333331E-1/4.0;
  cc.x = -9.8201492846582465E-18/4.0;
  qq = __internal_ddadd_xgty (cc, qq);

  qq = __internal_ddmul(qq, uu);
  qq = __internal_ddmul(qq, uu);
  qq = __internal_ddmul(qq, uu);
  uu = __internal_ddadd_xgty (uu, qq);
  u = uu.y;
  ulo = uu.x;

  tt.y = expo * 6.9314718055966296e-001;
  tt.x = expo * 2.8235290563031577e-013;

  res = __internal_ddadd_xgty (tt, uu);
  return res;
}

static __inline__ __attribute__((always_inline)) double log2(double a)
{
  double t;
  t = log(a);
  return __fma_rn (t, 1.4426950408889634e+0, t * 2.0355273740931033e-17);
}

static __inline__ __attribute__((always_inline)) double log10(double a)
{
  double t;
  t = log(a);
  return __fma_rn (t, 4.3429448190325182e-1, t * 1.09831965021676510e-17);
}

static __inline__ __attribute__((always_inline)) double log1p(double a)
{
  double t;
  int i;

  i = __double2hiint(a);
  if (((unsigned)i < (unsigned)0x3fe55555) || ((int)i < (int)0xbfd99999)) {

    t = a + 2.0;
    t = a / t;
    t = -a * t;
    t = __internal_atanh_kernel(a, t);
    return t;
  }
  return log (a + 1.0);
}

static __inline__ __attribute__((always_inline)) double __internal_exp_kernel(double a, int scale)
{
  double t, z;
  int i, j, k;
  t = rint (a * 1.4426950408889634e+0);
  i = (int)t;
  z = __fma_rn (t, -6.9314718055994529e-1, a);
  z = __fma_rn (t, -2.3190468138462996e-17, z);
  t = __internal_expm1_kernel (z);
  k = ((i + scale) << 20) + (1023 << 20);
  if (abs(i) < 1021) {
    z = __hiloint2double (k, 0);
    z = __fma_rn (t, z, z);
  } else {
    j = 0x40000000;
    if (i < 0) {
      k += (55 << 20);
      j -= (55 << 20);
    }
    k = k - (1 << 20);
    z = __hiloint2double (j, 0);
    t = __fma_rn (t, z, z);
    z = __hiloint2double (k, 0);
    z = t * z;
  }
  return z;
}

static __inline__ __attribute__((always_inline)) double exp(double a)
{
  double t;
  int i;
  i = __double2hiint(a);
  if (((unsigned)i < (unsigned)0x40862e43) || ((int)i < (int)0xC0874911)) {
    t = __internal_exp_kernel(a, 0);
    return t;
  }
  t = (i < 0) ? 0.0 : __longlong_as_double(0x7ff0000000000000ULL);
  if (__isnan(a)) {
    t = a + a;
  }
  return t;
}

static __inline__ __attribute__((always_inline)) double exp2(double a)
{
  double t, z;
  int i, j, k;

  i = __double2hiint(a);
  if (((unsigned)i < (unsigned)0x40900000) || ((int)i < (int)0xc090cc00)) {
    t = rint (a);
    z = a - t;
    i = (int)t;

    z = __fma_rn (z, 6.9314718055994529e-1, z * 2.3190468138462996e-17);
    t = __internal_expm1_kernel(z);
    k = (i << 20) + (1023 << 20);
    if (abs(i) < 1023) {
      z = __hiloint2double (k, 0);
      z = __fma_rn (t, z, z);
    } else {
      j = 0x40000000;
      if (i < 0) {
        k += (55 << 20);
        j -= (55 << 20);
      }
      k = k - (1 << 20);
      z = __hiloint2double (j, 0);
      t = __fma_rn (t, z, z);
      z = __hiloint2double (k, 0);
      z = t * z;
    }
    return z;
  }
  t = (i < 0) ? 0.0 : __longlong_as_double(0x7ff0000000000000ULL);
  if (__isnan(a)) {
    t = a + a;
  }
  return t;
}

static __inline__ __attribute__((always_inline)) double exp10(double a)
{
  double z;
  double t;
  int i, j, k;

  i = __double2hiint(a);
  if (((unsigned)i < (unsigned)0x40734414) || ((int)i < (int)0xc07439b8)) {
    t = rint (a * 3.3219280948873622e+0);
    i = (int)t;
    z = __fma_rn (t, -3.0102999566398120e-1, a);
    z = __fma_rn (t, -(-2.8037281277851704e-18), z);

    z = __fma_rn (z, 2.3025850929940459e+0, z * (-2.1707562233822494e-16));
    t = __internal_expm1_kernel(z);
    k = (i << 20) + (1023 << 20);
    if (abs(i) < 1023) {
      z = __hiloint2double (k, 0);
      z = __fma_rn (t, z, z);
    } else {
      j = 0x40000000;
      if (i < 0) {
        k += (55 << 20);
        j -= (55 << 20);
      }
      k = k - (1 << 20);
      z = __hiloint2double (j, 0);
      t = __fma_rn (t, z, z);
      z = __hiloint2double (k, 0);
      z = t * z;
    }
    return z;
  }
  t = (i < 0) ? 0.0 : __longlong_as_double(0x7ff0000000000000ULL);
  if (__isnan(a)) {
    t = a + a;
  }
  return t;
}

static __inline__ __attribute__((always_inline)) double __internal_expm1_scaled(double a, int scale)
{
  double t, z, u;
  int i, j, k;
  k = __double2hiint(a);
  t = rint (a * 1.4426950408889634e+0);
  i = (int)t + scale;
  z = __fma_rn (t, -6.9314718055994529e-1, a);
  z = __fma_rn (t, -2.3190468138462996e-17, z);
  k = k + k;
  if ((unsigned)k < (unsigned)0x7fb3e647) {
    z = a;
    i = 0;
  }
  t = __internal_expm1_kernel(z);
  j = i;
  if (i == 1024) j--;
  u = __internal_exp2i_kernel(j);
  a = __hiloint2double(0x3ff00000 + (scale << 20), 0);
  a = u - a;
  t = __fma_rn (t, u, a);
  if (i == 1024) t = t + t;
  if (k == 0) t = z;
  return t;
}

static __inline__ __attribute__((always_inline)) double expm1(double a)
{
  double t;
  int k;

  k = __double2hiint(a);
  if (((unsigned)k < (unsigned)0x40862e43) || ((int)k < (int)0xc04a8000)) {
    return __internal_expm1_scaled(a, 0);
  }
  t = (k < 0) ? -1.0 : __longlong_as_double(0x7ff0000000000000ULL);
  if (__isnan(a)) {
    t = a + a;
  }
  return t;
}

static __inline__ __attribute__((always_inline)) double cosh(double a)
{
  double z;
  int i;

  z = fabs(a);
  i = __double2hiint(z);
  if ((unsigned)i < (unsigned)0x408633cf) {
    z = __internal_exp_kernel(z, -2);
    z = __fma_rn(2.0, z, 0.125 / z);
    return z;
  } else {
    if (z > 0.0) a = __int_as_float(0x7f800000);
    return a + a;
  }
}

static __inline__ __attribute__((always_inline)) double sinh(double a)
{
  double s, z;
  s = a;
  a = fabs(a);
  if (__double2hiint(a) < 0x3ff00000) {
    double a2 = a * a;

    z = 1.632386098183803E-010;
    z = __fma_rn (z, a2, 2.504854501385687E-008);
    z = __fma_rn (z, a2, 2.755734274788706E-006);
    z = __fma_rn (z, a2, 1.984126976294102E-004);
    z = __fma_rn (z, a2, 8.333333333452911E-003);
    z = __fma_rn (z, a2, 1.666666666666606E-001);
    z = z * a2;
    z = __fma_rn (z, a, a);
  } else {
    z = __internal_expm1_scaled (a, -1);
    z = z + z / __fma_rn (2.0, z, 1.0);
    if (a >= 7.1047586007394398e+2) {
      z = __longlong_as_double(0x7ff0000000000000ULL);
    }
  }
  z = __internal_copysign_pos(z, s);
  return z;
}

static __inline__ __attribute__((always_inline)) double tanh(double a)
{
  double t;
  t = fabs(a);
  if (t >= 0.55) {
    double s;
    s = 1.0 - 2.0 / (__internal_exp_kernel(2.0 * t, 0) + 1.0);
    if (t > 350.0) {
      s = 1.0;
    }
    a = __internal_copysign_pos(s, a);
  } else {
    double a2;
    a2 = a * a;
    t = 5.102147717274194E-005;
    t = __fma_rn (t, a2, -2.103023983278533E-004);
    t = __fma_rn (t, a2, 5.791370145050539E-004);
    t = __fma_rn (t, a2, -1.453216755611004E-003);
    t = __fma_rn (t, a2, 3.591719696944118E-003);
    t = __fma_rn (t, a2, -8.863194503940334E-003);
    t = __fma_rn (t, a2, 2.186948597477980E-002);
    t = __fma_rn (t, a2, -5.396825387607743E-002);
    t = __fma_rn (t, a2, 1.333333333316870E-001);
    t = __fma_rn (t, a2, -3.333333333333232E-001);
    t = t * a2;
    t = __fma_rn (t, a, a);
    a = __internal_copysign_pos(t, a);
  }
  return a;
}

static __inline__ __attribute__((always_inline)) double __internal_atan_kernel(double a)
{
  double t, a2;
  a2 = a * a;
  t = -2.0258553044438358E-005 ;
  t = __fma_rn (t, a2, 2.2302240345758510E-004);
  t = __fma_rn (t, a2, -1.1640717779930576E-003);
  t = __fma_rn (t, a2, 3.8559749383629918E-003);
  t = __fma_rn (t, a2, -9.1845592187165485E-003);
  t = __fma_rn (t, a2, 1.6978035834597331E-002);
  t = __fma_rn (t, a2, -2.5826796814495994E-002);
  t = __fma_rn (t, a2, 3.4067811082715123E-002);
  t = __fma_rn (t, a2, -4.0926382420509971E-002);
  t = __fma_rn (t, a2, 4.6739496199157994E-002);
  t = __fma_rn (t, a2, -5.2392330054601317E-002);
  t = __fma_rn (t, a2, 5.8773077721790849E-002);
  t = __fma_rn (t, a2, -6.6658603633512573E-002);
  t = __fma_rn (t, a2, 7.6922129305867837E-002);
  t = __fma_rn (t, a2, -9.0909012354005225E-002);
  t = __fma_rn (t, a2, 1.1111110678749424E-001);
  t = __fma_rn (t, a2, -1.4285714271334815E-001);
  t = __fma_rn (t, a2, 1.9999999999755019E-001);
  t = __fma_rn (t, a2, -3.3333333333331860E-001);
  t = t * a2;
  t = __fma_rn (t, a, a);
  return t;
}

static __inline__ __attribute__((always_inline)) double atan2(double a, double b)
{
  double t0, t1, t3;
  if (__isnan(a) || __isnan(b)) {
    return a + b;
  }
  t3 = fabs(b);
  t1 = fabs(a);
  if (t3 == 0.0 && t1 == 0.0) {
    t3 = (__double2hiint(b) < 0) ? 3.1415926535897931e+0 : 0;
  } else if (__isinf(t3) && __isinf(t1)) {
    t3 = (__double2hiint(b) < 0) ? 2.3561944901923448e+0 : 7.8539816339744828e-1;
  } else {
    t0 = fmax (t1, t3);
    t1 = fmin (t1, t3);
    t3 = t1 / t0;
    t3 = __internal_atan_kernel(t3);

    if (fabs(a) > fabs(b)) t3 = 1.5707963267948966e+0 - t3;
    if (b < 0.0) t3 = 3.1415926535897931e+0 - t3;
  }
  t3 = __internal_copysign_pos(t3, a);
  return t3;
}

static __inline__ __attribute__((always_inline)) double atan(double a)
{
  double t0, t1;

  t0 = fabs(a);
  t1 = t0;
  if (t0 > 1.0) {
    t1 = 1.0 / t1;
  }

  t1 = __internal_atan_kernel(t1);

  if (t0 > 1.0) {
    t1 = 1.5707963267948966e+0 - t1;
  }
  return __internal_copysign_pos(t1, a);
}


static __inline__ __attribute__((always_inline)) double __internal_asin_kernel(double a, double b)
{
  double r;
  r = 6.259798167646803E-002;
  r = __fma_rn (r, b, -7.620591484676952E-002);
  r = __fma_rn (r, b, 6.686894879337643E-002);
  r = __fma_rn (r, b, -1.787828218369301E-002);
  r = __fma_rn (r, b, 1.745227928732326E-002);
  r = __fma_rn (r, b, 1.000422754245580E-002);
  r = __fma_rn (r, b, 1.418108777515123E-002);
  r = __fma_rn (r, b, 1.733194598980628E-002);
  r = __fma_rn (r, b, 2.237350511593569E-002);
  r = __fma_rn (r, b, 3.038188875134962E-002);
  r = __fma_rn (r, b, 4.464285849810986E-002);
  r = __fma_rn (r, b, 7.499999998342270E-002);
  r = __fma_rn (r, b, 1.666666666667375E-001);
  r = r * b;
  return r;
}

static __inline__ __attribute__((always_inline)) double asin(double a)
{
  double fa, t0, t1;
  int ihi, ahi;
  ahi = __double2hiint(a);
  fa = fabs(a);
  ihi = __double2hiint(fa);
  if (ihi < 0x3fe26666) {
    t1 = fa * fa;
    t1 = __internal_asin_kernel (fa, t1);
    t1 = __fma_rn (t1, fa, fa);
    t1 = __internal_copysign_pos(t1, a);
  } else {
    t1 = __fma_rn (-0.5, fa, 0.5);
    t0 = sqrt (t1);
    t1 = __internal_asin_kernel (t0, t1);
    t0 = -2.0 * t0;
    t1 = __fma_rn (t0, t1, 6.1232339957367660e-17);
    t0 = t0 + 7.8539816339744828e-1;
    t1 = t0 + t1;
    t1 = t1 + 7.8539816339744828e-1;
    if (ahi < 0x3ff00000) {
      t1 = __internal_copysign_pos(t1, a);
    }
  }
  return t1;
}

static __inline__ __attribute__((always_inline)) double acos(double a)
{
  double t0, t1;
  int ihi, ahi;

  ahi = __double2hiint(a);
  t0 = fabs (a);
  ihi = __double2hiint(t0);
  if (ihi < 0x3fe26666) {
    t1 = t0 * t0;
    t1 = __internal_asin_kernel (t0, t1);
    t0 = __fma_rn (t1, t0, t0);
    if ((unsigned)ahi >= (unsigned)0x80000000) {
      t0 = __fma_rn (1.0, t0, +6.1232339957367660e-17);
      t0 = 1.5707963267948966e+0 + t0;
    } else {
      t0 = __fma_rn (1.0, t0, -6.1232339957367660e-17);
      t0 = 1.5707963267948966e+0 - t0;
    }
  } else {
    t1 = __fma_rn (-0.5, t0, 0.5);
    t0 = sqrt(t1);
    t1 = __internal_asin_kernel (t0, t1);
    t0 = __fma_rn (t1, t0, t0);
    t0 = 2.0 * t0;
    if ((unsigned)ahi >= (unsigned)0x80000000) {
      t0 = __fma_rn (1.0, t0, -1.2246467991473532e-16);
      t0 = 3.1415926535897931e+0 - t0;
    }
  }
  return t0;
}

static __inline__ __attribute__((always_inline)) double acosh(double a)
{
  double t;
  t = a - 1.0;
  if (fabs(t) > 4503599627370496.0) {

    return 6.9314718055994529e-1 + log(a);
  } else {
    t = t + sqrt(__fma_rn(a, t, t));
    return log1p(t);
  }
}

static __inline__ __attribute__((always_inline)) double asinh(double a)
{
  double fa, t;
  fa = fabs(a);
  if (__double2hiint(fa) >= 0x5ff00000) {
    t = 6.9314718055994529e-1 + log(fa);
  } else {
    t = fa * fa;
    t = log1p (fa + t / (1.0 + sqrt(1.0 + t)));
  }
  return __internal_copysign_pos(t, a);
}

static __inline__ __attribute__((always_inline)) double atanh(double a)
{
  double fa, t;
  fa = fabs(a);
  t = (2.0 * fa) / (1.0 - fa);
  t = 0.5 * log1p(t);
  if (__double2hiint(a) < 0) {
    t = -t;
  }
  return t;
}

static __inline__ __attribute__((always_inline)) double hypot(double a, double b)
{
  double v, w, t, fa, fb;

  fa = fabs(a);
  fb = fabs(b);
  v = fmax(fa, fb);
  w = fmin(fa, fb);
  t = w / v;
  t = __fma_rn (t, t, 1.0);
  t = v * sqrt(t);
  if (v == 0.0) {
    t = v + w;
  }
  if ((!(fa <= __longlong_as_double(0x7ff0000000000000ULL))) || (!(fb <= __longlong_as_double(0x7ff0000000000000ULL)))) {
    t = a + b;
  }
  if (v == __longlong_as_double(0x7ff0000000000000ULL)) {
    t = v + w;
  }
  return t;
}

static __inline__ __attribute__((always_inline)) double cbrt(double a)
{
  float s;
  double t, r;
  int ilo, ihi, expo, nexpo, denorm;
  if ((a == 0.0) || !(__finite(a))) {
    return a + a;
  }
  t = fabs(a);
  ilo = __double2loint(t);
  ihi = __double2hiint(t);
  expo = ((int)((unsigned int)ihi >> 20) & 0x7ff);
  denorm = 0;
  if (expo == 0) {

    t = t * 18014398509481984.0;
    denorm = 18;
    ilo = __double2loint(t);
    ihi = __double2hiint(t);
    expo = ((int)((unsigned int)ihi >> 20) & 0x7ff);
  }

  nexpo = __float2int_rn(0.333333333f * (float)(expo - 1022));
  ihi -= (3 * nexpo) << 20;
  r = __hiloint2double(ihi, ilo);

  s = (float)r;
  t = exp2f(-0.333333333f * __log2f(s));
  t = __fma_rn(__fma_rn(t*t,-r*t,1.0), 3.3333333333333333e-1*t, t);
  t = r * t * t;
  t = __fma_rn(t - (r / (t * t)), -3.3333333333333333e-1, t);

  ilo = __double2loint(t);
  ihi = __double2hiint(t);
  ihi += (nexpo - denorm) << 20;
  t = __hiloint2double(ihi, ilo);
  if (__double2hiint(a) < 0) {
    t = -t;
  }
  return t;
}

static __inline__ __attribute__((always_inline)) double rcbrt(double a)
{
  float s;
  double t, r;
  int ilo, ihi, expo, nexpo, denorm;
  if ((a == 0.0) || !(__finite(a))) {
    return 1.0 / a;
  }
  t = fabs(a);
  ilo = __double2loint(t);
  ihi = __double2hiint(t);
  expo = ((int)((unsigned int)ihi >> 20) & 0x7ff);
  denorm = 0;
  if (expo == 0) {

    t = t * 18014398509481984.0;
    denorm = 18;
    ilo = __double2loint(t);
    ihi = __double2hiint(t);
    expo = ((int)((unsigned int)ihi >> 20) & 0x7ff);
  }

  nexpo = __float2int_rn(0.333333333f * (float)(expo - 1022));
  ihi -= (3 * nexpo) << 20;
  r = __hiloint2double(ihi, ilo);

  s = (float)r;
  t = exp2f(-0.333333333f * __log2f(s));
  t = __fma_rn(__fma_rn(t*t,-r*t,1.0), 3.3333333333333333e-1*t, t);
  t = __fma_rn(__fma_rn(t*t,-r*t,1.0), 3.3333333333333333e-1*t, t);

  ilo = __double2loint(t);
  ihi = __double2hiint(t);
  ihi += (-(nexpo - denorm)) << 20;
  t = __hiloint2double(ihi, ilo);
  if (__double2hiint(a) < 0) {
    t = -t;
  }
  return t;
}

static __inline__ __attribute__((always_inline)) double __internal_accurate_pow(double a, double b)
{
  double2 loga;
  double2 prod;
  double t_hi, t_lo;
  double tmp;
  double e;


  loga = __internal_log_ext_prec(a);


  if (fabs(b) > 1e304) b *= 1.220703125e-4;

  t_hi = loga.y * b;
  t_lo = __fma_rn (loga.y, b, -t_hi);
  t_lo = __fma_rn (loga.x, b, t_lo);
  prod.y = e = t_hi + t_lo;
  prod.x = (t_hi - e) + t_lo;


  tmp = exp(prod.y);

  if (!__isinf(tmp)) {



    tmp = __fma_rn (tmp, prod.x, tmp);
  }
  return tmp;
}

static __inline__ __attribute__((always_inline)) double pow(double a, double b)
{
  int bIsOddInteger;
  double t;

  if (a == 1.0 || b == 0.0) {
    return 1.0;
  }
  if (__isnan(a) || __isnan(b)) {
    return a + b;
  }
  if (a == __longlong_as_double(0x7ff0000000000000ULL)) {
    return (__double2hiint(b) < 0) ? 0.0 : __longlong_as_double(0x7ff0000000000000ULL);
  }
  if (__isinf(b)) {
    if (a == -1.0) {
      return 1.0;
    }
    t = fabs(a) > 1.0 ? __longlong_as_double(0x7ff0000000000000ULL) : 0.0;
    if (b < 0.0) {
      t = 1.0 / t;
    }
    return t;
  }
  bIsOddInteger = fabs(b - (2.0f * trunc(0.5 * b))) == 1.0;
  if (a == 0.0) {
    t = bIsOddInteger ? a : 0.0;
    if (b < 0.0) {
      t = 1.0 / t;
    }
    return t;
  }
  if (a == -__longlong_as_double(0x7ff0000000000000ULL)) {
    t = (b < 0.0) ? -1.0/a : -a;
    if (bIsOddInteger) {
      t = __longlong_as_double(__double_as_longlong(t)^0x8000000000000000ULL);
    }
    return t;
  }
  if ((a < 0.0) && (b != trunc(b))) {
    return __longlong_as_double(0xfff8000000000000ULL);
  }
  t = fabs(a);
  t = __internal_accurate_pow(t, b);
  if ((a < 0.0) && bIsOddInteger) {
    t = __longlong_as_double(__double_as_longlong(t) ^ 0x8000000000000000ULL);
  }
  return t;
}

static __inline__ __attribute__((always_inline)) double erf(double a)
{
  double t, r, q;

  t = fabs(a);
  if (t >= 1.0) {
    r = -1.28836351230756500E-019;
    r = __fma_rn (r, t, 1.30597472161093370E-017);
    r = __fma_rn (r, t, -6.33924401259620500E-016);
    r = __fma_rn (r, t, 1.96231865908940140E-014);
    r = __fma_rn (r, t, -4.35272243559990750E-013);
    r = __fma_rn (r, t, 7.37083927929352150E-012);
    r = __fma_rn (r, t, -9.91402142550461630E-011);
    r = __fma_rn (r, t, 1.08817017167760820E-009);
    r = __fma_rn (r, t, -9.93918713097634620E-009);
    r = __fma_rn (r, t, 7.66739923255145500E-008);
    r = __fma_rn (r, t, -5.05440278302806720E-007);
    r = __fma_rn (r, t, 2.87474157099000620E-006);
    r = __fma_rn (r, t, -1.42246725399722510E-005);
    r = __fma_rn (r, t, 6.16994555079419460E-005);
    r = __fma_rn (r, t, -2.36305221938908790E-004);
    r = __fma_rn (r, t, 8.05032844055371070E-004);
    r = __fma_rn (r, t, -2.45833366629108140E-003);
    r = __fma_rn (r, t, 6.78340988296706120E-003);
    r = __fma_rn (r, t, -1.70509103597554640E-002);
    r = __fma_rn (r, t, 3.93322852515666300E-002);
    r = __fma_rn (r, t, -8.37271292613764040E-002);
    r = __fma_rn (r, t, 1.64870423707623280E-001);
    r = __fma_rn (r, t, -2.99729521787681470E-001);
    r = __fma_rn (r, t, 4.99394435612628580E-001);
    r = __fma_rn (r, t, -7.52014596480123030E-001);
    r = __fma_rn (r, t, 9.99933138314926250E-001);
    r = __fma_rn (r, t, -1.12836725321102670E+000);
    r = __fma_rn (r, t, 9.99998988715182450E-001);
    q = __internal_exp_kernel(-t * t, 0);
    r = __fma_rn (r, -q, 1.0);
    if (t >= 6.5) {
      r = 1.0;
    }
    a = __internal_copysign_pos(r, a);
  } else {
    q = a * a;
    r = -7.77946848895991420E-010;
    r = __fma_rn (r, q, 1.37109803980285950E-008);
    r = __fma_rn (r, q, -1.62063137584932240E-007);
    r = __fma_rn (r, q, 1.64471315712790040E-006);
    r = __fma_rn (r, q, -1.49247123020098620E-005);
    r = __fma_rn (r, q, 1.20552935769006260E-004);
    r = __fma_rn (r, q, -8.54832592931448980E-004);
    r = __fma_rn (r, q, 5.22397760611847340E-003);
    r = __fma_rn (r, q, -2.68661706431114690E-002);
    r = __fma_rn (r, q, 1.12837916709441850E-001);
    r = __fma_rn (r, q, -3.76126389031835210E-001);
    r = __fma_rn (r, q, 1.12837916709551260E+000);
    a = r * a;
  }
  return a;
}

static __inline__ __attribute__((always_inline)) double erfinv(double a)
{
  double fa, t;

  fa = fabs(a);
  if (fa >= 1.0) {
    t = __longlong_as_double(0xfff8000000000000ULL);
    if (fa == 1.0) {
      t = a * __longlong_as_double(0x7ff0000000000000ULL);
    }
  } else if (fa >= 0.9375) {




    double p, q;

    t = log1p(-fa);
    t = rsqrt(-t);
    p = 2.7834010353747001060e-3;
    p = __fma_rn (p, t, 8.6030097526280260580e-1);
    p = __fma_rn (p, t, 2.1371214997265515515e+0);
    p = __fma_rn (p, t, 3.1598519601132090206e+0);
    p = __fma_rn (p, t, 3.5780402569085996758e+0);
    p = __fma_rn (p, t, 1.5335297523989890804e+0);
    p = __fma_rn (p, t, 3.4839207139657522572e-1);
    p = __fma_rn (p, t, 5.3644861147153648366e-2);
    p = __fma_rn (p, t, 4.3836709877126095665e-3);
    p = __fma_rn (p, t, 1.3858518113496718808e-4);
    p = __fma_rn (p, t, 1.1738352509991666680e-6);
    q = t+ 2.2859981272422905412e+0;
    q = __fma_rn (q, t, 4.3859045256449554654e+0);
    q = __fma_rn (q, t, 4.6632960348736635331e+0);
    q = __fma_rn (q, t, 3.9846608184671757296e+0);
    q = __fma_rn (q, t, 1.6068377709719017609e+0);
    q = __fma_rn (q, t, 3.5609087305900265560e-1);
    q = __fma_rn (q, t, 5.3963550303200816744e-2);
    q = __fma_rn (q, t, 4.3873424022706935023e-3);
    q = __fma_rn (q, t, 1.3858762165532246059e-4);
    q = __fma_rn (q, t, 1.1738313872397777529e-6);
    t = p / (q * t);
    if (a < 0.0) t = -t;
  } else if (fa >= 0.75) {




    double p, q;

    t = __fma_rn (a, a, -.87890625);
    p = .21489185007307062000e+0;
    p = __fma_rn (p, t, -.64200071507209448655e+1);
    p = __fma_rn (p, t, .29631331505876308123e+2);
    p = __fma_rn (p, t, -.47644367129787181803e+2);
    p = __fma_rn (p, t, .34810057749357500873e+2);
    p = __fma_rn (p, t, -.12954198980646771502e+2);
    p = __fma_rn (p, t, .25349389220714893917e+1);
    p = __fma_rn (p, t, -.24758242362823355486e+0);
    p = __fma_rn (p, t, .94897362808681080020e-2);
    q = t -.12831383833953226499e+2;
    q = __fma_rn (q, t, .41409991778428888716e+2);
    q = __fma_rn (q, t, -.53715373448862143349e+2);
    q = __fma_rn (q, t, .33880176779595142685e+2);
    q = __fma_rn (q, t, -.11315360624238054876e+2);
    q = __fma_rn (q, t, .20369295047216351160e+1);
    q = __fma_rn (q, t, -.18611650627372178511e+0);
    q = __fma_rn (q, t, .67544512778850945940e-2);
    p = p / q;
    t = a * p;
  } else {




    double p, q;

    t = __fma_rn (a, a, -.5625);
    p = -.23886240104308755900e+2;
    p = __fma_rn (p, t, .45560204272689128170e+3);
    p = __fma_rn (p, t, -.22977467176607144887e+4);
    p = __fma_rn (p, t, .46631433533434331287e+4);
    p = __fma_rn (p, t, -.43799652308386926161e+4);
    p = __fma_rn (p, t, .19007153590528134753e+4);
    p = __fma_rn (p, t, -.30786872642313695280e+3);
    q = t -.83288327901936570000e+2;
    q = __fma_rn (q, t, .92741319160935318800e+3);
    q = __fma_rn (q, t, -.35088976383877264098e+4);
    q = __fma_rn (q, t, .59039348134843665626e+4);
    q = __fma_rn (q, t, -.48481635430048872102e+4);
    q = __fma_rn (q, t, .18997769186453057810e+4);
    q = __fma_rn (q, t, -.28386514725366621129e+3);
    p = p / q;
    t = a * p;
  }
  return t;
}

static __inline__ __attribute__((always_inline)) double erfcinv(double a)
{
  double t;
  if (a <= 0.0) {
    t = __longlong_as_double(0xfff8000000000000ULL);
    if (a == 0.0) {
      t = (1.0 - a) * __longlong_as_double(0x7ff0000000000000ULL);
    }
  }
  else if (a >= 0.0625) {
    t = erfinv (1.0 - a);
  }
  else if (a >= 1e-100) {




    double p, q;
    t = log(a);
    t = rsqrt(-t);
    p = 2.7834010353747001060e-3;
    p = __fma_rn (p, t, 8.6030097526280260580e-1);
    p = __fma_rn (p, t, 2.1371214997265515515e+0);
    p = __fma_rn (p, t, 3.1598519601132090206e+0);
    p = __fma_rn (p, t, 3.5780402569085996758e+0);
    p = __fma_rn (p, t, 1.5335297523989890804e+0);
    p = __fma_rn (p, t, 3.4839207139657522572e-1);
    p = __fma_rn (p, t, 5.3644861147153648366e-2);
    p = __fma_rn (p, t, 4.3836709877126095665e-3);
    p = __fma_rn (p, t, 1.3858518113496718808e-4);
    p = __fma_rn (p, t, 1.1738352509991666680e-6);
    q = t+ 2.2859981272422905412e+0;
    q = __fma_rn (q, t, 4.3859045256449554654e+0);
    q = __fma_rn (q, t, 4.6632960348736635331e+0);
    q = __fma_rn (q, t, 3.9846608184671757296e+0);
    q = __fma_rn (q, t, 1.6068377709719017609e+0);
    q = __fma_rn (q, t, 3.5609087305900265560e-1);
    q = __fma_rn (q, t, 5.3963550303200816744e-2);
    q = __fma_rn (q, t, 4.3873424022706935023e-3);
    q = __fma_rn (q, t, 1.3858762165532246059e-4);
    q = __fma_rn (q, t, 1.1738313872397777529e-6);
    t = p / (q * t);
  }
  else {




    double p, q;
    t = log(a);
    t = rsqrt(-t);
    p = 6.9952990607058154858e-1;
    p = __fma_rn (p, t, 1.9507620287580568829e+0);
    p = __fma_rn (p, t, 8.2810030904462690216e-1);
    p = __fma_rn (p, t, 1.1279046353630280005e-1);
    p = __fma_rn (p, t, 6.0537914739162189689e-3);
    p = __fma_rn (p, t, 1.3714329569665128933e-4);
    p = __fma_rn (p, t, 1.2964481560643197452e-6);
    p = __fma_rn (p, t, 4.6156006321345332510e-9);
    p = __fma_rn (p, t, 4.5344689563209398450e-12);
    q = t+ 1.5771922386662040546e+0;
    q = __fma_rn (q, t, 2.1238242087454993542e+0);
    q = __fma_rn (q, t, 8.4001814918178042919e-1);
    q = __fma_rn (q, t, 1.1311889334355782065e-1);
    q = __fma_rn (q, t, 6.0574830550097140404e-3);
    q = __fma_rn (q, t, 1.3715891988350205065e-4);
    q = __fma_rn (q, t, 1.2964671850944981713e-6);
    q = __fma_rn (q, t, 4.6156017600933592558e-9);
    q = __fma_rn (q, t, 4.5344687377088206783e-12);
    t = p / (q * t);
  }
  return t;
}

static __inline__ __attribute__((always_inline)) double erfc(double a)
{
# 1600 "/usr/local/cuda/include/math_functions_dbl_ptx3.h" 3
  double x, t1, t2, t3, t4;
  x = fabs(a);


  t1 = x - 4.0;
  t2 = x + 4.0;
  t2 = 1.0 / t2;
  t3 = t1 * t2;
  t1 = __fma_rn (-4.0, t3 + 1.0, x);
  t1 = __fma_rn (-t3, x, t1);
  t2 = __fma_rn (t2, t1, t3);

  t1 = -3.5602694826817400E-010;
  t1 = __fma_rn (t1, t2, -9.7239122591447274E-009);
  t1 = __fma_rn (t1, t2, -8.9350224851649119E-009);
  t1 = __fma_rn (t1, t2, 1.0404430921625484E-007);
  t1 = __fma_rn (t1, t2, 5.8806698585341259E-008);
  t1 = __fma_rn (t1, t2, -8.2147414929116908E-007);
  t1 = __fma_rn (t1, t2, 3.0956409853306241E-007);
  t1 = __fma_rn (t1, t2, 5.7087871844325649E-006);
  t1 = __fma_rn (t1, t2, -1.1231787437600085E-005);
  t1 = __fma_rn (t1, t2, -2.4399558857200190E-005);
  t1 = __fma_rn (t1, t2, 1.5062557169571788E-004);
  t1 = __fma_rn (t1, t2, -1.9925637684786154E-004);
  t1 = __fma_rn (t1, t2, -7.5777429182785833E-004);
  t1 = __fma_rn (t1, t2, 5.0319698792599572E-003);
  t1 = __fma_rn (t1, t2, -1.6197733895953217E-002);
  t1 = __fma_rn (t1, t2, 3.7167515553018733E-002);
  t1 = __fma_rn (t1, t2, -6.6330365827532434E-002);
  t1 = __fma_rn (t1, t2, 9.3732834997115544E-002);
  t1 = __fma_rn (t1, t2, -1.0103906603555676E-001);
  t1 = __fma_rn (t1, t2, 6.8097054254735140E-002);
  t1 = __fma_rn (t1, t2, 1.5379652102605428E-002);
  t1 = __fma_rn (t1, t2, -1.3962111684056291E-001);
  t1 = __fma_rn (t1, t2, 1.2329951186255526E+000);

  t2 = __fma_rn (2.0, x, 1.0);
  t2 = 1.0 / t2;
  t3 = t1 * t2;
  t4 = __fma_rn (x, -2.0*t3, t1);
  t4 = t4 - t3;
  t1 = __fma_rn (t4, t2, t3);

  t2 = -x * x;
  t3 = __internal_exp_kernel (t2, 0);
  t2 = __fma_rn (-x, x, -t2);
  t2 = __fma_rn (t3, t2, t3);
  t1 = t1 * t2;
  if (x > 27.3) t1 = 0.0;
  return (__double2hiint(a) < 0) ? (2.0 - t1) : t1;
}


static __inline__ __attribute__((always_inline)) double __internal_tgamma_kernel(double a)
{
  double t;
  t = -4.42689340712524750E-010;
  t = __fma_rn (t, a, -2.02665918466589540E-007);
  t = __fma_rn (t, a, 1.13812117211195270E-006);
  t = __fma_rn (t, a, -1.25077348166307480E-006);
  t = __fma_rn (t, a, -2.01365017404087710E-005);
  t = __fma_rn (t, a, 1.28050126073544860E-004);
  t = __fma_rn (t, a, -2.15241408115274180E-004);
  t = __fma_rn (t, a, -1.16516754597046040E-003);
  t = __fma_rn (t, a, 7.21894322484663810E-003);
  t = __fma_rn (t, a, -9.62197153268626320E-003);
  t = __fma_rn (t, a, -4.21977345547223940E-002);
  t = __fma_rn (t, a, 1.66538611382503560E-001);
  t = __fma_rn (t, a, -4.20026350341054440E-002);
  t = __fma_rn (t, a, -6.55878071520257120E-001);
  t = __fma_rn (t, a, 5.77215664901532870E-001);
  t = __fma_rn (t, a, 1.00000000000000000E+000);
  return t;
}


static __inline__ __attribute__((always_inline)) double __internal_stirling_poly(double a)
{
  double x = __internal_fast_rcp(a);
  double z = 0.0;
  z = __fma_rn (z, x, 8.3949872067208726e-004);
  z = __fma_rn (z, x, -5.1717909082605919e-005);
  z = __fma_rn (z, x, -5.9216643735369393e-004);
  z = __fma_rn (z, x, 6.9728137583658571e-005);
  z = __fma_rn (z, x, 7.8403922172006662e-004);
  z = __fma_rn (z, x, -2.2947209362139917e-004);
  z = __fma_rn (z, x, -2.6813271604938273e-003);
  z = __fma_rn (z, x, 3.4722222222222220e-003);
  z = __fma_rn (z, x, 8.3333333333333329e-002);
  z = __fma_rn (z, x, 1.0000000000000000e+000);
  return z;
}

static __inline__ __attribute__((always_inline)) double __internal_tgamma_stirling(double a)
{
  if (a < 1.7162437695630274e+002) {
    double t_hi, t_lo, e;

    double2 loga, prod;
    double z = __internal_stirling_poly (a);
    double b = a - 0.5;


    loga = __internal_log_ext_prec(a);


    t_hi = loga.y * b;
    t_lo = __fma_rn (loga.y, b, -t_hi);
    t_lo = __fma_rn (loga.x, b, t_lo);
    prod.y = e = t_hi + t_lo;
    prod.x = (t_hi - e) + t_lo;


    loga.y = -a;
    loga.x = 0.0;
    prod = __internal_ddadd_xgty (prod, loga);


    a = exp(prod.y);

    if (!__isinf(a)) {



      a = __fma_rn (a, prod.x, a);
    }
    a = __fma_rn (a, 2.5066282746310007e+0, a * (-1.8328579980459167e-16));
    return a * z;
  } else {
    return __longlong_as_double(0x7ff0000000000000ULL);
  }
}

static __inline__ __attribute__((always_inline)) double tgamma(double a)
{
  double s, xx, x = a;
  if (__isnan(a)) {
    return a + a;
  }
  if (fabs(x) < 15.0) {




    if (x >= 0.0) {
      s = 1.0;
      xx = x;
      while (xx > 1.5) {
        s = __fma_rn(s, xx, -s);
        xx = xx - 1.0;
      }
      if (x >= 0.5) {
        xx = xx - 1.0;
      }
      xx = __internal_tgamma_kernel (xx);
      if (x < 0.5) {
        xx = xx * x;
      }
      s = s / xx;
    } else {
      xx = x;
      s = xx;
      if (x == trunc(x)) {
        return __longlong_as_double(0xfff8000000000000ULL);
      }
      while (xx < -0.5) {
        s = __fma_rn (s, xx, s);
        xx = xx + 1.0;
      }
      xx = __internal_tgamma_kernel (xx);
      s = s * xx;
      s = 1.0 / s;
    }
    return s;
  } else {
    if (x >= 0.0) {
      return __internal_tgamma_stirling (x);
    } else {
      double t;
      int quot;
      if (x == trunc(x)) {
        return __longlong_as_double(0xfff8000000000000ULL);
      }
      if (x < -185.0) {
        int negative;
        x = floor(x);
        negative = ((x - (2.0 * floor(0.5 * x))) == 1.0);
        return negative ? __longlong_as_double(0x8000000000000000ULL) : 0.0;
      }

      xx = rint (__internal_twice(x));
      quot = (int)xx;
      xx = __fma_rn (-0.5, xx, x);
      xx = xx * 3.1415926535897931e+0;
      if (quot & 1) {
        xx = __internal_cos_kerneld (xx);
      } else {
        xx = __internal_sin_kerneld (xx);
      }
      if (quot & 2) {
        xx = -xx;
      }
      x = fabs (x);
      s = exp (-x);
      t = x - 0.5;
      if (x > 140.0) t = __internal_half(t);
      t = pow (x, t);
      if (x > 140.0) s = s * t;
      s = s * __internal_stirling_poly (x);
      s = s * x;
      s = s * xx;
      s = 1.0 / s;
      s = __fma_rn (s, 1.2533141373155003e+0, (-9.1642899902295834e-17) * s);
      s = s / t;
      return s;
    }
  }
}

static __inline__ __attribute__((always_inline)) double __internal_lgamma_pos(double a)
{
  double sum;
  double s, t;

  if (a == __longlong_as_double(0x7ff0000000000000ULL)) {
    return a;
  }
  if (a >= 3.0) {
    if (a >= 8.0) {



      s = __internal_fast_rcp(a);
      t = s * s;
      sum = -0.1633436431e-2;
      sum = __fma_rn (sum, t, 0.83645878922e-3);
      sum = __fma_rn (sum, t, -0.5951896861197e-3);
      sum = __fma_rn (sum, t, 0.793650576493454e-3);
      sum = __fma_rn (sum, t, -0.277777777735865004e-2);
      sum = __fma_rn (sum, t, 0.833333333333331018375e-1);
      sum = __fma_rn (sum, s, 0.918938533204672);
      s = __internal_half(log (a));
      t = a - 0.5;
      s = s * t;
      t = s - a;
      s = s + sum;
      t = t + s;
      return t;
    } else {
      a = a - 3.0;
      s = -4.02412642744125560E+003;
      s = __fma_rn (s, a, -2.97693796998962000E+005);
      s = __fma_rn (s, a, -6.38367087682528790E+006);
      s = __fma_rn (s, a, -5.57807214576539320E+007);
      s = __fma_rn (s, a, -2.24585140671479230E+008);
      s = __fma_rn (s, a, -4.70690608529125090E+008);
      s = __fma_rn (s, a, -7.62587065363263010E+008);
      s = __fma_rn (s, a, -9.71405112477113250E+008);
      t = a -1.02277248359873170E+003;
      t = __fma_rn (t, a, -1.34815350617954480E+005);
      t = __fma_rn (t, a, -4.64321188814343610E+006);
      t = __fma_rn (t, a, -6.48011106025542540E+007);
      t = __fma_rn (t, a, -4.19763847787431360E+008);
      t = __fma_rn (t, a, -1.25629926018000720E+009);
      t = __fma_rn (t, a, -1.40144133846491690E+009);
      t = s / t;
      t = t + a;
      return t;
    }
  } else if (a >= 1.5) {
    a = a - 2.0;
    t = 9.84839283076310610E-009;
    t = __fma_rn (t, a, -6.69743850483466500E-008);
    t = __fma_rn (t, a, 2.16565148880011450E-007);
    t = __fma_rn (t, a, -4.86170275781575260E-007);
    t = __fma_rn (t, a, 9.77962097401114400E-007);
    t = __fma_rn (t, a, -2.03041287574791810E-006);
    t = __fma_rn (t, a, 4.36119725805364580E-006);
    t = __fma_rn (t, a, -9.43829310866446590E-006);
    t = __fma_rn (t, a, 2.05106878496644220E-005);
    t = __fma_rn (t, a, -4.49271383742108440E-005);
    t = __fma_rn (t, a, 9.94570466342226000E-005);
    t = __fma_rn (t, a, -2.23154589559238440E-004);
    t = __fma_rn (t, a, 5.09669559149637430E-004);
    t = __fma_rn (t, a, -1.19275392649162300E-003);
    t = __fma_rn (t, a, 2.89051032936815490E-003);
    t = __fma_rn (t, a, -7.38555102806811700E-003);
    t = __fma_rn (t, a, 2.05808084278121250E-002);
    t = __fma_rn (t, a, -6.73523010532073720E-002);
    t = __fma_rn (t, a, 3.22467033424113040E-001);
    t = __fma_rn (t, a, 4.22784335098467190E-001);
    t = t * a;
    return t;
  } else if (a >= 0.7) {
    a = 1.0 - a;
    t = 1.17786911519331130E-002;
    t = __fma_rn (t, a, 3.89046747413522300E-002);
    t = __fma_rn (t, a, 5.90045711362049900E-002);
    t = __fma_rn (t, a, 6.02143305254344420E-002);
    t = __fma_rn (t, a, 5.61652708964839180E-002);
    t = __fma_rn (t, a, 5.75052755193461370E-002);
    t = __fma_rn (t, a, 6.21061973447320710E-002);
    t = __fma_rn (t, a, 6.67614724532521880E-002);
    t = __fma_rn (t, a, 7.14856037245421020E-002);
    t = __fma_rn (t, a, 7.69311251313347100E-002);
    t = __fma_rn (t, a, 8.33503129714946310E-002);
    t = __fma_rn (t, a, 9.09538288991182800E-002);
    t = __fma_rn (t, a, 1.00099591546322310E-001);
    t = __fma_rn (t, a, 1.11334278141734510E-001);
    t = __fma_rn (t, a, 1.25509666613462880E-001);
    t = __fma_rn (t, a, 1.44049896457704160E-001);
    t = __fma_rn (t, a, 1.69557177031481600E-001);
    t = __fma_rn (t, a, 2.07385551032182120E-001);
    t = __fma_rn (t, a, 2.70580808427600350E-001);
    t = __fma_rn (t, a, 4.00685634386517050E-001);
    t = __fma_rn (t, a, 8.22467033424113540E-001);
    t = __fma_rn (t, a, 5.77215664901532870E-001);
    t = t * a;
    return t;
  } else {
    t= -9.04051686831357990E-008;
    t = __fma_rn (t, a, 7.06814224969349250E-007);
    t = __fma_rn (t, a, -3.80702154637902830E-007);
    t = __fma_rn (t, a, -2.12880892189316100E-005);
    t = __fma_rn (t, a, 1.29108470307156190E-004);
    t = __fma_rn (t, a, -2.15932815215386580E-004);
    t = __fma_rn (t, a, -1.16484324388538480E-003);
    t = __fma_rn (t, a, 7.21883433044470670E-003);
    t = __fma_rn (t, a, -9.62194579514229560E-003);
    t = __fma_rn (t, a, -4.21977386992884450E-002);
    t = __fma_rn (t, a, 1.66538611813682460E-001);
    t = __fma_rn (t, a, -4.20026350606819980E-002);
    t = __fma_rn (t, a, -6.55878071519427450E-001);
    t = __fma_rn (t, a, 5.77215664901523870E-001);
    t = t * a;
    t = __fma_rn (t, a, a);
    return -log (t);
  }
}

static __inline__ __attribute__((always_inline)) double lgamma(double a)
{
  double t;
  double i;
  long long int quot;
  if (__isnan(a)) {
    return a + a;
  }
  t = __internal_lgamma_pos(fabs(a));
  if (a >= 0.0) return t;
  a = fabs(a);
  i = trunc(a);
  if (a == i) return __longlong_as_double(0x7ff0000000000000ULL);
  if (a < 1e-19) return -log(a);
  i = rint (2.0 * a);
  quot = (long long int)i;
  i = __fma_rn (-0.5, i, a);
  i = i * 3.1415926535897931e+0;
  if (quot & 1) {
    i = __internal_cos_kerneld(i);
  } else {
    i = __internal_sin_kerneld(i);
  }
  i = fabs(i);
  t = log(3.1415926535897931e+0 / (i * a)) - t;
  return t;
}

static __inline__ __attribute__((always_inline)) double ldexp(double a, int b)
{
  double fa = fabs (a);
  if ((fa == 0.0) || (fa == __longlong_as_double(0x7ff0000000000000ULL)) || (!(fa <= __longlong_as_double(0x7ff0000000000000ULL)))) {
    return a + a;
  }
  if (b == 0) {
    return a;
  }
  if (b > 2200) b = 2200;
  if (b < -2200) b = -2200;
  if (abs (b) < 1022) {
    return a * __internal_exp2i_kernel(b);
  }
  if (abs (b) < 2044) {
    int bhalf = b / 2;
    return a * __internal_exp2i_kernel (bhalf) *
           __internal_exp2i_kernel (b - bhalf);
  } else {
    int bquarter = b / 4;
    double t = __internal_exp2i_kernel(bquarter);
    return a * t * t * t *__internal_exp2i_kernel (b - 3 * bquarter);
  }
}

static __inline__ __attribute__((always_inline)) double scalbn(double a, int b)
{

  return ldexp(a, b);
}

static __inline__ __attribute__((always_inline)) double scalbln(double a, long int b)
{


  if (b < -2147483648L) b = -2147483648L;
  if (b > 2147483647L) b = 2147483647L;

  return scalbn(a, (int)b);
}

static __inline__ __attribute__((always_inline)) double frexp(double a, int *b)
{
  double fa = fabs(a);
  unsigned int expo;
  unsigned int denorm;

  if (fa < 2.22507385850720140e-308) {
    a *= 18014398509481984.0;
    denorm = 54;
  } else {
    denorm = 0;
  }
  expo = (__double2hiint(a) >> 20) & 0x7ff;
  if ((fa == 0.0) || (expo == 0x7ff)) {
    expo = 0;
    a = a + a;
  } else {
    expo = expo - denorm - 1022;
    a = __longlong_as_double((__double_as_longlong(a) & 0x800fffffffffffffULL)|
                              0x3fe0000000000000ULL);
  }
  *b = expo;
  return a;
}

static __inline__ __attribute__((always_inline)) double modf(double a, double *b)
{
  double t;
  if (__finite(a)) {
    t = trunc(a);
    *b = t;
    t = a - t;
    return __internal_copysign_pos(t, a);
  } else if (__isinf(a)) {
    t = 0.0;
    *b = a;
    return __internal_copysign_pos(t, a);
  } else {
    *b = a + a;
    return a + a;
  }
}

static __inline__ __attribute__((always_inline)) double fmod(double a, double b)
{
  double orig_a = a;
  double orig_b = b;
  a = fabs(a);
  b = fabs(b);
  if (!((a <= __longlong_as_double(0x7ff0000000000000ULL)) && (b <= __longlong_as_double(0x7ff0000000000000ULL)))) {
      return orig_a + orig_b;
  }
  if (a == __longlong_as_double(0x7ff0000000000000ULL) || b == 0.0) {
    return __longlong_as_double(0xfff8000000000000ULL);
  } else if (a >= b) {
    int bhi = __double2hiint(b);
    int blo = __double2loint(b);
    int ahi = __double2hiint(a);
    double scaled_b = 0.0;
    if (b < 2.22507385850720140e-308) {
      double t = b;
      while ((t < a) && (t < 2.22507385850720140e-308)) {
        t = t + t;
      }
      bhi = __double2hiint(t);
      blo = __double2loint(t);
      scaled_b = t;
    }
    if (a >= 2.22507385850720140e-308) {
      scaled_b = __hiloint2double ((bhi & 0x000fffff)|(ahi & 0x7ff00000), blo);
    }
    if (scaled_b > a) {
      scaled_b *= 0.5;
    }
    while (scaled_b >= b) {
      if (a >= scaled_b) {
        a -= scaled_b;
      }
      scaled_b *= 0.5;
    }
    return __internal_copysign_pos(a, orig_a);
  } else {
    return orig_a;
  }
}

static __inline__ __attribute__((always_inline)) double remainder(double a, double b)
{
  double orig_a;
  double twoa = 0.0;
  unsigned int quot0 = 0;
  int bhi;
  int blo;
  int ahi;
  if (__isnan(a) || __isnan(b)) {
    return a + b;
  }
  orig_a = a;
  a = fabs(a);
  b = fabs(b);
  if (a == __longlong_as_double(0x7ff0000000000000ULL) || b == 0.0) {
    return __longlong_as_double(0xfff8000000000000ULL);
  } else if (a >= b) {
    double scaled_b = 0.0;
    bhi = __double2hiint(b);
    blo = __double2loint(b);
    ahi = __double2hiint(a);
    if (b < 2.22507385850720140e-308) {
      double t = b;
      while ((t < a) && (t < 2.22507385850720140e-308)) {
        t = t + t;
      }
      bhi = __double2hiint(t);
      blo = __double2loint(t);
      scaled_b = t;
    }
    if (a >= 2.22507385850720140e-308) {
      scaled_b = __hiloint2double ((bhi & 0x000fffff)|(ahi & 0x7ff00000), blo);
    }
    if (scaled_b > a) {
      scaled_b *= 0.5;
    }
    while (scaled_b >= b) {
      quot0 = 0;
      if (a >= scaled_b) {
        a -= scaled_b;
        quot0 = 1;
      }
      scaled_b *= 0.5;
    }
  }

  twoa = a + a;
  if ((twoa > b) || ((twoa == b) && quot0)) {
    a -= b;
  }
  bhi = __double2hiint(a);
  blo = __double2loint(a);
  ahi = __double2hiint(orig_a);
  a = __hiloint2double((ahi & 0x80000000) ^ bhi, blo);
  return a;
}

static __inline__ __attribute__((always_inline)) double remquo(double a, double b, int *c)
{
  double orig_a;
  double twoa = 0.0;
  unsigned int quot = 0;
  unsigned int sign;
  int bhi;
  int blo;
  int ahi;
  if (__isnan(a) || __isnan(b)) {
    *c = quot;
    return a + b;
  }
  orig_a = a;
  sign = 0 - ((__double2hiint(a) ^ __double2hiint(b)) < 0);
  a = fabs(a);
  b = fabs(b);
  if (a == __longlong_as_double(0x7ff0000000000000ULL) || b == 0.0) {
    *c = quot;
    return __longlong_as_double(0xfff8000000000000ULL);
  } else if (a >= b) {
    double scaled_b = 0.0;
    bhi = __double2hiint(b);
    blo = __double2loint(b);
    ahi = __double2hiint(a);
    if (b < 2.22507385850720140e-308) {
      double t = b;
      while ((t < a) && (t < 2.22507385850720140e-308)) {
        t = t + t;
      }
      bhi = __double2hiint(t);
      blo = __double2loint(t);
      scaled_b = t;
    }
    if (a >= 2.22507385850720140e-308) {
      scaled_b = __hiloint2double ((bhi & 0x000fffff)|(ahi & 0x7ff00000), blo);
    }
    if (scaled_b > a) {
      scaled_b *= 0.5;
    }
    while (scaled_b >= b) {
      quot <<= 1;
      if (a >= scaled_b) {
        a -= scaled_b;
        quot += 1;
      }
      scaled_b *= 0.5;
    }
  }

  twoa = a + a;
  if ((twoa > b) || ((twoa == b) && (quot & 1))) {
    quot++;
    a -= b;
  }
  bhi = __double2hiint(a);
  blo = __double2loint(a);
  ahi = __double2hiint(orig_a);
  a = __hiloint2double((ahi & 0x80000000) ^ bhi, blo);
  quot = quot & (~((~0)<<3));
  quot = quot ^ sign;
  quot = quot - sign;
  *c = quot;
  return a;
}

static __inline__ __attribute__((always_inline)) double nextafter(double a, double b)
{
  unsigned long long int ia;
  unsigned long long int ib;
  ia = __double_as_longlong(a);
  ib = __double_as_longlong(b);
  if (__isnan(a) || __isnan(b)) return a + b;
  if (((ia | ib) << 1) == 0ULL) return b;
  if ((ia + ia) == 0ULL) {
    return __internal_copysign_pos(__longlong_as_double(0x0000000000000001ULL), b);
  }
  if ((a < b) && (a < 0.0)) ia--;
  if ((a < b) && (a > 0.0)) ia++;
  if ((a > b) && (a < 0.0)) ia++;
  if ((a > b) && (a > 0.0)) ia--;
  a = __longlong_as_double(ia);
  return a;
}

static __inline__ __attribute__((always_inline)) double nan(const char *tagp)
{
  unsigned long long int i;

  i = __internal_nan_kernel (tagp);
  i = (i & 0x000fffffffffffffULL) | 0x7ff8000000000000ULL;
  return __longlong_as_double(i);
}

static __inline__ __attribute__((always_inline)) double round(double a)
{
  double fa = fabs(a);
  if (fa >= 4503599627370496.0) {
    return a;
  } else {
    double u;
    u = trunc(fa + 0.5);
    if (fa < 0.5) u = 0;
    u = __internal_copysign_pos(u, a);
    return u;
  }
}

static __inline__ __attribute__((always_inline)) long long int llround(double a)
{
  return (long long int)round(a);
}

static __inline__ __attribute__((always_inline)) long int lround(double a)
{

  return (long int)llround(a);



}

static __inline__ __attribute__((always_inline)) double fdim(double a, double b)
{
  double t;
  t = a - b;
  if (a <= b) {
    t = 0.0;
  }
  return t;
}

static __inline__ __attribute__((always_inline)) int ilogb(double a)
{
  unsigned long long int i;
  unsigned int ihi;
  unsigned int ilo;
  if (__isnan(a)) return -((int)((unsigned int)-1 >> 1))-1;
  if (__isinf(a)) return ((int)((unsigned int)-1 >> 1));
  if (a == 0.0) return -((int)((unsigned int)-1 >> 1))-1;
  a = fabs(a);
  ilo = __double2loint(a);
  ihi = __double2hiint(a);
  i = ((unsigned long long int)ihi) << 32 | (unsigned long long int)ilo;
  if (a >= 2.22507385850720140e-308) {
    return ((int)((ihi >> 20) & 0x7ff)) - 1023;
  } else {
    return -1011 - __clzll(i);
  }
}

static __inline__ __attribute__((always_inline)) double logb(double a)
{
  unsigned long long int i;
  unsigned int ihi;
  unsigned int ilo;
  if (__isnan(a)) return a + a;
  a = fabs(a);
  if (a == __longlong_as_double(0x7ff0000000000000ULL)) return a;
  if (a == 0.0) return -__longlong_as_double(0x7ff0000000000000ULL);
  ilo = __double2loint(a);
  ihi = __double2hiint(a);
  i = ((unsigned long long int)ihi) << 32 | (unsigned long long int)ilo;
  if (a >= 2.22507385850720140e-308) {
    return (double)((int)((ihi >> 20) & 0x7ff)) - 1023;
  } else {
    int expo = -1011 - __clzll(i);
    return (double)expo;
  }
}

static __inline__ __attribute__((always_inline)) double fma(double a, double b, double c)
{
  return __fma_rn(a, b, c);
}
# 5208 "/usr/local/cuda/include/math_functions.h" 2 3
# 148 "/usr/local/cuda/include/common_functions.h" 2
# 67 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu" 2
# 15 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
__attribute__((global)) __attribute__((__used__)) void _Z16kernel_Mult_Wi_uPfiS_iS_S_iiii(
# 15 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
float *out,
# 15 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
int outStride,
# 15 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
float *d_u_,
# 15 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
int u_Stride,
# 15 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
float *horizontal_flow,
# 15 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
float *vertical_flow,
# 15 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
int velStride,
# 16 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
int imgNo,
# 16 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
int width,
# 16 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
int height){
# 16 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
{
# 17 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
{
# 20 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
 unsigned __cuda_local_var_42934_18_non_const_x;
# 21 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
 unsigned __cuda_local_var_42935_18_non_const_y;
# 23 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
 float __cuda_local_var_42937_11_non_const_x_;
# 24 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
 float __cuda_local_var_42938_11_non_const_y_;
# 29 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
 int __cuda_local_var_42943_9_non_const_flr_x;
# 30 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
 int __cuda_local_var_42944_9_non_const_flr_y;
# 32 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
 float __cuda_local_var_42946_11_non_const_x_ratio;
# 33 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
 float __cuda_local_var_42947_11_non_const_y_ratio;
# 35 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
 float __cuda_local_var_42949_11_non_const_val;
# 20 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
__cuda_local_var_42934_18_non_const_x = (((blockIdx.x) * (blockDim.x)) + (threadIdx.x));
# 21 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
__cuda_local_var_42935_18_non_const_y = (((blockIdx.y) * (blockDim.y)) + (threadIdx.y));
# 23 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
__cuda_local_var_42937_11_non_const_x_ = ((float)__cuda_local_var_42934_18_non_const_x);
# 24 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
__cuda_local_var_42938_11_non_const_y_ = ((float)__cuda_local_var_42935_18_non_const_y);
# 26 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
__cuda_local_var_42937_11_non_const_x_ = ((((float)(width - 1)) < (((0.0F) > (__cuda_local_var_42937_11_non_const_x_ + (horizontal_flow[((__cuda_local_var_42935_18_non_const_y * ((unsigned)velStride)) + __cuda_local_var_42934_18_non_const_x)]))) ? (0.0F) : (__cuda_local_var_42937_11_non_const_x_ + (horizontal_flow[((__cuda_local_var_42935_18_non_const_y * ((unsigned)velStride)) + __cuda_local_var_42934_18_non_const_x)])))) ? ((float)(width - 1)) : (((0.0F) > (__cuda_local_var_42937_11_non_const_x_ + (horizontal_flow[((__cuda_local_var_42935_18_non_const_y * ((unsigned)velStride)) + __cuda_local_var_42934_18_non_const_x)]))) ? (0.0F) : (__cuda_local_var_42937_11_non_const_x_ + (horizontal_flow[((__cuda_local_var_42935_18_non_const_y * ((unsigned)velStride)) + __cuda_local_var_42934_18_non_const_x)]))));
# 27 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
__cuda_local_var_42938_11_non_const_y_ = ((((float)(height - 1)) < (((0.0F) > (__cuda_local_var_42938_11_non_const_y_ + (vertical_flow[((__cuda_local_var_42935_18_non_const_y * ((unsigned)velStride)) + __cuda_local_var_42934_18_non_const_x)]))) ? (0.0F) : (__cuda_local_var_42938_11_non_const_y_ + (vertical_flow[((__cuda_local_var_42935_18_non_const_y * ((unsigned)velStride)) + __cuda_local_var_42934_18_non_const_x)])))) ? ((float)(height - 1)) : (((0.0F) > (__cuda_local_var_42938_11_non_const_y_ + (vertical_flow[((__cuda_local_var_42935_18_non_const_y * ((unsigned)velStride)) + __cuda_local_var_42934_18_non_const_x)]))) ? (0.0F) : (__cuda_local_var_42938_11_non_const_y_ + (vertical_flow[((__cuda_local_var_42935_18_non_const_y * ((unsigned)velStride)) + __cuda_local_var_42934_18_non_const_x)]))));
# 29 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
__cuda_local_var_42943_9_non_const_flr_x = ((int)(__float2int_rz(((float)(floorf(__cuda_local_var_42937_11_non_const_x_))))));
# 30 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
__cuda_local_var_42944_9_non_const_flr_y = ((int)(__float2int_rz(((float)(floorf(__cuda_local_var_42938_11_non_const_y_))))));
# 32 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
__cuda_local_var_42946_11_non_const_x_ratio = (__cuda_local_var_42937_11_non_const_x_ - ((float)__cuda_local_var_42943_9_non_const_flr_x));
# 33 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
__cuda_local_var_42947_11_non_const_y_ratio = (__cuda_local_var_42938_11_non_const_y_ - ((float)__cuda_local_var_42944_9_non_const_flr_y));
# 35 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
__cuda_local_var_42949_11_non_const_val = ((((1.0F) - __cuda_local_var_42946_11_non_const_x_ratio) * ((1.0F) - __cuda_local_var_42947_11_non_const_y_ratio)) * (d_u_[((__cuda_local_var_42944_9_non_const_flr_y * u_Stride) + __cuda_local_var_42943_9_non_const_flr_x)]));
# 37 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
if ((__cuda_local_var_42943_9_non_const_flr_x + 1) < width)
# 37 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
{
# 38 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
__cuda_local_var_42949_11_non_const_val += ((__cuda_local_var_42946_11_non_const_x_ratio * ((1.0F) - __cuda_local_var_42947_11_non_const_y_ratio)) * (d_u_[((__cuda_local_var_42944_9_non_const_flr_y * u_Stride) + (__cuda_local_var_42943_9_non_const_flr_x + 1))]));
# 38 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
}
# 40 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
if ((__cuda_local_var_42944_9_non_const_flr_y + 1) < height)
# 41 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
{
# 42 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
__cuda_local_var_42949_11_non_const_val += ((((1.0F) - __cuda_local_var_42946_11_non_const_x_ratio) * __cuda_local_var_42947_11_non_const_y_ratio) * (d_u_[(((__cuda_local_var_42944_9_non_const_flr_y + 1) * u_Stride) + __cuda_local_var_42943_9_non_const_flr_x)]));
# 44 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
if ((__cuda_local_var_42943_9_non_const_flr_x + 1) < width)
# 44 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
{
# 45 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
__cuda_local_var_42949_11_non_const_val += ((__cuda_local_var_42946_11_non_const_x_ratio * __cuda_local_var_42947_11_non_const_y_ratio) * (d_u_[(((__cuda_local_var_42944_9_non_const_flr_y + 1) * u_Stride) + (__cuda_local_var_42943_9_non_const_flr_x + 1))]));
# 45 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
}
# 46 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
}
# 48 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
(out[((__cuda_local_var_42935_18_non_const_y * ((unsigned)outStride)) + __cuda_local_var_42934_18_non_const_x)]) = __cuda_local_var_42949_11_non_const_val;
# 49 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
}
# 49 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
}}
# 65 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
__attribute__((global)) __attribute__((__used__)) void _Z11kernel_blurPfiS_iS_iii(
# 65 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
float *out,
# 65 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
int outStride,
# 65 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
float *in,
# 65 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
int inStride,
# 65 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
float *blur_kernel,
# 65 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
int blurWidth,
# 65 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
int width,
# 65 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
int height){
# 65 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
{
# 66 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
{
# 68 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
 unsigned __cuda_local_var_42982_18_non_const_x;
# 69 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
 unsigned __cuda_local_var_42983_18_non_const_y;
# 71 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
 float __cuda_local_var_42985_11_non_const_val;
# 68 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
__cuda_local_var_42982_18_non_const_x = (((blockIdx.x) * (blockDim.x)) + (threadIdx.x));
# 69 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
__cuda_local_var_42983_18_non_const_y = (((blockIdx.y) * (blockDim.y)) + (threadIdx.y));
# 71 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
__cuda_local_var_42985_11_non_const_val = (0.0F);
# 71 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
{
# 75 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
 int i;
# 75 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
i = ((-blurWidth) / 2);
# 75 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
for (; (i <= (blurWidth / 2)); i++)
# 76 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
{
# 76 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
{
# 77 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
 int j;
# 77 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
j = ((-blurWidth) / 2);
# 77 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
for (; (j <= (blurWidth / 2)); j++)
# 78 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
{
# 79 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
if (((__cuda_local_var_42983_18_non_const_y + ((unsigned)i)) < ((unsigned)height)) && ((__cuda_local_var_42982_18_non_const_x + ((unsigned)j)) < ((unsigned)width)))
# 80 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
{
# 81 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
__cuda_local_var_42985_11_non_const_val += ((blur_kernel[((i * blurWidth) + j)]) * (in[(((__cuda_local_var_42983_18_non_const_y + ((unsigned)i)) * ((unsigned)inStride)) + (__cuda_local_var_42982_18_non_const_x + ((unsigned)j)))]));
# 82 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
}
# 83 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
}
# 83 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
}
# 84 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
}
# 84 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
}
# 86 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
(out[((__cuda_local_var_42983_18_non_const_y * ((unsigned)outStride)) + __cuda_local_var_42982_18_non_const_x)]) = __cuda_local_var_42985_11_non_const_val;
# 88 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
}
# 88 "/home/ankur/workspace/code/Superresolution/./src/kernels/aux_updates.cu"
}}
