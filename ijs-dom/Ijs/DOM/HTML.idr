module Ijs.DOM.HTML

import Ijs.DOM
import Ijs.Object
import Ijs.Types

--- The prototype of all html elements
export interface IsPtr e => IsHTMLElement e where

export (e : Type) => IsPtr e => IsHTMLElement e => IsElement e where

-- Now we define a type for most html elements

public export
data HTMLAnchorElement       = UnsafeMkHTMLAnchorElement AnyPtr
public export
data HTMLAreaElement         = UnsafeMkHTMLAreaElement AnyPtr
public export
data HTMLAudioElement        = UnsafeMkHTMLAudioElement AnyPtr
public export
data HTMLBRElement           = UnsafeMkHTMLBRElement AnyPtr
public export
data HTMLBaseElement         = UnsafeMkHTMLBaseElement AnyPtr
public export
data HTMLBodyElement         = UnsafeMkHTMLBodyElement AnyPtr
public export
data HTMLButtonElement       = UnsafeMkHTMLButtonElement AnyPtr
public export
data HTMLCanvasElement       = UnsafeMkHTMLCanvasElement AnyPtr
public export
data HTMLDListElement        = UnsafeMkHTMLDListElement AnyPtr
public export
data HTMLDataElement         = UnsafeMkHTMLDataElement AnyPtr
public export
data HTMLDataListElement     = UnsafeMkHTMLDataListElement AnyPtr
public export
data HTMLDetailsElement      = UnsafeMkHTMLDetailsElement AnyPtr
public export
data HTMLDialogElement       = UnsafeMkHTMLDialogElement AnyPtr
public export
data HTMLDirectoryElement    = UnsafeMkHTMLDirectoryElement AnyPtr
public export
data HTMLDivElement          = UnsafeMkHTMLDivElement AnyPtr
public export
data HTMLEmbedElement        = UnsafeMkHTMLEmbedElement AnyPtr
public export
data HTMLFieldSetElement     = UnsafeMkHTMLFieldSetElement AnyPtr
public export
data HTMLFormElement         = UnsafeMkHTMLFormElement AnyPtr
public export
data HTMLHRElement           = UnsafeMkHTMLHRElement AnyPtr
public export
data HTMLHeadElement         = UnsafeMkHTMLHeadElement AnyPtr
public export
data HTMLHeadingElement      = UnsafeMkHTMLHeadingElement AnyPtr
public export
data HTMLHtmlElement         = UnsafeMkHTMLHtmlElement AnyPtr
public export
data HTMLIFrameElement       = UnsafeMkHTMLIFrameElement AnyPtr
public export
data HTMLImageElement        = UnsafeMkHTMLImageElement AnyPtr
public export
data HTMLInputElement        = UnsafeMkHTMLInputElement AnyPtr
public export
data HTMLLIElement           = UnsafeMkHTMLLIElement AnyPtr
public export
data HTMLLabelElement        = UnsafeMkHTMLLabelElement AnyPtr
public export
data HTMLLegendElement       = UnsafeMkHTMLLegendElement AnyPtr
public export
data HTMLLinkElement         = UnsafeMkHTMLLinkElement AnyPtr
public export
data HTMLMapElement          = UnsafeMkHTMLMapElement AnyPtr
public export
data HTMLMediaElement        = UnsafeMkHTMLMediaElement AnyPtr
public export
data HTMLMenuElement         = UnsafeMkHTMLMenuElement AnyPtr
public export
data HTMLMetaElement         = UnsafeMkHTMLMetaElement AnyPtr
public export
data HTMLMeterElement        = UnsafeMkHTMLMeterElement AnyPtr
public export
data HTMLModElement          = UnsafeMkHTMLModElement AnyPtr
public export
data HTMLOListElement        = UnsafeMkHTMLOListElement AnyPtr
public export
data HTMLObjectElement       = UnsafeMkHTMLObjectElement AnyPtr
public export
data HTMLOptGroupElement     = UnsafeMkHTMLOptGroupElement AnyPtr
public export
data HTMLOptionElement       = UnsafeMkHTMLOptionElement AnyPtr
public export
data HTMLOutputElement       = UnsafeMkHTMLOutputElement AnyPtr
public export
data HTMLParagraphElement    = UnsafeMkHTMLParagraphElement AnyPtr
public export
data HTMLParamElement        = UnsafeMkHTMLParamElement AnyPtr
public export
data HTMLPictureElement      = UnsafeMkHTMLPictureElement AnyPtr
public export
data HTMLPreElement          = UnsafeMkHTMLPreElement AnyPtr
public export
data HTMLProgressElement     = UnsafeMkHTMLProgressElement AnyPtr
public export
data HTMLQuoteElement        = UnsafeMkHTMLQuoteElement AnyPtr
public export
data HTMLScriptElement       = UnsafeMkHTMLScriptElement AnyPtr
public export
data HTMLSelectElement       = UnsafeMkHTMLSelectElement AnyPtr
public export
data HTMLSlotElement         = UnsafeMkHTMLSlotElement AnyPtr
public export
data HTMLSourceElement       = UnsafeMkHTMLSourceElement AnyPtr
public export
data HTMLSpanElement         = UnsafeMkHTMLSpanElement AnyPtr
public export
data HTMLStyleElement        = UnsafeMkHTMLStyleElement AnyPtr
public export
data HTMLTableCaptionElement = UnsafeMkHTMLTableCaptionElement AnyPtr
public export
data HTMLTableColElement     = UnsafeMkHTMLTableColElement AnyPtr
public export
data HTMLTableElement        = UnsafeMkHTMLTableElement AnyPtr
public export
data HTMLTableRowElement     = UnsafeMkHTMLTableRowElement AnyPtr
public export
data HTMLTableSectionElement = UnsafeMkHTMLTableSectionElement AnyPtr
public export
data HTMLTemplateElement     = UnsafeMkHTMLTemplateElement AnyPtr
public export
data HTMLTextAreaElement     = UnsafeMkHTMLTextAreaElement AnyPtr
public export
data HTMLTimeElement         = UnsafeMkHTMLTimeElement AnyPtr
public export
data HTMLTitleElement        = UnsafeMkHTMLTitleElement AnyPtr
public export
data HTMLTrackElement        = UnsafeMkHTMLTrackElement AnyPtr
public export
data HTMLUnknownElement      = UnsafeMkHTMLUnknownElement AnyPtr
public export
data HTMLUListElement        = UnsafeMkHTMLUListElement AnyPtr
public export
data HTMLVideoElement        = UnsafeMkHTMLVideoElement AnyPtr

