module Ijs.DOM.Element

import Data.Maybe
import Ijs.Array
import Ijs.DOM
import Ijs.DOM.DOMRect
import Ijs.DOM.Node
import Ijs.Object
import Ijs.Types

-- all soundness starts with lies.
%foreign "javascript:lambda: x => x"
prim__lies : from -> to

-------- properties ----------

export
(.attributes) : HasIO io => IsElement e => e -> io NamedNodeMap
(.attributes) e = UnsafeMkNamedNodeMap <$> rawGetProperty "attributes" e

export
(.classList) : HasIO io => IsElement e => e -> io DOMTokenList
(.classList) e = UnsafeMkDOMTokenList <$> rawGetProperty "classList" e

export -- todo: setter
(.className) : HasIO io => IsElement e => e -> io String
(.className) e = prim__lies <$> rawGetProperty "className" e

-- lol: idris reported quite a different error than you'd expect from
-- this work in progress version. i should file a bug report.
-- export
-- (.className) : HasIO io => IsElement e => e -> io String
-- (.className) e = rawGetProperty "className" e

export
(.clientHeight) : HasIO io => IsElement e => e -> io Double
(.clientHeight) e = prim__lies <$> rawGetProperty "clientHeight" e

export
(.clientLeft) : HasIO io => IsElement e => e -> io Double
(.clientLeft) e = prim__lies <$> rawGetProperty "clientLeft" e

export
(.clientTop) : HasIO io => IsElement e => e -> io Double
(.clientTop) e = prim__lies <$> rawGetProperty "clientTop" e

export
(.clientWidth) : HasIO io => IsElement e => e -> io Double
(.clientWidth) e = prim__lies <$> rawGetProperty "clientWidth" e

export
(.computedName) : HasIO io => IsElement e => e -> io String
(.computedName) e = prim__lies <$> rawGetProperty "computedName" e

export
(.computedRole) : HasIO io => IsElement e => e -> io String
(.computedRole) e = prim__lies <$> rawGetProperty "computedRole" e

export -- todo: setter
(.id) : HasIO io => IsElement e => e -> io String
(.id) e = prim__lies <$> rawGetProperty "id" e

export -- todo: setter
(.innerHTML) : HasIO io => IsElement e => e -> io String
(.innerHTML) e = prim__lies <$> rawGetProperty "innerHTML" e

export
(.localName) : HasIO io => IsElement e => e -> io String
(.localName) e = prim__lies <$> rawGetProperty "localName" e

export
(.namespaceURI) : HasIO io => IsElement e => e -> io (Nullable String)
(.namespaceURI) e = UnsafeMkNullable <$> rawGetProperty "namespaceURI" e

export
(.nextElementSibling) : HasIO io => IsElement e => e -> io (Maybe Element)
(.nextElementSibling) e = do
  name <- unsafeNullablePtr <$> rawGetProperty "nextElementSibling" e
  pure (UnsafeMkElement <$> name)

export
(.outerHTML) : HasIO io => IsElement e => e -> io String
(.outerHTML) e = prim__lies <$> rawGetProperty "outerHTML" e

export
(.part) : HasIO io => IsElement e => e -> io DOMTokenList
(.part) e = UnsafeMkDOMTokenList <$> rawGetProperty "part" e

export
(.prefix) : HasIO io => IsElement e => e -> io (Nullable String)
(.prefix) e = UnsafeMkNullable <$> rawGetProperty "prefix" e

export
(.previousElementSibling) : HasIO io => IsElement e => e -> io (Maybe Element)
(.previousElementSibling) e = do
  name <- unsafeNullablePtr <$> rawGetProperty "previousElementSibling" e
  pure (UnsafeMkElement <$> name)

export
(.scrollHeight) : HasIO io => IsElement e => e -> io Double
(.scrollHeight) e = prim__lies <$> rawGetProperty "scrollHeight" e

export -- todo: setter
(.scrollLeft) : HasIO io => IsElement e => e -> io Double
(.scrollLeft) e = prim__lies <$> rawGetProperty "scrollLeft" e

