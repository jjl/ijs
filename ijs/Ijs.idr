module Ijs

import Ijs.Types

export
data GlobalThis = MkGlobalThis AnyPtr

IsPtr GlobalThis where
  toAnyPtr (MkGlobalThis g) = g

%foreign "javascript:lambda: () => globalThis"
prim__globalThis : () -> AnyPtr

export
globalThis : GlobalThis
globalThis = MkGlobalThis (prim__globalThis ())