-- th and td are a special case, with the extra HTMLTableCellElement interface

public export
data HTMLTableDataCellElement   = UnsafeMkHTMLTableDataCellElement   AnyPtr

public export
data HTMLTableHeaderCellElement = UnsafeMkHTMLTableHeaderCellElement AnyPtr

-- We don't like this, but idris took exception to our previous attempt

public export
data AnyHTMLElement
  = AHTMLAnchorElement          HTMLAnchorElement
  | AHTMLAreaElement            HTMLAreaElement
  | AHTMLAudioElement           HTMLAudioElement
  | AHTMLBRElement              HTMLBRElement
  | AHTMLBaseElement            HTMLBaseElement
  | AHTMLBodyElement            HTMLBodyElement
  | AHTMLButtonElement          HTMLButtonElement
  | AHTMLCanvasElement          HTMLCanvasElement
  | AHTMLDListElement           HTMLDListElement
  | AHTMLDataElement            HTMLDataElement
  | AHTMLDataListElement        HTMLDataListElement
  | AHTMLDetailsElement         HTMLDetailsElement
  | AHTMLDialogElement          HTMLDialogElement
  | AHTMLDirectoryElement       HTMLDirectoryElement
  | AHTMLDivElement             HTMLDivElement
  | AHTMLEmbedElement           HTMLEmbedElement
  | AHTMLFieldSetElement        HTMLFieldSetElement
  | AHTMLFormElement            HTMLFormElement
  | AHTMLHRElement              HTMLHRElement
  | AHTMLHeadElement            HTMLHeadElement
  | AHTMLHeadingElement         HTMLHeadingElement
  | AHTMLHtmlElement            HTMLHtmlElement
  | AHTMLIFrameElement          HTMLIFrameElement
  | AHTMLImageElement           HTMLImageElement
  | AHTMLInputElement           HTMLInputElement
  | AHTMLLIElement              HTMLLIElement
  | AHTMLLabelElement           HTMLLabelElement
  | AHTMLLegendElement          HTMLLegendElement
  | AHTMLLinkElement            HTMLLinkElement
  | AHTMLMapElement             HTMLMapElement
  | AHTMLMediaElement           HTMLMediaElement
  | AHTMLMenuElement            HTMLMenuElement
  | AHTMLMetaElement            HTMLMetaElement
  | AHTMLMeterElement           HTMLMeterElement
  | AHTMLModElement             HTMLModElement
  | AHTMLOListElement           HTMLOListElement
  | AHTMLObjectElement          HTMLObjectElement
  | AHTMLOptGroupElement        HTMLOptGroupElement
  | AHTMLOptionElement          HTMLOptionElement
  | AHTMLOutputElement          HTMLOutputElement
  | AHTMLParagraphElement       HTMLParagraphElement
  | AHTMLParamElement           HTMLParamElement
  | AHTMLPictureElement         HTMLPictureElement
  | AHTMLPreElement             HTMLPreElement
  | AHTMLProgressElement        HTMLProgressElement
  | AHTMLQuoteElement           HTMLQuoteElement
  | AHTMLScriptElement          HTMLScriptElement
  | AHTMLSelectElement          HTMLSelectElement
  | AHTMLSlotElement            HTMLSlotElement
  | AHTMLSourceElement          HTMLSourceElement
  | AHTMLSpanElement            HTMLSpanElement
  | AHTMLStyleElement           HTMLStyleElement
  | AHTMLTableCaptionElement    HTMLTableCaptionElement
  | AHTMLTableDataCellElement   HTMLTableDataCellElement
  | AHTMLTableHeaderCellElement HTMLTableHeaderCellElement
  | AHTMLTableColElement        HTMLTableColElement
  | AHTMLTableElement           HTMLTableElement
  | AHTMLTableRowElement        HTMLTableRowElement
  | AHTMLTableSectionElement    HTMLTableSectionElement
  | AHTMLTemplateElement        HTMLTemplateElement
  | AHTMLTextAreaElement        HTMLTextAreaElement
  | AHTMLTimeElement            HTMLTimeElement
  | AHTMLTitleElement           HTMLTitleElement
  | AHTMLTrackElement           HTMLTrackElement
  | AHTMLUListElement           HTMLUListElement
  | AHTMLUnknownElement         HTMLUnknownElement
  | AHTMLVideoElement           HTMLVideoElement

-- Their instances

