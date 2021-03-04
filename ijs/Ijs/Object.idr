module Ijs.Object

import Ijs.Types

%foreign "browser:lambda: (prop, obj) => obj[prop]"
prim__getProperty : AnyPtr -> String -> PrimIO AnyPtr

export
rawGetProperty : HasIO io => IsPtr o => String -> o -> io AnyPtr
rawGetProperty prop obj = primIO $ prim__getProperty (toAnyPtr obj) prop

%foreign "browser:lambda: (obj, prop, val) => { obj[prop] = val; }"
prim__setProperty : AnyPtr -> String -> AnyPtr -> PrimIO ()

export
unsafeRawSetProperty : HasIO io => IsPtr v => IsPtr o => String -> v -> o -> io ()
unsafeRawSetProperty prop val obj =
  primIO $ prim__setProperty (toAnyPtr obj) prop (toAnyPtr val)

%foreign "browser:lambda: (prop, obj) => Object.prototype.hasOwnProperty(obj, prop)"
prim__hasOwnProperty : String -> AnyPtr -> Bool

%foreign "browser:lambda: (prop, obj) => prop in obj"
prim__hasProperty : String -> AnyPtr -> Bool

-- prototype props

%foreign "browser:lambda: obj => obj.constructor"
prim__constructor : AnyPtr -> AnyPtr

%foreign "browser:lambda: obj => obj.prototype.__proto__"
prim__proto : AnyPtr -> AnyPtr

-- %foreign "browser:lambda: (f, that, args) => f.apply(that, args)"
-- prim__apply : anyptr -> anyptr -> anyptr -> primio anyptr

-- applymethod : IsPtr o => String -> o -> AnyPtr -> AnyPtr
-- applymethod m o a = 

%foreign "browser:lambda: (it, args) => new it(args)"
prim__new : AnyPtr -> AnyPtr -> AnyPtr



-- proto
