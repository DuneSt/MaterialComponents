Class {
	#name : #MDCButtonLabel,
	#superclass : #MDCSpanTag,
	#traits : 'TMDCBrush',
	#classTraits : 'TMDCBrush classTrait',
	#category : #'Material-Components-Components-Buttons'
}

{ #category : #initialization }
MDCButtonLabel >> initialize [
	self flag: #todo.
	super initialize.
	self mdcClass: 'button__label'
]