export IsPtr HTMLAnchorElement          where toAnyPtr (UnsafeMkHTMLAnchorElement e) = e
export IsPtr HTMLAreaElement            where toAnyPtr (UnsafeMkHTMLAreaElement e) = e
export IsPtr HTMLAudioElement           where toAnyPtr (UnsafeMkHTMLAudioElement e) = e
export IsPtr HTMLBRElement              where toAnyPtr (UnsafeMkHTMLBRElement e) = e
export IsPtr HTMLBaseElement            where toAnyPtr (UnsafeMkHTMLBaseElement e) = e
export IsPtr HTMLBodyElement            where toAnyPtr (UnsafeMkHTMLBodyElement e) = e
export IsPtr HTMLButtonElement          where toAnyPtr (UnsafeMkHTMLButtonElement e) = e
export IsPtr HTMLCanvasElement          where toAnyPtr (UnsafeMkHTMLCanvasElement e) = e
export IsPtr HTMLDListElement           where toAnyPtr (UnsafeMkHTMLDListElement e) = e
export IsPtr HTMLDataElement            where toAnyPtr (UnsafeMkHTMLDataElement e) = e
export IsPtr HTMLDataListElement        where toAnyPtr (UnsafeMkHTMLDataListElement e) = e
export IsPtr HTMLDetailsElement         where toAnyPtr (UnsafeMkHTMLDetailsElement e) = e
export IsPtr HTMLDialogElement          where toAnyPtr (UnsafeMkHTMLDialogElement e) = e
export IsPtr HTMLDirectoryElement       where toAnyPtr (UnsafeMkHTMLDirectoryElement e) = e
export IsPtr HTMLDivElement             where toAnyPtr (UnsafeMkHTMLDivElement e) = e
export IsPtr HTMLEmbedElement           where toAnyPtr (UnsafeMkHTMLEmbedElement e) = e
export IsPtr HTMLFieldSetElement        where toAnyPtr (UnsafeMkHTMLFieldSetElement e) = e
export IsPtr HTMLFormElement            where toAnyPtr (UnsafeMkHTMLFormElement e) = e
export IsPtr HTMLHRElement              where toAnyPtr (UnsafeMkHTMLHRElement e) = e
export IsPtr HTMLHeadElement            where toAnyPtr (UnsafeMkHTMLHeadElement e) = e
export IsPtr HTMLHeadingElement         where toAnyPtr (UnsafeMkHTMLHeadingElement e) = e
export IsPtr HTMLHtmlElement            where toAnyPtr (UnsafeMkHTMLHtmlElement e) = e
export IsPtr HTMLIFrameElement          where toAnyPtr (UnsafeMkHTMLIFrameElement e) = e
export IsPtr HTMLImageElement           where toAnyPtr (UnsafeMkHTMLImageElement e) = e
export IsPtr HTMLInputElement           where toAnyPtr (UnsafeMkHTMLInputElement e) = e
export IsPtr HTMLLIElement              where toAnyPtr (UnsafeMkHTMLLIElement e) = e
export IsPtr HTMLLabelElement           where toAnyPtr (UnsafeMkHTMLLabelElement e) = e
export IsPtr HTMLLegendElement          where toAnyPtr (UnsafeMkHTMLLegendElement e) = e
export IsPtr HTMLLinkElement            where toAnyPtr (UnsafeMkHTMLLinkElement e) = e
export IsPtr HTMLMapElement             where toAnyPtr (UnsafeMkHTMLMapElement e) = e
export IsPtr HTMLMediaElement           where toAnyPtr (UnsafeMkHTMLMediaElement e) = e
export IsPtr HTMLMenuElement            where toAnyPtr (UnsafeMkHTMLMenuElement e) = e
export IsPtr HTMLMetaElement            where toAnyPtr (UnsafeMkHTMLMetaElement e) = e
export IsPtr HTMLMeterElement           where toAnyPtr (UnsafeMkHTMLMeterElement e) = e
export IsPtr HTMLModElement             where toAnyPtr (UnsafeMkHTMLModElement e) = e
export IsPtr HTMLOListElement           where toAnyPtr (UnsafeMkHTMLOListElement e) = e
export IsPtr HTMLObjectElement          where toAnyPtr (UnsafeMkHTMLObjectElement e) = e
export IsPtr HTMLOptGroupElement        where toAnyPtr (UnsafeMkHTMLOptGroupElement e) = e
export IsPtr HTMLOptionElement          where toAnyPtr (UnsafeMkHTMLOptionElement e) = e
export IsPtr HTMLOutputElement          where toAnyPtr (UnsafeMkHTMLOutputElement e) = e
export IsPtr HTMLParagraphElement       where toAnyPtr (UnsafeMkHTMLParagraphElement e) = e
export IsPtr HTMLParamElement           where toAnyPtr (UnsafeMkHTMLParamElement e) = e
export IsPtr HTMLPictureElement         where toAnyPtr (UnsafeMkHTMLPictureElement e) = e
export IsPtr HTMLPreElement             where toAnyPtr (UnsafeMkHTMLPreElement e) = e
export IsPtr HTMLProgressElement        where toAnyPtr (UnsafeMkHTMLProgressElement e) = e
export IsPtr HTMLQuoteElement           where toAnyPtr (UnsafeMkHTMLQuoteElement e) = e
export IsPtr HTMLScriptElement          where toAnyPtr (UnsafeMkHTMLScriptElement e) = e
export IsPtr HTMLSelectElement          where toAnyPtr (UnsafeMkHTMLSelectElement e) = e
export IsPtr HTMLSlotElement            where toAnyPtr (UnsafeMkHTMLSlotElement e) = e
export IsPtr HTMLSourceElement          where toAnyPtr (UnsafeMkHTMLSourceElement e) = e
export IsPtr HTMLSpanElement            where toAnyPtr (UnsafeMkHTMLSpanElement e) = e
export IsPtr HTMLStyleElement           where toAnyPtr (UnsafeMkHTMLStyleElement e) = e
export IsPtr HTMLTableCaptionElement    where toAnyPtr (UnsafeMkHTMLTableCaptionElement e) = e
export IsPtr HTMLTableColElement        where toAnyPtr (UnsafeMkHTMLTableColElement e) = e
export IsPtr HTMLTableElement           where toAnyPtr (UnsafeMkHTMLTableElement e) = e
export IsPtr HTMLTableRowElement        where toAnyPtr (UnsafeMkHTMLTableRowElement e) = e
export IsPtr HTMLTableSectionElement    where toAnyPtr (UnsafeMkHTMLTableSectionElement e) = e
export IsPtr HTMLTemplateElement        where toAnyPtr (UnsafeMkHTMLTemplateElement e) = e
export IsPtr HTMLTextAreaElement        where toAnyPtr (UnsafeMkHTMLTextAreaElement e) = e
export IsPtr HTMLTimeElement            where toAnyPtr (UnsafeMkHTMLTimeElement e) = e
export IsPtr HTMLTitleElement           where toAnyPtr (UnsafeMkHTMLTitleElement e) = e
export IsPtr HTMLTrackElement           where toAnyPtr (UnsafeMkHTMLTrackElement e) = e
export IsPtr HTMLUListElement           where toAnyPtr (UnsafeMkHTMLUListElement e) = e
export IsPtr HTMLUnknownElement         where toAnyPtr (UnsafeMkHTMLUnknownElement e) = e
export IsPtr HTMLVideoElement           where toAnyPtr (UnsafeMkHTMLVideoElement e) = e
export IsPtr HTMLTableDataCellElement   where toAnyPtr (UnsafeMkHTMLTableDataCellElement e) = e
export IsPtr HTMLTableHeaderCellElement where toAnyPtr (UnsafeMkHTMLTableHeaderCellElement e) = e