export -- not standardised
(.scrollLeftMax) : HasIO io => IsElement e => e -> io (Nunable Double)
(.scrollLeftMax) e = UnsafeMkNunable <$> rawGetProperty "scrollLeftMax" e

export -- todo: setter
(.scrollTop) : HasIO io => IsElement e => e -> io Double
(.scrollTop) e = prim__lies <$> rawGetProperty "scrollTop" e

export -- not standardised
(.scrollTopMax) : HasIO io => IsElement e => e -> io (Nunable Double)
(.scrollTopMax) e = UnsafeMkNunable <$> rawGetProperty "scrollTopMax" e

export
(.scrollWidth) : HasIO io => IsElement e => e -> io Double
(.scrollWidth) e = prim__lies <$> rawGetProperty "scrollWidth" e

export
(.shadowRoot) : HasIO io => IsElement e => e -> io (Maybe ShadowRoot)
(.shadowRoot) e = do
  name <- unsafeNullablePtr <$> rawGetProperty "shadowRoot" e
  pure (UnsafeMkShadowRoot <$> name)

export-- not standardised, webext only
(.openOrClosedShadowRoot) : HasIO io => IsElement e => e -> io (Maybe ShadowRoot)
(.openOrClosedShadowRoot) e = do
  name <- unsafeNullablePtr <$> rawGetProperty "openOrClosedShadowRoot" e
  pure (UnsafeMkShadowRoot <$> name)

export -- experimental
(.slot) : HasIO io => IsElement e => e -> io String
(.slot) e = prim__lies <$> rawGetProperty "slot" e

export -- not standardised
(.tabStop) : HasIO io => IsElement e => e -> io (Maybe Bool)
(.tabStop) e = (maybeNunable . UnsafeMkNunable) <$> rawGetProperty "tabStop" e

export
(.tagName) : HasIO io => IsElement e => e -> io String
(.tagName) e = prim__lies <$> rawGetProperty "tagName" e

-- mdn doesn't have any docs for this lol
data UndoManager = UnsafeMkUndoManager AnyPtr

export IsPtr UndoManager where toAnyPtr (UnsafeMkUndoManager p) = p

export -- experimental
(.undoManager) : HasIO io => IsElement e => e -> io (Maybe UndoManager)
(.undoManager) e = do
  name <- unsafeNullablePtr <$> rawGetProperty "undoManager" e
  pure (UnsafeMkUndoManager <$> name)

export -- experimental
(.undoScope) : HasIO io => IsElement e => e -> io (Maybe Bool)
(.undoScope) e = (maybeNunable . UnsafeMkNunable) <$> rawGetProperty "undoScope" e
 
--------- aria props (all strings!) ---------------

export
(.ariaAtomic) : HasIO io => IsElement e => e -> io String
(.ariaAtomic) e = prim__lies <$> rawGetProperty "ariaAtomic" e

export
(.ariaAutoComplete) : HasIO io => IsElement e => e -> io String
(.ariaAutoComplete) e = prim__lies <$> rawGetProperty "ariaAutoComplete" e

export
(.ariaBusy) : HasIO io => IsElement e => e -> io String
(.ariaBusy) e = prim__lies <$> rawGetProperty "ariaBusy" e

export
(.ariaChecked) : HasIO io => IsElement e => e -> io String
(.ariaChecked) e = prim__lies <$> rawGetProperty "ariaChecked" e

export
(.ariaColCount) : HasIO io => IsElement e => e -> io String
(.ariaColCount) e = prim__lies <$> rawGetProperty "ariaColCount" e

export
(.ariaColIndex) : HasIO io => IsElement e => e -> io String
(.ariaColIndex) e = prim__lies <$> rawGetProperty "ariaColIndex" e

export
(.ariaColIndexText) : HasIO io => IsElement e => e -> io String
(.ariaColIndexText) e = prim__lies <$> rawGetProperty "ariaColIndexText" e

