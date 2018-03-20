{-# LANGUAGE ForeignFunctionInterface #-}
module Torch.FFI.THC.Float.TensorTopK where

import Foreign
import Foreign.C.Types
import Torch.Types.THC
import Data.Word
import Data.Int

-- | c_topk :  state topK indices input k dim dir sorted -> void
foreign import ccall "THCTensorTopK.h THCFloatTensor_topk"
  c_topk :: Ptr C'THCState -> Ptr C'THCudaFloatTensor -> Ptr C'THCudaLongTensor -> Ptr C'THCudaFloatTensor -> CLLong -> CInt -> CInt -> CInt -> IO ()

-- | p_topk : Pointer to function : state topK indices input k dim dir sorted -> void
foreign import ccall "THCTensorTopK.h &THCFloatTensor_topk"
  p_topk :: FunPtr (Ptr C'THCState -> Ptr C'THCudaFloatTensor -> Ptr C'THCudaLongTensor -> Ptr C'THCudaFloatTensor -> CLLong -> CInt -> CInt -> CInt -> IO ())