export IsHTMLElement HTMLAnchorElement where
export IsHTMLElement HTMLAreaElement where
export IsHTMLElement HTMLAudioElement where
export IsHTMLElement HTMLBRElement where
export IsHTMLElement HTMLBaseElement where
export IsHTMLElement HTMLBodyElement where
export IsHTMLElement HTMLButtonElement where
export IsHTMLElement HTMLCanvasElement where
export IsHTMLElement HTMLDListElement where
export IsHTMLElement HTMLDataElement where
export IsHTMLElement HTMLDataListElement where
export IsHTMLElement HTMLDetailsElement where
export IsHTMLElement HTMLDialogElement where
export IsHTMLElement HTMLDirectoryElement where
export IsHTMLElement HTMLDivElement where
export IsHTMLElement HTMLEmbedElement where
export IsHTMLElement HTMLFieldSetElement where
export IsHTMLElement HTMLFormElement where
export IsHTMLElement HTMLHRElement where
export IsHTMLElement HTMLHeadElement where
export IsHTMLElement HTMLHeadingElement where
export IsHTMLElement HTMLHtmlElement where
export IsHTMLElement HTMLIFrameElement where
export IsHTMLElement HTMLImageElement where
export IsHTMLElement HTMLInputElement where
export IsHTMLElement HTMLLIElement where
export IsHTMLElement HTMLLabelElement where
export IsHTMLElement HTMLLegendElement where
export IsHTMLElement HTMLLinkElement where
export IsHTMLElement HTMLMapElement where
export IsHTMLElement HTMLMediaElement where
export IsHTMLElement HTMLMenuElement where
export IsHTMLElement HTMLMetaElement where
export IsHTMLElement HTMLMeterElement where
export IsHTMLElement HTMLModElement where
export IsHTMLElement HTMLOListElement where
export IsHTMLElement HTMLObjectElement where
export IsHTMLElement HTMLOptGroupElement where
export IsHTMLElement HTMLOptionElement where
export IsHTMLElement HTMLOutputElement where
export IsHTMLElement HTMLParagraphElement where
export IsHTMLElement HTMLParamElement where
export IsHTMLElement HTMLPictureElement where
export IsHTMLElement HTMLPreElement where
export IsHTMLElement HTMLProgressElement where
export IsHTMLElement HTMLQuoteElement where
export IsHTMLElement HTMLScriptElement where
export IsHTMLElement HTMLSelectElement where
export IsHTMLElement HTMLSlotElement where
export IsHTMLElement HTMLSourceElement where
export IsHTMLElement HTMLSpanElement where
export IsHTMLElement HTMLStyleElement where
export IsHTMLElement HTMLTableCaptionElement where
export IsHTMLElement HTMLTableColElement where
export IsHTMLElement HTMLTableElement where
export IsHTMLElement HTMLTableRowElement where
export IsHTMLElement HTMLTableSectionElement where
export IsHTMLElement HTMLTemplateElement where
export IsHTMLElement HTMLTextAreaElement where
export IsHTMLElement HTMLTimeElement where
export IsHTMLElement HTMLTitleElement where
export IsHTMLElement HTMLTrackElement where
export IsHTMLElement HTMLUListElement where
export IsHTMLElement HTMLUnknownElement where
export IsHTMLElement HTMLVideoElement where

export interface IsPtr e => IsHTMLTableCellElement e where

export IsHTMLTableCellElement e => IsHTMLElement e where

export IsHTMLTableCellElement HTMLTableDataCellElement where
export IsHTMLTableCellElement HTMLTableHeaderCellElement where