export
(.ariaColSpan) : HasIO io => IsElement e => e -> io String
(.ariaColSpan) e = prim__lies <$> rawGetProperty "ariaColSpan" e

export
(.ariaCurrent) : HasIO io => IsElement e => e -> io String
(.ariaCurrent) e = prim__lies <$> rawGetProperty "ariaCurrent" e

export
(.ariaDescription) : HasIO io => IsElement e => e -> io String
(.ariaDescription) e = prim__lies <$> rawGetProperty "ariaDescription" e

export
(.ariaDisabled) : HasIO io => IsElement e => e -> io String
(.ariaDisabled) e = prim__lies <$> rawGetProperty "ariaDisabled" e

export
(.ariaExpanded) : HasIO io => IsElement e => e -> io String
(.ariaExpanded) e = prim__lies <$> rawGetProperty "ariaExpanded" e

export
(.ariaHasPopup) : HasIO io => IsElement e => e -> io String
(.ariaHasPopup) e = prim__lies <$> rawGetProperty "ariaHasPopup" e

export
(.ariaHidden) : HasIO io => IsElement e => e -> io String
(.ariaHidden) e = prim__lies <$> rawGetProperty "ariaHidden" e

export
(.ariaKeyShortcuts) : HasIO io => IsElement e => e -> io String
(.ariaKeyShortcuts) e = prim__lies <$> rawGetProperty "ariaKeyShortcuts" e

export
(.ariaLabel) : HasIO io => IsElement e => e -> io String
(.ariaLabel) e = prim__lies <$> rawGetProperty "ariaLabel" e

export
(.ariaLevel) : HasIO io => IsElement e => e -> io String
(.ariaLevel) e = prim__lies <$> rawGetProperty "ariaLevel" e

export
(.ariaLive) : HasIO io => IsElement e => e -> io String
(.ariaLive) e = prim__lies <$> rawGetProperty "ariaLive" e

export
(.ariaModal) : HasIO io => IsElement e => e -> io String
(.ariaModal) e = prim__lies <$> rawGetProperty "ariaModal" e

export
(.ariaMultiline) : HasIO io => IsElement e => e -> io String
(.ariaMultiline) e = prim__lies <$> rawGetProperty "ariaMultiline" e

export
(.ariaMultiSelectable) : HasIO io => IsElement e => e -> io String
(.ariaMultiSelectable) e = prim__lies <$> rawGetProperty "ariaMultiSelectable" e

export
(.ariaOrientation) : HasIO io => IsElement e => e -> io String
(.ariaOrientation) e = prim__lies <$> rawGetProperty "ariaOrientation" e

export
(.ariaPlaceholder) : HasIO io => IsElement e => e -> io String
(.ariaPlaceholder) e = prim__lies <$> rawGetProperty "ariaPlaceholder" e

export
(.ariaPosInSet) : HasIO io => IsElement e => e -> io String
(.ariaPosInSet) e = prim__lies <$> rawGetProperty "ariaPosInSet" e

export
(.ariaPressed) : HasIO io => IsElement e => e -> io String
(.ariaPressed) e = prim__lies <$> rawGetProperty "ariaPressed" e

export
(.ariaReadOnly) : HasIO io => IsElement e => e -> io String
(.ariaReadOnly) e = prim__lies <$> rawGetProperty "ariaReadOnly" e

export
(.ariaRelevant) : HasIO io => IsElement e => e -> io String
(.ariaRelevant) e = prim__lies <$> rawGetProperty "ariaRelevant" e

export
(.ariaRequired) : HasIO io => IsElement e => e -> io String
(.ariaRequired) e = prim__lies <$> rawGetProperty "ariaRequired" e

export
(.ariaRoleDescription) : HasIO io => IsElement e => e -> io String
(.ariaRoleDescription) e = prim__lies <$> rawGetProperty "ariaRoleDescription" e

export
(.ariaRowCount) : HasIO io => IsElement e => e -> io String
(.ariaRowCount) e = prim__lies <$> rawGetProperty "ariaRowCount" e

