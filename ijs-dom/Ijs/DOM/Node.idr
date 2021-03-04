module Ijs.DOM.Node

import Ijs.DOM
import Ijs.Object
import Ijs.Types

-- all soundness starts with lies.
%foreign "javascript:lambda: x => x"
prim__lies : from -> to

-- props

export
(.baseURI) : HasIO io => IsElement e => e -> io String
(.baseURI) e = prim__lies <$> rawGetProperty "baseURI" e

export
(.childNodes) : HasIO io => IsElement e => e -> io NodeList
(.childNodes) e = UnsafeMkNodeList <$> rawGetProperty "childNodes" e

export
(.firstChild) : HasIO io => IsElement e => e -> io (Maybe Node)
(.firstChild) e = do
  name <- mebbe <$> rawGetProperty "firstChild" e
  pure (UnsafeMkNode <$> name) where
    mebbe : AnyPtr -> Maybe AnyPtr
    mebbe = maybeNullable . UnsafeMkNullable

export
(.isConnected) : HasIO io => IsElement e => e -> io String
(.isConnected) e = prim__lies <$> rawGetProperty "isConnected" e

export
(.lastChild) : HasIO io => IsElement e => e -> io (Maybe Node)
(.lastChild) e = do
  name <- mebbe <$> rawGetProperty "lastChild" e
  pure (UnsafeMkNode <$> name) where
    mebbe : AnyPtr -> Maybe AnyPtr
    mebbe = maybeNullable . UnsafeMkNullable

export
(.nextSibling) : HasIO io => IsElement e => e -> io (Maybe Node)
(.nextSibling) e = do
  name <- mebbe <$> rawGetProperty "nextSibling" e
  pure (UnsafeMkNode <$> name) where
    mebbe : AnyPtr -> Maybe AnyPtr
    mebbe = maybeNullable . UnsafeMkNullable

export
(.nodeName) : HasIO io => IsElement e => e -> io String
(.nodeName) e = prim__lies <$> rawGetProperty "nodeName" e

-- Node.nodeTypeRead only  -- funky whitespace ones are deprecated
--     Returns an unsigned short representing the type of the node. Possible values are:
--     Name 	Value
--     ELEMENT_NODE 	1
--     ATTRIBUTE_NODE  
-- 	2
-- TEXT_NODE 	3
-- CDATA_SECTION_NODE 	4
-- ENTITY_REFERENCE_NODE 
-- 	5
-- ENTITY_NODE 
-- 	6
-- PROCESSING_INSTRUCTION_NODE 	7
-- COMMENT_NODE 	8
-- DOCUMENT_NODE 	9
-- DOCUMENT_TYPE_NODE 	10
-- DOCUMENT_FRAGMENT_NODE 	11
-- NOTATION_NODE 
--     	12
-- Node.nodeValue
--     Returns / Sets the value of the current node.
-- Node.ownerDocumentRead only
--     Returns the Document that this node belongs to. If the node is itself a document, returns null.

export
(.parentElement) : HasIO io => IsNode n => n -> io (Maybe Element)
(.parentElement) e = do
  name <- unsafeNullablePtr <$> rawGetProperty "parentElement" e
  pure (UnsafeMkElement <$> name)

export
(.parentNode) : HasIO io => IsElement e => e -> io (Maybe Node)
(.parentNode) e = do
  name <- mebbe <$> rawGetProperty "parentNode" e
  pure (UnsafeMkNode <$> name) where
    mebbe : AnyPtr -> Maybe AnyPtr
    mebbe = maybeNullable . UnsafeMkNullable

export
(.previousSibling) : HasIO io => IsElement e => e -> io (Maybe Node)
(.previousSibling) e = do
  name <- mebbe <$> rawGetProperty "previousSibling" e
  pure (UnsafeMkNode <$> name) where
    mebbe : AnyPtr -> Maybe AnyPtr
    mebbe = maybeNullable . UnsafeMkNullable

export -- todo setter
(.textContent) : HasIO io => IsElement e => e -> io (Maybe String)
(.textContent) e = (maybeNullable . UnsafeMkNullable) <$> rawGetProperty "textContent" e

---------- methods ------------

-- Node.appendChild(childNode)
--     Adds the specified childNode argument as the last child to the current node.
--     If the argument referenced an existing node on the DOM tree, the node will be detached from its current position and attached at the new position.
-- Node.cloneNode()
--     Clone a Node, and optionally, all of its contents. By default, it clones the content of the node.
-- Node.compareDocumentPosition()
--     Compares the position of the current node against another node in any other document.
-- Node.contains()
--     Returns a Boolean value indicating whether or not a node is a descendant of the calling node.
-- Node.getBoxQuads() -- experimental
--     Returns a list of the node's CSS boxes relative to another node.
-- Node.getRootNode()
--     Returns the context object's root which optionally includes the shadow root if it is available. 
-- Node.hasChildNodes()
--     Returns a Boolean indicating whether or not the element has any child nodes.
-- Node.insertBefore()
--     Inserts a Node before the reference node as a child of a specified parent node.
-- Node.isDefaultNamespace()
--     Accepts a namespace URI as an argument and returns a Boolean with a value of true if the namespace is the default namespace on the given node or false if not.
-- Node.isEqualNode()
--     Returns a Boolean which indicates whether or not two nodes are of the same type and all their defining data points match.
-- Node.isSameNode()
--     Returns a Boolean value indicating whether or not the two nodes are the same (that is, they reference the same object).
-- Node.lookupPrefix()
--     Returns a DOMString containing the prefix for a given namespace URI, if present, and null if not. When multiple prefixes are possible, the result is implementation-dependent.
-- Node.lookupNamespaceURI()
--     Accepts a prefix and returns the namespace URI associated with it on the given node if found (and null if not). Supplying null for the prefix will return the default namespace.
-- Node.normalize()
--     Clean up all the text nodes under this element (merge adjacent, remove empty).
-- Node.removeChild()
--     Removes a child node from the current element, which must be a child of the current node.
-- Node.replaceChild()
--     Replaces one child Node of the current one 