export
elementNameType : String -> Type
elementNameType name = case name of
  "a"          => HTMLAnchorElement
  "area"       => HTMLAreaElement
  "audio"      => HTMLAudioElement
  "br"         => HTMLBRElement
  "base"       => HTMLBaseElement
  "body"       => HTMLBodyElement
  "button"     => HTMLButtonElement
  "canvas"     => HTMLCanvasElement
  "dl"         => HTMLDListElement
  "data"       => HTMLDataElement
  "datalist"   => HTMLDataListElement
  "details"    => HTMLDetailsElement
  "dialog"     => HTMLDialogElement
  "dir"        => HTMLDirectoryElement
  "div"        => HTMLDivElement
  "emved"      => HTMLEmbedElement
  "fieldset"   => HTMLFieldSetElement
  "form"       => HTMLFormElement
  "hr"         => HTMLHRElement
  "head"       => HTMLHeadElement
  "h1"         => HTMLHeadingElement
  "h2"         => HTMLHeadingElement
  "h3"         => HTMLHeadingElement
  "h4"         => HTMLHeadingElement
  "h5"         => HTMLHeadingElement
  "h6"         => HTMLHeadingElement
  "html"       => HTMLHtmlElement
  "iframe"     => HTMLIFrameElement
  "img"        => HTMLImageElement
  "input"      => HTMLInputElement
  "li"         => HTMLLIElement
  "label"      => HTMLLabelElement
  "legend"     => HTMLLegendElement
  "link"       => HTMLLinkElement
  "map"        => HTMLMapElement
  "media"      => HTMLMediaElement
  "menu"       => HTMLMenuElement
  "meta"       => HTMLMetaElement
  "meter"      => HTMLMeterElement
  "ins"        => HTMLModElement
  "del"        => HTMLModElement
  "ol"         => HTMLOListElement
  "object"     => HTMLObjectElement
  "optgroup"   => HTMLOptGroupElement
  "option"     => HTMLOptionElement
  "output"     => HTMLOutputElement
  "p"          => HTMLParagraphElement
  "param"      => HTMLParamElement
  "picture"    => HTMLPictureElement
  "pre"        => HTMLPreElement
  "progress"   => HTMLProgressElement
  "blockquote" => HTMLQuoteElement
  "q"          => HTMLQuoteElement
  "script"     => HTMLScriptElement
  "select"     => HTMLSelectElement
  "slot"       => HTMLSlotElement
  "source"     => HTMLSourceElement
  "span"       => HTMLSpanElement
  "style"      => HTMLStyleElement
  "caption"    => HTMLTableCaptionElement
  "th"         => HTMLTableHeaderCellElement
  "td"         => HTMLTableDataCellElement
  "col"        => HTMLTableColElement
  "colgroup"   => HTMLTableColElement
  "table"      => HTMLTableElement
  "tr"         => HTMLTableRowElement
  "tfoot"      => HTMLTableSectionElement
  "thead"      => HTMLTableSectionElement
  "tbody"      => HTMLTableSectionElement
  "template"   => HTMLTemplateElement
  "textarea"   => HTMLTextAreaElement
  "time"       => HTMLTimeElement
  "title"      => HTMLTitleElement
  "track"      => HTMLTrackElement
  "ul"         => HTMLUListElement
  "video"      => HTMLVideoElement
  _            => HTMLUnknownElement

-- Idris gets upset with this for unclear reasons