export
(.ariaRowIndex) : HasIO io => IsElement e => e -> io String
(.ariaRowIndex) e = prim__lies <$> rawGetProperty "ariaRowIndex" e

export
(.ariaRowIndexText) : HasIO io => IsElement e => e -> io String
(.ariaRowIndexText) e = prim__lies <$> rawGetProperty "ariaRowIndexText" e

export
(.ariaRowSpan) : HasIO io => IsElement e => e -> io String
(.ariaRowSpan) e = prim__lies <$> rawGetProperty "ariaRowSpan" e

export
(.ariaSelected) : HasIO io => IsElement e => e -> io String
(.ariaSelected) e = prim__lies <$> rawGetProperty "ariaSelected" e

export
(.ariaSetSize) : HasIO io => IsElement e => e -> io String
(.ariaSetSize) e = prim__lies <$> rawGetProperty "ariaSetSize" e

export
(.ariaSort) : HasIO io => IsElement e => e -> io String
(.ariaSort) e = prim__lies <$> rawGetProperty "ariaSort" e

export
(.ariaValueMax) : HasIO io => IsElement e => e -> io String
(.ariaValueMax) e = prim__lies <$> rawGetProperty "ariaValueMax" e

export
(.ariaValueMin) : HasIO io => IsElement e => e -> io String
(.ariaValueMin) e = prim__lies <$> rawGetProperty "ariaValueMin" e

export
(.ariaValueNow) : HasIO io => IsElement e => e -> io String
(.ariaValueNow) e = prim__lies <$> rawGetProperty "ariaValueNow" e

export
(.ariaValueText) : HasIO io => IsElement e => e -> io String
(.ariaValueText) e = prim__lies <$> rawGetProperty "ariaValueText" e

---------------- methods ---------------------

-- export -- how to model opts
-- attachShadow :  HasIO io => IsElement e => e -> OPTS -> io ShadowRoot

-- export -- experimental -- how to model opts
-- animate : HasIO io => IsElement e => e -> ??? -> io Animation

-- export -- todo: bad pattern can throw SyntaxError
-- closest : HasIO io => IsElement e => e -> String -> io Element

%foreign "javascript:lambda: (obj) => obj.computedStyleMap()"
prim__computedStyleMap : AnyPtr -> PrimIO AnyPtr

export -- experimental
(.computedStyleMap) : HasIO io => IsElement e => e -> io StylePropertyMapReadOnly
(.computedStyleMap) e =
  UnsafeMkStylePropertyMapReadOnly <$> primIO (prim__computedStyleMap $ toAnyPtr e)

%foreign "javascript:lambda: (obj) => obj.computedStyleMap()"
prim__getAnimations : AnyPtr -> PrimIO AnyPtr

export -- experimental
(.getAnimations) : HasIO io => IsElement e => e -> io (Array Animation)
(.getAnimations) e = UnsafeMkArray <$> primIO (prim__computedStyleMap $ toAnyPtr e)

%foreign "javascript:lambda: (obj, name) => obj.getAttribute(name)"
prim__getAttribute : AnyPtr -> String -> PrimIO AnyPtr

export
(.getAttribute) : HasIO io => IsElement e => e -> String -> io (Maybe String)
(.getAttribute) e name = unsafeNullableString <$> primIO (prim__getAttribute (toAnyPtr e) name)

%foreign "javascript:lambda: (obj) => obj.getAttributeNames()"
prim__getAttributeNames : AnyPtr -> PrimIO AnyPtr

export
(.getAttributeNames) : HasIO io => IsElement e => e -> io (Array String)
(.getAttributeNames) e = UnsafeMkArray <$> primIO (prim__getAttributeNames $ toAnyPtr e)

%foreign "javascript:lambda: (obj, name, ns) => obj.getAttributeNS(name, ns)"
prim__getAttributeNS : AnyPtr -> String -> String -> PrimIO AnyPtr

