module Ijs.Array

import Ijs.Types

public export interface IsPtr n => Arrayish n where

public export
data Array t = UnsafeMkArray AnyPtr

public export
data Collection t = UnsafeMkCollection AnyPtr

export IsPtr (Array t)      where toAnyPtr (UnsafeMkArray a) = a
export IsPtr (Collection t) where toAnyPtr (UnsafeMkCollection a) = a

export Arrayish (Array t)      where
export Arrayish (Collection t) where