-- elementNameCtor : (name : String) -> AnyPtr -> elementNameType name
-- elementNameCtor "a" = UnsafeMkHTMLAnchorElement
-- elementNameCtor "area" = UnsafeMkHTMLAreaElement
-- elementNameCtor "audio" = UnsafeMkHTMLAudioElement
-- elementNameCtor "br" = UnsafeMkHTMLBRElement
-- elementNameCtor "base" = UnsafeMkHTMLBaseElement
-- elementNameCtor "body" = UnsafeMkHTMLBodyElement
-- elementNameCtor "button" = UnsafeMkHTMLButtonElement
-- elementNameCtor "canvas" = UnsafeMkHTMLCanvasElement
-- elementNameCtor "dl" = UnsafeMkHTMLDListElement
-- elementNameCtor "data" = UnsafeMkHTMLDataElement
-- elementNameCtor "datalist" = UnsafeMkHTMLDataListElement
-- elementNameCtor "details" = UnsafeMkHTMLDetailsElement
-- elementNameCtor "dialog" = UnsafeMkHTMLDialogElement
-- elementNameCtor "dir" = UnsafeMkHTMLDirectoryElement
-- elementNameCtor "div" = UnsafeMkHTMLDivElement
-- elementNameCtor "emved" = UnsafeMkHTMLEmbedElement
-- elementNameCtor "fieldset" = UnsafeMkHTMLFieldSetElement
-- elementNameCtor "form" = UnsafeMkHTMLFormElement
-- elementNameCtor "hr" = UnsafeMkHTMLHRElement
-- elementNameCtor "head" = UnsafeMkHTMLHeadElement
-- elementNameCtor "h1" = UnsafeMkHTMLHeadingElement
-- elementNameCtor "h2" = UnsafeMkHTMLHeadingElement
-- elementNameCtor "h3" = UnsafeMkHTMLHeadingElement
-- elementNameCtor "h4" = UnsafeMkHTMLHeadingElement
-- elementNameCtor "h5" = UnsafeMkHTMLHeadingElement
-- elementNameCtor "h6" = UnsafeMkHTMLHeadingElement
-- elementNameCtor "html" = UnsafeMkHTMLHtmlElement
-- elementNameCtor "iframe" = UnsafeMkHTMLIFrameElement
-- elementNameCtor "img" = UnsafeMkHTMLImageElement
-- elementNameCtor "input" = UnsafeMkHTMLInputElement
-- elementNameCtor "li" = UnsafeMkHTMLLIElement
-- elementNameCtor "label" = UnsafeMkHTMLLabelElement
-- elementNameCtor "legend" = UnsafeMkHTMLLegendElement
-- elementNameCtor "link" = UnsafeMkHTMLLinkElement
-- elementNameCtor "map" = UnsafeMkHTMLMapElement
-- elementNameCtor "media" = UnsafeMkHTMLMediaElement
-- elementNameCtor "menu" = UnsafeMkHTMLMenuElement
-- elementNameCtor "meta" = UnsafeMkHTMLMetaElement
-- elementNameCtor "meter" = UnsafeMkHTMLMeterElement
-- elementNameCtor "ins" = UnsafeMkHTMLModElement
-- elementNameCtor "del" = UnsafeMkHTMLModElement
-- elementNameCtor "ol" = UnsafeMkHTMLOListElement
-- elementNameCtor "object" = UnsafeMkHTMLObjectElement
-- elementNameCtor "optgroup" = UnsafeMkHTMLOptGroupElement
-- elementNameCtor "option" = UnsafeMkHTMLOptionElement
-- elementNameCtor "output" = UnsafeMkHTMLOutputElement
-- elementNameCtor "p" = UnsafeMkHTMLParagraphElement
-- elementNameCtor "param" = UnsafeMkHTMLParamElement
-- elementNameCtor "picture" = UnsafeMkHTMLPictureElement
-- elementNameCtor "pre" = UnsafeMkHTMLPreElement
-- elementNameCtor "progress" = UnsafeMkHTMLProgressElement
-- elementNameCtor "blockquote" = UnsafeMkHTMLQuoteElement
-- elementNameCtor "q" = UnsafeMkHTMLQuoteElement
-- elementNameCtor "script" = UnsafeMkHTMLScriptElement
-- elementNameCtor "select" = UnsafeMkHTMLSelectElement
-- elementNameCtor "slot" = UnsafeMkHTMLSlotElement
-- elementNameCtor "source" = UnsafeMkHTMLSourceElement
-- elementNameCtor "span" = UnsafeMkHTMLSpanElement
-- elementNameCtor "style" = UnsafeMkHTMLStyleElement
-- elementNameCtor "caption" = UnsafeMkHTMLTableCaptionElement
-- elementNameCtor "th" = UnsafeMkHTMLTableHeaderCellElement
-- elementNameCtor "td" = UnsafeMkHTMLTableDataCellElement
-- elementNameCtor "col" = UnsafeMkHTMLTableColElement
-- elementNameCtor "colgroup" = UnsafeMkHTMLTableColElement
-- elementNameCtor "table" = UnsafeMkHTMLTableElement
-- elementNameCtor "tr" = UnsafeMkHTMLTableRowElement
-- elementNameCtor "tfoot" = UnsafeMkHTMLTableSectionElement
-- elementNameCtor "thead" = UnsafeMkHTMLTableSectionElement
-- elementNameCtor "tbody" = UnsafeMkHTMLTableSectionElement
-- elementNameCtor "template" = UnsafeMkHTMLTemplateElement
-- elementNameCtor "textarea" = UnsafeMkHTMLTextAreaElement
-- elementNameCtor "time" = UnsafeMkHTMLTimeElement
-- elementNameCtor "title" = UnsafeMkHTMLTitleElement
-- elementNameCtor "track" = UnsafeMkHTMLTrackElement
-- elementNameCtor "ul" = UnsafeMkHTMLUListElement
-- elementNameCtor "video" = UnsafeMkHTMLVideoElement
-- elementNameCtor _ = UnsafeMkHTMLUnknownElement

export
IsPtr AnyHTMLElement where
  toAnyPtr a = case a of
    AHTMLAnchorElement          e => toAnyPtr e
    AHTMLAreaElement            e => toAnyPtr e
    AHTMLAudioElement           e => toAnyPtr e
    AHTMLBRElement              e => toAnyPtr e
    AHTMLBaseElement            e => toAnyPtr e
    AHTMLBodyElement            e => toAnyPtr e
    AHTMLButtonElement          e => toAnyPtr e
    AHTMLCanvasElement          e => toAnyPtr e
    AHTMLDListElement           e => toAnyPtr e
    AHTMLDataElement            e => toAnyPtr e
    AHTMLDataListElement        e => toAnyPtr e
    AHTMLDetailsElement         e => toAnyPtr e
    AHTMLDialogElement          e => toAnyPtr e
    AHTMLDirectoryElement       e => toAnyPtr e
    AHTMLDivElement             e => toAnyPtr e
    AHTMLEmbedElement           e => toAnyPtr e
    AHTMLFieldSetElement        e => toAnyPtr e
    AHTMLFormElement            e => toAnyPtr e
    AHTMLHRElement              e => toAnyPtr e
    AHTMLHeadElement            e => toAnyPtr e
    AHTMLHeadingElement         e => toAnyPtr e
    AHTMLHtmlElement            e => toAnyPtr e
    AHTMLIFrameElement          e => toAnyPtr e
    AHTMLImageElement           e => toAnyPtr e
    AHTMLInputElement           e => toAnyPtr e
    AHTMLLIElement              e => toAnyPtr e
    AHTMLLabelElement           e => toAnyPtr e
    AHTMLLegendElement          e => toAnyPtr e
    AHTMLLinkElement            e => toAnyPtr e
    AHTMLMapElement             e => toAnyPtr e
    AHTMLMediaElement           e => toAnyPtr e
    AHTMLMenuElement            e => toAnyPtr e
    AHTMLMetaElement            e => toAnyPtr e
    AHTMLMeterElement           e => toAnyPtr e
    AHTMLModElement             e => toAnyPtr e
    AHTMLOListElement           e => toAnyPtr e
    AHTMLObjectElement          e => toAnyPtr e
    AHTMLOptGroupElement        e => toAnyPtr e
    AHTMLOptionElement          e => toAnyPtr e
    AHTMLOutputElement          e => toAnyPtr e
    AHTMLParagraphElement       e => toAnyPtr e
    AHTMLParamElement           e => toAnyPtr e
    AHTMLPictureElement         e => toAnyPtr e
    AHTMLPreElement             e => toAnyPtr e
    AHTMLProgressElement        e => toAnyPtr e
    AHTMLQuoteElement           e => toAnyPtr e
    AHTMLScriptElement          e => toAnyPtr e
    AHTMLSelectElement          e => toAnyPtr e
    AHTMLSlotElement            e => toAnyPtr e
    AHTMLSourceElement          e => toAnyPtr e
    AHTMLSpanElement            e => toAnyPtr e
    AHTMLStyleElement           e => toAnyPtr e
    AHTMLTableCaptionElement    e => toAnyPtr e
    AHTMLTableDataCellElement   e => toAnyPtr e
    AHTMLTableHeaderCellElement e => toAnyPtr e
    AHTMLTableColElement        e => toAnyPtr e
    AHTMLTableElement           e => toAnyPtr e
    AHTMLTableRowElement        e => toAnyPtr e
    AHTMLTableSectionElement    e => toAnyPtr e
    AHTMLTemplateElement        e => toAnyPtr e
    AHTMLTextAreaElement        e => toAnyPtr e
    AHTMLTimeElement            e => toAnyPtr e
    AHTMLTitleElement           e => toAnyPtr e
    AHTMLTrackElement           e => toAnyPtr e
    AHTMLUListElement           e => toAnyPtr e
    AHTMLUnknownElement         e => toAnyPtr e
    AHTMLVideoElement           e => toAnyPtr e

