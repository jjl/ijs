module Ijs.DOM.DOMRect

import Ijs.DOM
import Ijs.Object
import Ijs.Types

-- all soundness starts with lies.
%foreign "javascript:lambda: x => x"
prim__lies : from -> to

public export
interface IsPtr d => IsDOMRectReadOnly d where

public export
data DOMRectReadOnly = UnsafeMkDOMRectReadOnly AnyPtr
public export
data DOMRect = UnsafeMkDOMRect AnyPtr

export IsPtr DOMRectReadOnly where toAnyPtr (UnsafeMkDOMRectReadOnly p) = p
export IsPtr DOMRect where toAnyPtr (UnsafeMkDOMRect p) = p

export IsDOMRectReadOnly DOMRectReadOnly where
export IsDOMRectReadOnly DOMRect where

-- todo: setters for DOMRect only

export
(.x) : HasIO io => IsDOMRectReadOnly d => d -> io Double
(.x) e = prim__lies <$> rawGetProperty "x" e

export
(.y) : HasIO io => IsDOMRectReadOnly d => d -> io Double
(.y) e = prim__lies <$> rawGetProperty "y" e

export
(.width) : HasIO io => IsDOMRectReadOnly d => d -> io Double
(.width) e = prim__lies <$> rawGetProperty "width" e

export
(.height) : HasIO io => IsDOMRectReadOnly d => d -> io Double
(.height) e = prim__lies <$> rawGetProperty "height" e

export
(.top) : HasIO io => IsDOMRectReadOnly d => d -> io Double
(.top) e = prim__lies <$> rawGetProperty "top" e

export
(.right) : HasIO io => IsDOMRectReadOnly d => d -> io Double
(.right) e = prim__lies <$> rawGetProperty "right" e

export
(.bottom) : HasIO io => IsDOMRectReadOnly d => d -> io Double
(.bottom) e = prim__lies <$> rawGetProperty "bottom" e

export
(.left) : HasIO io => IsDOMRectReadOnly d => d -> io Double
(.left) e = prim__lies <$> rawGetProperty "left" e

export
(.setX) : HasIO io => DOMRect -> Double -> io ()
(.setX) e v = prim__lies <$> unsafeRawSetProperty "x" v e 

export
(.setY) : HasIO io => DOMRect -> Double -> io ()
(.setY) e v = prim__lies <$> unsafeRawSetProperty "y" v e

export
(.setWidth) : HasIO io => DOMRect -> Double -> io ()
(.setWidth) e v = prim__lies <$> unsafeRawSetProperty "width" v e

export
(.setHeight) : HasIO io => DOMRect -> Double -> io ()
(.setHeight) e v = prim__lies <$> unsafeRawSetProperty "height" v e

export
(.setTop) : HasIO io => DOMRect -> Double -> io ()
(.setTop) e v = prim__lies <$> unsafeRawSetProperty "top" v e

export
(.setRight) : HasIO io => DOMRect -> Double -> io ()
(.setRight) e v = prim__lies <$> unsafeRawSetProperty "right" v e

export
(.setBottom) : HasIO io => DOMRect -> Double -> io ()
(.setBottom) e v = prim__lies <$> unsafeRawSetProperty "bottom" v e

export
(.setLeft) : HasIO io => DOMRect -> Double -> io ()
(.setLeft) e v = prim__lies <$> unsafeRawSetProperty "left" v e
