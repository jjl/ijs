module Ijs.DOM.HTMLElement

-- props

import Data.Maybe
import Ijs.DOM
import Ijs.DOM.HTML
import Ijs.Nullable
import Ijs.Object
import Ijs.Types

-- all soundness starts with lies.
%foreign "javascript:lambda: x => x"
prim__lies : from -> to

export -- todo: setter
(.accessKey) : HasIO io => IsHTMLElement e => e -> io String
(.accessKey) e = prim__lies <$> rawGetProperty "accessKey" e

export
(.accessKeyLabel) : HasIO io => IsHTMLElement e => e -> io String
(.accessKeyLabel) e = prim__lies <$> rawGetProperty "accessKeyLabel" e

-- export -- todo setter -- actually this one is mad. "" = true, default: "inherit"
-- (.contentEditable) : HasIO io => IsHTMLElement e => e -> io Bool
-- (.contentEditable) e = (boolshit . prim__lies) <$> rawGetProperty "contentEditable" e

export -- todo setter
(.isContentEditable) : HasIO io => IsHTMLElement e => e -> io Bool
(.isContentEditable) e = prim__lies <$> rawGetProperty "isContentEditable" e

-- export -- deprecated, todo setter,  HTMLMenuElement is in Element.idr
-- (.contextMenu) : HasIO io => IsHTMLElement e => e -> io (Maybe HTMLMenuElement)
-- (.contextMenu) e = do
--   name <- mebbe <$> rawGetProperty "contextMenu" e
--   pure (MkHTMLMenuElement <$> name) where
--     mebbe : AnyPtr -> Maybe AnyPtr
--     mebbe = maybeNullable . MkNullable

export
(.dataset) : HasIO io => IsHTMLElement e => e -> io DOMStringMap
(.dataset) e = UnsafeMkDOMStringMap <$> rawGetProperty "dataset" e

export data Dir = LTR | RTL

readDir : String -> Maybe Dir
readDir "ltr" = Just LTR
readDir "rtl" = Just RTL
readDir _ = Nothing

-- writeDir : Maybe Dir -> String
-- writeDir (Just LTR) = "ltr"
-- writeDir (Just RTL) = "rtl"
-- writeDir Nothing = "auto"

export -- todo setter
(.dir) : HasIO io => IsHTMLElement e => e -> io (Maybe Dir)
(.dir) e = (readDir . prim__lies) <$> rawGetProperty "dir" e

export -- todo setter
(.draggable) : HasIO io => IsHTMLElement e => e -> io Bool
(.draggable) e = prim__lies <$> rawGetProperty "draggable" e

export -- todo setter
(.enterkeyhint) : HasIO io => IsHTMLElement e => e -> io String
(.enterkeyhint) e = prim__lies <$> rawGetProperty "enterkeyhint" e

export -- todo setter
(.hidden) : HasIO io => IsHTMLElement e => e -> io Bool
(.hidden) e = prim__lies <$> rawGetProperty "hidden" e

export -- todo setter
(.inert) : HasIO io => IsHTMLElement e => e -> io Bool
(.inert) e = prim__lies <$> rawGetProperty "inert" e

export -- todo setter
(.innerText) : HasIO io => IsHTMLElement e => e -> io String
(.innerText) e = prim__lies <$> rawGetProperty "innerText" e

-- export -- experimental, todo setter
-- itemScope :  HasIO io => IsHTMLElement e => e -> io Bool

-- export -- experimental
-- itemType : HasIO io => IsHTMLElement e => e -> io DOMSettableTokenList

-- export -- experimental, todo setter
-- itemId : HasIO io => IsHTMLElement e => e -> io String

-- export -- experimental
-- itemRef : HasIO io => IsHTMLElement e => e -> io DOMSettableTokenList

-- export -- experimental
-- itemProp : HasIO io => IsHTMLElement e => e -> io DOMSettableTokenList

