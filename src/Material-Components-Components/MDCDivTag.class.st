"
Description
--------------------

The <div> tag defines a division/section in a document.

Use the <div> tag to group block-elements to format them with styles.
"
Class {
	#name : #MDCDivTag,
	#superclass : #WATagBrush,
	#traits : 'TMDCBrush',
	#classTraits : 'TMDCBrush classTrait',
	#category : #'Material-Components-Components-Core'
}

{ #category : #accessing }
MDCDivTag >> tag [
	^ 'div'
]