IsHTMLElement AnyHTMLElement where

%foreign "browser:lambda: (elem) => document.createElement(elem)"
prim__createElement : String -> AnyPtr

export
createElement : (name : String) -> AnyHTMLElement
createElement name = case name of
  "a"          => AHTMLAnchorElement          $ UnsafeMkHTMLAnchorElement          $ prim__createElement name
  "area"       => AHTMLAreaElement            $ UnsafeMkHTMLAreaElement            $ prim__createElement name
  "audio"      => AHTMLAudioElement           $ UnsafeMkHTMLAudioElement           $ prim__createElement name
  "br"         => AHTMLBRElement              $ UnsafeMkHTMLBRElement              $ prim__createElement name
  "base"       => AHTMLBaseElement            $ UnsafeMkHTMLBaseElement            $ prim__createElement name
  "body"       => AHTMLBodyElement            $ UnsafeMkHTMLBodyElement            $ prim__createElement name
  "button"     => AHTMLButtonElement          $ UnsafeMkHTMLButtonElement          $ prim__createElement name
  "canvas"     => AHTMLCanvasElement          $ UnsafeMkHTMLCanvasElement          $ prim__createElement name
  "dl"         => AHTMLDListElement           $ UnsafeMkHTMLDListElement           $ prim__createElement name
  "data"       => AHTMLDataElement            $ UnsafeMkHTMLDataElement            $ prim__createElement name
  "datalist"   => AHTMLDataListElement        $ UnsafeMkHTMLDataListElement        $ prim__createElement name
  "details"    => AHTMLDetailsElement         $ UnsafeMkHTMLDetailsElement         $ prim__createElement name
  "dialog"     => AHTMLDialogElement          $ UnsafeMkHTMLDialogElement          $ prim__createElement name
  "dir"        => AHTMLDirectoryElement       $ UnsafeMkHTMLDirectoryElement       $ prim__createElement name
  "div"        => AHTMLDivElement             $ UnsafeMkHTMLDivElement             $ prim__createElement name
  "embed"      => AHTMLEmbedElement           $ UnsafeMkHTMLEmbedElement           $ prim__createElement name
  "fieldset"   => AHTMLFieldSetElement        $ UnsafeMkHTMLFieldSetElement        $ prim__createElement name
  "form"       => AHTMLFormElement            $ UnsafeMkHTMLFormElement            $ prim__createElement name
  "hr"         => AHTMLHRElement              $ UnsafeMkHTMLHRElement              $ prim__createElement name
  "head"       => AHTMLHeadElement            $ UnsafeMkHTMLHeadElement            $ prim__createElement name
  "h1"         => AHTMLHeadingElement         $ UnsafeMkHTMLHeadingElement         $ prim__createElement name
  "h2"         => AHTMLHeadingElement         $ UnsafeMkHTMLHeadingElement         $ prim__createElement name
  "h3"         => AHTMLHeadingElement         $ UnsafeMkHTMLHeadingElement         $ prim__createElement name
  "h4"         => AHTMLHeadingElement         $ UnsafeMkHTMLHeadingElement         $ prim__createElement name
  "h5"         => AHTMLHeadingElement         $ UnsafeMkHTMLHeadingElement         $ prim__createElement name
  "h6"         => AHTMLHeadingElement         $ UnsafeMkHTMLHeadingElement         $ prim__createElement name
  "html"       => AHTMLHtmlElement            $ UnsafeMkHTMLHtmlElement            $ prim__createElement name
  "iframe"     => AHTMLIFrameElement          $ UnsafeMkHTMLIFrameElement          $ prim__createElement name
  "img"        => AHTMLImageElement           $ UnsafeMkHTMLImageElement           $ prim__createElement name
  "input"      => AHTMLInputElement           $ UnsafeMkHTMLInputElement           $ prim__createElement name
  "li"         => AHTMLLIElement              $ UnsafeMkHTMLLIElement              $ prim__createElement name
  "label"      => AHTMLLabelElement           $ UnsafeMkHTMLLabelElement           $ prim__createElement name
  "legend"     => AHTMLLegendElement          $ UnsafeMkHTMLLegendElement          $ prim__createElement name
  "link"       => AHTMLLinkElement            $ UnsafeMkHTMLLinkElement            $ prim__createElement name
  "map"        => AHTMLMapElement             $ UnsafeMkHTMLMapElement             $ prim__createElement name
  "media"      => AHTMLMediaElement           $ UnsafeMkHTMLMediaElement           $ prim__createElement name
  "menu"       => AHTMLMenuElement            $ UnsafeMkHTMLMenuElement            $ prim__createElement name
  "meta"       => AHTMLMetaElement            $ UnsafeMkHTMLMetaElement            $ prim__createElement name
  "meter"      => AHTMLMeterElement           $ UnsafeMkHTMLMeterElement           $ prim__createElement name
  "ins"        => AHTMLModElement             $ UnsafeMkHTMLModElement             $ prim__createElement name
  "del"        => AHTMLModElement             $ UnsafeMkHTMLModElement             $ prim__createElement name
  "ol"         => AHTMLOListElement           $ UnsafeMkHTMLOListElement           $ prim__createElement name
  "object"     => AHTMLObjectElement          $ UnsafeMkHTMLObjectElement          $ prim__createElement name
  "optgroup"   => AHTMLOptGroupElement        $ UnsafeMkHTMLOptGroupElement        $ prim__createElement name
  "option"     => AHTMLOptionElement          $ UnsafeMkHTMLOptionElement          $ prim__createElement name
  "output"     => AHTMLOutputElement          $ UnsafeMkHTMLOutputElement          $ prim__createElement name
  "p"          => AHTMLParagraphElement       $ UnsafeMkHTMLParagraphElement       $ prim__createElement name
  "param"      => AHTMLParamElement           $ UnsafeMkHTMLParamElement           $ prim__createElement name
  "picture"    => AHTMLPictureElement         $ UnsafeMkHTMLPictureElement         $ prim__createElement name
  "pre"        => AHTMLPreElement             $ UnsafeMkHTMLPreElement             $ prim__createElement name
  "progress"   => AHTMLProgressElement        $ UnsafeMkHTMLProgressElement        $ prim__createElement name
  "blockquote" => AHTMLQuoteElement           $ UnsafeMkHTMLQuoteElement           $ prim__createElement name
  "q"          => AHTMLQuoteElement           $ UnsafeMkHTMLQuoteElement           $ prim__createElement name
  "script"     => AHTMLScriptElement          $ UnsafeMkHTMLScriptElement          $ prim__createElement name
  "select"     => AHTMLSelectElement          $ UnsafeMkHTMLSelectElement          $ prim__createElement name
  "slot"       => AHTMLSlotElement            $ UnsafeMkHTMLSlotElement            $ prim__createElement name
  "source"     => AHTMLSourceElement          $ UnsafeMkHTMLSourceElement          $ prim__createElement name
  "span"       => AHTMLSpanElement            $ UnsafeMkHTMLSpanElement            $ prim__createElement name
  "style"      => AHTMLStyleElement           $ UnsafeMkHTMLStyleElement           $ prim__createElement name
  "caption"    => AHTMLTableCaptionElement    $ UnsafeMkHTMLTableCaptionElement    $ prim__createElement name
  "th"         => AHTMLTableHeaderCellElement $ UnsafeMkHTMLTableHeaderCellElement $ prim__createElement name
  "td"         => AHTMLTableDataCellElement   $ UnsafeMkHTMLTableDataCellElement   $ prim__createElement name
  "col"        => AHTMLTableColElement        $ UnsafeMkHTMLTableColElement        $ prim__createElement name
  "colgroup"   => AHTMLTableColElement        $ UnsafeMkHTMLTableColElement        $ prim__createElement name
  "table"      => AHTMLTableElement           $ UnsafeMkHTMLTableElement           $ prim__createElement name
  "tr"         => AHTMLTableRowElement        $ UnsafeMkHTMLTableRowElement        $ prim__createElement name
  "tfoot"      => AHTMLTableSectionElement    $ UnsafeMkHTMLTableSectionElement    $ prim__createElement name
  "thead"      => AHTMLTableSectionElement    $ UnsafeMkHTMLTableSectionElement    $ prim__createElement name
  "tbody"      => AHTMLTableSectionElement    $ UnsafeMkHTMLTableSectionElement    $ prim__createElement name
  "template"   => AHTMLTemplateElement        $ UnsafeMkHTMLTemplateElement        $ prim__createElement name
  "textarea"   => AHTMLTextAreaElement        $ UnsafeMkHTMLTextAreaElement        $ prim__createElement name
  "time"       => AHTMLTimeElement            $ UnsafeMkHTMLTimeElement            $ prim__createElement name
  "title"      => AHTMLTitleElement           $ UnsafeMkHTMLTitleElement           $ prim__createElement name
  "track"      => AHTMLTrackElement           $ UnsafeMkHTMLTrackElement           $ prim__createElement name
  "ul"         => AHTMLUListElement           $ UnsafeMkHTMLUListElement           $ prim__createElement name
  "video"      => AHTMLVideoElement           $ UnsafeMkHTMLVideoElement           $ prim__createElement name
  _            => AHTMLUnknownElement         $ UnsafeMkHTMLUnknownElement         $ prim__createElement name

-- accessors

-- should be in Element.idr, but we don't want to move slot out of
-- here or depend on here, there.

export
(.assignedSlot) : HasIO io => IsElement e => e -> io (Maybe HTMLSlotElement)
(.assignedSlot) e = do
  slot <- unsafeNullablePtr <$> rawGetProperty "assignedSlot" e
  pure (UnsafeMkHTMLSlotElement <$> slot)