export
(.getAttributeNS) : HasIO io => IsElement e => e -> String -> String -> io (Maybe String)
(.getAttributeNS) e name ns =
  unsafeNullableString <$> primIO (prim__getAttributeNS (toAnyPtr e) name ns)

%foreign "javascript:lambda: obj => obj.getBoundingClientRect()"
prim__getBoundingClientRect : AnyPtr -> PrimIO AnyPtr

export
(.getBoundingClientRect) : HasIO io => IsElement e => e -> io DOMRect
(.getBoundingClientRect) e = UnsafeMkDOMRect <$> primIO (prim__getBoundingClientRect  $ toAnyPtr e)

%foreign "javascript:lambda: obj => obj.getClientRects()"
prim__getClientRects : AnyPtr -> PrimIO AnyPtr

export
(.getClientRects) : HasIO io => IsElement e => e -> io (Collection DOMRect)
(.getClientRects) e = UnsafeMkCollection <$> primIO (prim__getClientRects  $ toAnyPtr e)

%foreign "javascript:lambda: (obj, name) => obj.getElementsByClassName(name)"
prim__getElementsByClassName : AnyPtr -> String -> PrimIO AnyPtr

export
(.getElementsByClassName) : HasIO io => IsElement e => e -> String -> io HTMLCollection
(.getElementsByClassName) e name =
  UnsafeMkHTMLCollection <$> primIO (prim__getElementsByClassName (toAnyPtr e) name)

%foreign "javascript:lambda: (obj, name) => obj.getElementsByTagName(name)"
prim__getElementsByTagName : AnyPtr -> String -> PrimIO AnyPtr

export
(.getElementsByTagName) : HasIO io => IsElement e => e -> String -> io HTMLCollection
(.getElementsByTagName) e name =
  UnsafeMkHTMLCollection <$> primIO (prim__getElementsByTagName (toAnyPtr e) name)

%foreign "javascript:lambda: (obj, name, ns) => obj.getElementsByTagNameNS(name, ns)"
prim__getElementsByTagNameNS : AnyPtr -> String -> String -> PrimIO AnyPtr

export
(.getElementsByTagNameNS) : HasIO io => IsElement e => e -> String -> String -> io HTMLCollection
(.getElementsByTagNameNS) e name ns =
  UnsafeMkHTMLCollection <$> primIO (prim__getElementsByTagNameNS (toAnyPtr e) name ns)

%foreign "javascript:lambda: (obj, name) => obj.hasAttribute(name)"
prim__hasAttribute : AnyPtr -> String -> PrimIO AnyPtr

export
(.hasAttribute) : HasIO io => IsElement e => e -> String -> io Bool
(.hasAttribute) e name =
  prim__lies <$> primIO (prim__hasAttribute (toAnyPtr e) name)

%foreign "javascript:lambda: (obj, name, ns) => obj.hasAttributeNS(name, ns)"
prim__hasAttributeNS : AnyPtr -> String -> String -> PrimIO AnyPtr

export
(.hasAttributeNS) : HasIO io => IsElement e => e -> String -> String -> io Bool
(.hasAttributeNS) e name ns =
  prim__lies <$> primIO (prim__hasAttributeNS (toAnyPtr e) name ns)

%foreign "javascript:lambda: (obj) => obj.hasAttributes()"
prim__hasAttributes : AnyPtr -> PrimIO AnyPtr

export
(.hasAttributes) : HasIO io => IsElement e => e -> io Bool
(.hasAttributes) e = prim__lies <$> primIO (prim__hasAttributes $ toAnyPtr e)

%foreign "javascript:lambda: (obj) => obj.hasPointerCapturename, ns)"
prim__hasPointerCapture : AnyPtr -> PrimIO AnyPtr

export
(.hasPointerCapture) : HasIO io => IsElement e => e -> io Bool
(.hasPointerCapture) e = prim__lies <$> primIO (prim__hasPointerCapture $ toAnyPtr e)

