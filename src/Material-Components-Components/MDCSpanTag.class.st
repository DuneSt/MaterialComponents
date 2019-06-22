"
Description
--------------------

The <span> tag is used to group inline-elements in a document.

The <span> tag provides no visual change by itself.

The <span> tag provides a way to add a hook to a part of a text or a part of a document.
"
Class {
	#name : #MDCSpanTag,
	#superclass : #WATagBrush,
	#traits : 'TMDCBrush',
	#classTraits : 'TMDCBrush classTrait',
	#category : #'Material-Components-Components-Core'
}

{ #category : #accessing }
MDCSpanTag >> tag [
	^ 'span'
]
