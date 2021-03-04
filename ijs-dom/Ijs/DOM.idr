module Ijs.DOM

import Ijs.Array
import Ijs.Types

-- We start out by declaring the basic DOM interfaces

public export interface IsPtr e => IsEventTarget e where
public export interface IsPtr n => IsNode n where
public export interface IsPtr e => IsElement e where

-- We provide free implementations up the chain so we only have to
-- define one instance per element type.

export (e : Type) => IsPtr e => IsNode e => IsEventTarget e where
export (n : Type) => IsPtr e => IsElement n => IsNode n where

--- Any Node, we aren't sure what it is exactly
public export
data Node = UnsafeMkNode AnyPtr

--- Any Element, we aren't sure what it is exactly
public export
data Element = UnsafeMkElement AnyPtr

--- Root of a shadow DOM
public export
data ShadowRoot = UnsafeMkShadowRoot AnyPtr

-- A (live?) filtered collection of html nodes
public export
data HTMLCollection = UnsafeMkHTMLCollection AnyPtr

-- A live, editable collection of nodes
public export
data NodeList = UnsafeMkNodeList AnyPtr

-- A live, editable collection of attributes
public export
data NamedNodeMap = UnsafeMkNamedNodeMap AnyPtr

-- A live, editable collection of "data-" attributes
public export
data DOMStringMap = UnsafeMkDOMStringMap AnyPtr

-- A live, read-only collection of classnames
public export
data DOMTokenList = UnsafeMkDOMTokenList AnyPtr

-- Er, whatever HTMLElement.properties returns
public export
data HTMLPropertiesCollection = UnsafeMkHTMLPropertiesCollection AnyPtr

public export
data CSSStyleDeclaration = UnsafeMkCSSStyleDeclaration AnyPtr

-- Computed style map
public export
data StylePropertyMapReadOnly = UnsafeMkStylePropertyMapReadOnly AnyPtr

public export
data Animation = UnsafeMkAnimation AnyPtr

-- public export
-- data CSSPseudoElement = MkCSSPseudoElement AnyPtr

export IsPtr Node         where toAnyPtr (UnsafeMkNode n) = n
export IsPtr Element      where toAnyPtr (UnsafeMkElement e) = e
export IsPtr ShadowRoot   where toAnyPtr (UnsafeMkShadowRoot e) = e

export IsNode Node where
export IsElement Element where

export IsPtr NodeList     where toAnyPtr (UnsafeMkNodeList n) = n
export IsPtr DOMTokenList where toAnyPtr (UnsafeMkDOMTokenList l) = l

export Arrayish DOMTokenList where
export Arrayish NodeList where

export IsPtr DOMStringMap where toAnyPtr (UnsafeMkDOMStringMap l) = l
export IsPtr NamedNodeMap where toAnyPtr (UnsafeMkNamedNodeMap n) = n

-- export Arrayish DOMStringMap where
-- export Arrayish NamedNodeMap where
 
export IsPtr CSSStyleDeclaration      where toAnyPtr (UnsafeMkCSSStyleDeclaration c) = c
export IsPtr StylePropertyMapReadOnly where toAnyPtr (UnsafeMkStylePropertyMapReadOnly c) = c
-- export IsPtr CSSPseudoElement         where toAnyPtr (UnsafeMkCSSPseudoElement c) = c