%foreign "javascript:lambda: (obj, adj) => obj.insertAdjacentElement(adj)"
prim__insertAdjacentElement : AnyPtr -> AnyPtr -> PrimIO ()

export
(.insertAdjacentElement) : HasIO io => IsElement e => IsElement f => e -> f -> io ()
(.insertAdjacentElement) e f = primIO $ prim__insertAdjacentElement (toAnyPtr e) (toAnyPtr f)

%foreign "javascript:lambda: (obj, adj) => obj.insertAdjacentHTML(adj)"
prim__insertAdjacentHTML : AnyPtr -> String -> PrimIO ()

export
(.insertAdjacentHTML) : HasIO io => IsElement e => e -> String -> io ()
(.insertAdjacentHTML) e h = primIO $ prim__insertAdjacentHTML (toAnyPtr e) h

%foreign "javascript:lambda: (obj, adj) => obj.insertAdjacentText(adj)"
prim__insertAdjacentText : AnyPtr -> String -> PrimIO ()

export
(.insertAdjacentText) : HasIO io => IsElement e => e -> String -> io ()
(.insertAdjacentText) e t = primIO $ prim__insertAdjacentText (toAnyPtr e) t

%foreign "javascript:lambda: (obj, path) => obj.matches(pat)"
prim__matches : AnyPtr -> String -> PrimIO Bool

export
(.matches) : HasIO io => IsElement e => e -> String -> io Bool
(.matches) e p = primIO $ prim__matches (toAnyPtr e) p

-- todo: read about pseudo elements
-- %foreign "javascript:lambda: (obj, path) => obj.pseudo(pat)"
-- prim__pseudo : AnyPtr -> String -> PrimIO AnyPtr

-- export -- experimental
-- (.pseudo) : HasIO io => IsElement e => e -> String -> io CSSPseudoElement

%foreign "javascript:lambda: (obj, sel) => obj.querySelector(sel)"
prim__querySelector : AnyPtr -> String -> PrimIO AnyPtr

export
(.querySelector) : HasIO io => IsElement e => e -> String -> io (Maybe Node)
(.querySelector) e sel = do
  node <- unsafeNullablePtr <$> primIO (prim__querySelector (toAnyPtr e) sel)
  pure (UnsafeMkNode <$> node)

%foreign "javascript:lambda: (obj, sel) => obj.querySelectorAll(sel)"
prim__querySelectorAll : AnyPtr -> String -> PrimIO AnyPtr

export
(.querySelectorAll) : HasIO io => IsElement e => e -> String -> io NodeList
(.querySelectorAll) e p = UnsafeMkNodeList <$> primIO (prim__querySelectorAll (toAnyPtr e) p)

%foreign "javascript:lambda: (obj) => obj.releasePointerCapture()"
prim__releasePointerCapture : AnyPtr -> PrimIO ()

export
(.releasePointerCapture) : HasIO io => IsElement e => e -> io ()
(.releasePointerCapture) e = primIO $ prim__releasePointerCapture $ toAnyPtr e

%foreign "javascript:lambda: (child, parent) => child.remove(parent)"
prim__remove : AnyPtr -> AnyPtr -> PrimIO ()

export -- experimental
(.remove) : HasIO io => IsElement child => IsElement parent => child -> parent -> io ()
(.remove) c p = primIO $ prim__remove (toAnyPtr c) (toAnyPtr p)

%foreign "javascript:lambda: (obj, attr) => obj.removeAttribute(attr)"
prim__removeAttribute : AnyPtr -> String -> PrimIO ()

export
(.removeAttribute) : HasIO io => IsElement e => e -> String -> io ()
(.removeAttribute) e a = primIO $ prim__removeAttribute (toAnyPtr e) a

%foreign "javascript:lambda: (obj, attr, ns) => obj.removeAttributeNS(attr, ns)"
prim__removeAttributeNS : AnyPtr -> String -> String -> PrimIO ()

