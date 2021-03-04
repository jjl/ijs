module Ijs.Types

-- Anything from javascript is an AnyPtr if we haven't given it a better type.
public export
interface IsPtr n where
  toAnyPtr : n -> AnyPtr

-- this is our little escape hatch we will pretend doesn't exist
%foreign "javascript:lambda: x => x"
prim__lies : from -> to

export IsPtr AnyPtr where toAnyPtr n = n
export IsPtr Bool   where toAnyPtr = prim__lies
export IsPtr Double where toAnyPtr = prim__lies
export IsPtr Int    where toAnyPtr = prim__lies
export IsPtr String where toAnyPtr = prim__lies 

export data Function  = UnsafeMkFunction AnyPtr
export data Null      = UnsafeMkNull AnyPtr
export data Object    = UnsafeMkObject AnyPtr
export data Symbol    = UnsafeMkSymbol AnyPtr
export data Undefined = UnsafeMkUndefined AnyPtr

export IsPtr Function  where toAnyPtr (UnsafeMkFunction s) = s
export IsPtr Null      where toAnyPtr (UnsafeMkNull s) = s
export IsPtr Object    where toAnyPtr (UnsafeMkObject s) = s
export IsPtr Symbol    where toAnyPtr (UnsafeMkSymbol s) = s
export IsPtr Undefined where toAnyPtr (UnsafeMkUndefined s) = s

%foreign "javascript:lambda: x => typeof(x)"
prim__typeof : AnyPtr -> String

%foreign "javascript:lambda: (x,y) => x === y"
prim__eeq : AnyPtr -> AnyPtr -> Bool

%foreign "javascript:lambda: (x,y) => x !== y"
prim__neq : AnyPtr -> AnyPtr -> Bool

%foreign "javascript:lambda: (x,y) => x == y"
prim__eq : AnyPtr -> AnyPtr -> Bool

%foreign "javascript:lambda: (x,y) => x != y"
prim__ne : AnyPtr -> AnyPtr -> Bool

export
typeof : IsPtr n => n -> String
typeof = prim__typeof . toAnyPtr

checkTypeof : IsPtr n => String -> n -> Bool
checkTypeof name val = prim__eeq (toAnyPtr name) (toAnyPtr $ typeof val)

checkTypenof : IsPtr n => String -> n -> Bool
checkTypenof name val = prim__neq (toAnyPtr name) (toAnyPtr $ typeof val)

%foreign "javascript:lambda: (x) => x === null"
prim__isNull : AnyPtr -> Bool

export
isNull : IsPtr n => n -> Bool
isNull = prim__isNull . toAnyPtr

%foreign "javascript:lambda: (x) => x !== null"
prim__isUll : AnyPtr -> Bool

export
isUll : IsPtr n => n -> Bool
isUll = prim__isUll . toAnyPtr

export
isUndefined : IsPtr n => n -> Bool
isUndefined = checkTypeof "undefined"

export
isDefined : IsPtr n => n -> Bool
isDefined = checkTypenof "undefined"

export
isBool : IsPtr n => n -> Bool
isBool = checkTypeof "boolean"

export
isString : IsPtr n => n -> Bool
isString = checkTypeof "string"

export
isNumber : IsPtr n => n -> Bool
isNumber = checkTypeof "number"

export
isBigint : IsPtr n => n -> Bool
isBigint = checkTypeof "bigint"

export
isSymbol : IsPtr n => n -> Bool
isSymbol = checkTypeof "symbol"

export
isFunction : IsPtr n => n -> Bool
isFunction = checkTypeof "function"

export
isObject : IsPtr n => n -> Bool
isObject o = isUll o && checkTypeof "object" o

public export
data An = AnInt    Int
        | AnString String
        | AnBool   Bool
        | AnDouble Double
        | AnSymbol Symbol
        | AnFunc   Function
        | AnObject Object

public export
data Un = UnDefined Undefined
        | UnNull Null

export
any : AnyPtr -> Either Un An
any ptr = that (prim__typeof ptr) where
  that : String -> Either Un An
  that "bigint"    = Right (AnInt    (prim__lies ptr))
  that "boolean"   = Right (AnBool   (prim__lies ptr))
  that "function"  = Right (AnFunc   (prim__lies ptr))
  that "number"    = Right (AnDouble (prim__lies ptr))
  that "string"    = Right (AnString (prim__lies ptr))
  that "symbol"    = Right (AnSymbol (UnsafeMkSymbol ptr))
  that "undefined" = Left (UnDefined (UnsafeMkUndefined ptr))
  that _ = if isNull ptr
           then Left (UnNull (UnsafeMkNull ptr))
           else Right (AnObject (UnsafeMkObject ptr))

%foreign "javascript:lambda: x => !!x"
prim__truthy : AnyPtr -> Bool

export
truthy : IsPtr n => n -> Bool
truthy = prim__truthy . toAnyPtr

public export
data Nullable : (t : Type) -> Type where
  UnsafeMkNullable : AnyPtr -> Nullable t

public export
data Undefinable : (t : Type) -> Type where
  UnsafeMkUndefinable : AnyPtr -> Undefinable t

public export
data Nunable : (t : Type) -> Type where
  UnsafeMkNunable : AnyPtr -> Nunable t

export
maybeNullable : Nullable t -> Maybe t
maybeNullable (UnsafeMkNullable p) =
 if isUll p then Just (prim__lies p) else Nothing

export
maybeUndefinable : Undefinable t -> Maybe t
maybeUndefinable (UnsafeMkUndefinable p) = if isDefined p then Just (prim__lies p) else Nothing

export
maybeNunable : Nunable t -> Maybe t
maybeNunable (UnsafeMkNunable p) = if isDefined p && isUll p then Just (prim__lies p) else Nothing

export
unsafeNullablePtr : AnyPtr -> Maybe AnyPtr
unsafeNullablePtr = maybeNullable . UnsafeMkNullable

export
unsafeNullableString : AnyPtr -> Maybe String
unsafeNullableString = maybeNullable . UnsafeMkNullable