-- export -- experimental, todo setter
-- itemValue : HasIO io => IsHTMLElement e => e -> io Object

export -- todo setter
(.lang) : HasIO io => IsHTMLElement e => e -> io String
(.lang) e = prim__lies <$> rawGetProperty "lang" e

export -- todo setter
(.noModule) : HasIO io => IsHTMLElement e => e -> io Bool
(.noModule) e = prim__lies <$> rawGetProperty "noModule" e

export
(.nonce) : HasIO io => IsHTMLElement e => e -> io String
(.nonce) e = prim__lies <$> rawGetProperty "nonce" e

export -- experimental
(.offsetHeight) : HasIO io => IsHTMLElement e => e -> io Double
(.offsetHeight) e = prim__lies <$> rawGetProperty "offsetHeight" e

export -- experimental
(.offsetLeft) : HasIO io => IsHTMLElement e => e -> io Double
(.offsetLeft) e = prim__lies <$> rawGetProperty "offsetLeft" e

-- export -- experimental, in Element.idr
-- (.offsetParent) : HasIO io => IsHTMLElement e => e -> io Element
-- (.offsetParent) e = MkElement <$> rawGetProperty "offsetParent" e

export -- experimental
(.offsetTop) : HasIO io => IsHTMLElement e => e -> io Double
(.offsetTop) e = prim__lies <$> rawGetProperty "offsetTop" e

export -- experimental
(.offsetWidth) : HasIO io => IsHTMLElement e => e -> io Double
(.offsetWidth) e = prim__lies <$> rawGetProperty "offsetWidth" e


export
(.properties) : HasIO io => IsHTMLElement e => e -> io HTMLPropertiesCollection
(.properties) e = MkHTMLPropertiesCollection <$> rawGetProperty "properties" e

export -- todo setter
(.spellcheck) : HasIO io => IsHTMLElement e => e -> io Bool
(.spellcheck) e = prim__lies <$> rawGetProperty "spellcheck" e


export
(.style) : HasIO io => IsHTMLElement e => e -> io CSSStyleDeclaration
(.style) e = MkCSSStyleDeclaration <$> rawGetProperty "style" e

export
(.tabIndex) : HasIO io => IsHTMLElement e => e -> io Double
(.tabIndex) e = prim__lies <$> rawGetProperty "tabIndex" e

export
(.title) : HasIO io => IsHTMLElement e => e -> io String
(.title) e = prim__lies <$> rawGetProperty "title" e

-- export -- undocumented on mdn
-- (.translate) : HasIO io => IsHTMLElement e => e -> io Bool
-- (.translate) e = prim__lies <$> rawGetProperty "translate" e

---- methods

-- export data ElementInternals = MkElementInternals AnyPtr
-- attachInternals : HasIO io => IsHTMLElement e => e -> ElementInternals -> io ()

%foreign "javascript:lambda: obj => obj.blur()"
prim__blur : AnyPtr -> PrimIO ()

%foreign "javascript:lambda: obj => obj.click()"
prim__click : AnyPtr -> PrimIO ()

%foreign "javascript:lambda: obj => obj.focus()"
prim__focus : AnyPtr -> PrimIO ()

%foreign "javascript:lambda: obj => obj.forceSpellcheck()"
prim__forceSpellcheck : AnyPtr -> PrimIO ()

export
(.blur) : HasIO io => IsHTMLElement e => e -> io ()
(.blur) e = primIO $ prim__blur (toAnyPtr e)

export
(.click) : HasIO io => IsHTMLElement e => e -> io ()
(.click) e = primIO $ prim__click (toAnyPtr e)

export
(.focus) : HasIO io => IsHTMLElement e => e -> io ()
(.focus) e = primIO $ prim__focus (toAnyPtr e)

export
(.forceSpellcheck) : HasIO io => IsHTMLElement e => e -> io ()
(.forceSpellcheck) e = primIO $ prim__forceSpellcheck (toAnyPtr e)