export
(.removeAttributeNS) : HasIO io => IsElement e => e -> String -> String -> io ()
(.removeAttributeNS) e a n = primIO $ prim__removeAttributeNS (toAnyPtr e) a n

%foreign "javascript:lambda: (obj) => obj.requestFullscreen()"
prim__requestFullscreen : AnyPtr -> PrimIO ()

export -- experimental
(.requestFullscreen) : HasIO io => IsElement e => e -> io ()
(.requestFullscreen) e = primIO $ prim__requestFullscreen (toAnyPtr e)

%foreign "javascript:lambda: (obj) => obj.request()"
prim__requestPointerLock : AnyPtr -> PrimIO ()

export -- experimental
(.requestPointerLock) : HasIO io => IsElement e => e -> io ()
(.requestPointerLock) e = primIO $ prim__requestPointerLock (toAnyPtr e)

%foreign "javascript:lambda: (obj, to) => obj.scroll(to)"
prim__scroll : AnyPtr -> Double -> Double -> PrimIO ()

export
(.scroll) : HasIO io => IsElement e => e -> (x : Double) -> (y : Double) -> io ()
(.scroll) e x y = primIO $ prim__scroll (toAnyPtr e) x y

%foreign "javascript:lambda: (obj, by) => obj.scrollBy(by)"
prim__scrollBy : AnyPtr -> Double -> Double -> PrimIO ()

export
(.scrollBy) : HasIO io => IsElement e => e -> (x : Double) -> (y : Double) -> io ()
(.scrollBy) e x y = primIO $ prim__scrollBy (toAnyPtr e) x y

%foreign "javascript:lambda: (obj) => obj.scrollIntoView()"
prim__scrollIntoView : AnyPtr -> PrimIO ()

export -- experimental
(.scrollIntoView) : HasIO io => IsElement e => e -> io ()
(.scrollIntoView) e = primIO $ prim__scrollIntoView (toAnyPtr e)

%foreign "javascript:lambda: (obj, to) => obj.scrollTo(to)"
prim__scrollTo : AnyPtr -> Double -> Double -> PrimIO ()

export
(.scrollTo) : HasIO io => IsElement e => e -> (x : Double) -> (y : Double) -> io ()
(.scrollTo) e x y = primIO $ prim__scrollTo (toAnyPtr e) x y

%foreign "javascript:lambda: (obj, attr, value) => obj.setAttribute(attr, value)"
prim__setAttribute : AnyPtr -> String -> String -> PrimIO ()

export
(.setAttribute) : HasIO io => IsElement e => e -> String -> String -> io ()
(.setAttribute) e a v = primIO $ prim__setAttribute (toAnyPtr e) a v

%foreign "javascript:lambda: (obj, attr, ns, value) => obj.setAttributeNS(attr, ns, value)"
prim__setAttributeNS : AnyPtr -> String -> String -> String -> PrimIO ()

export
(.setAttributeNS) : HasIO io => IsElement e => e -> String -> String -> String -> io ()
(.setAttributeNS) e a n v = primIO $ prim__setAttributeNS (toAnyPtr e) a n v

-- todo: figure out these pointer id things
-- %foreign "javascript:lambda: (obj, other) => obj.setPointerCapture(other)"
-- prim__setPointerCapture : AnyPtr -> AnyPtr -> PrimIO ()

-- export -- experimental
-- (.setPointerCapture) : HasIO io => IsElement e => e -> pointerID -> io ()
-- (.setPointerCapture) e p = primIO $ prim__setPointerCapture (toAnyPtr e) (toAnyPtr p)

%foreign "javascript:lambda: (obj, attr) => obj.toggleAttribute(attr)"
prim__toggleAttribute : AnyPtr -> String -> PrimIO ()

export
(.toggleAttribute) : HasIO io => IsElement e => e -> String -> io ()
(.toggleAttribute) e a = primIO $ prim__toggleAttribute (toAnyPtr e) a

-- maybe we should do something fancy with events?
-- https://developer.mozilla.org/en-US/docs/Web/API/Element#events
