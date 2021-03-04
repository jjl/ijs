module Ijs.DOM.EventTarget

--- EventTarget is not an abstract type, you can create it
data EventTarget = MkEventTarget AnyPtr

-- EventTarget.addEventListener()
--     Registers an event handler of a specific event type on the EventTarget.
-- EventTarget.removeEventListener()
--     Removes an event listener from the EventTarget.
-- EventTarget.dispatchEvent()
--     Dispatches an event to this EventTarget. 
