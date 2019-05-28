Class {
	#name : #MDCButtonLabel,
	#superclass : #MDCSpanTag,
	#traits : 'TMDCBrush',
	#classTraits : 'TMDCBrush classTrait',
	#category : #'Material-Components-Components-Buttons'
}

{ #category : #initialization }
MDCButtonLabel >> initialize [
	<mdcConstructor: #mdcButtonLabel description: 'Creates a label to be displayed in a MDC button.'>
	<mdcConstructor: #mdcButtonLabel: description: 'Creates a label to be displayed in a MDC button with implicit content.'>
	super initialize.
	self mdcClass: 'button__label'
]
