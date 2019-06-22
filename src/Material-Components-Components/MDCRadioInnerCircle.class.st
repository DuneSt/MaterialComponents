"
Description
--------------------

I am an inner part of a MDCRadioBackground.

The user should not instantiate me directly. My container will do it automatically.
"
Class {
	#name : #MDCRadioInnerCircle,
	#superclass : #MDCDivTag,
	#traits : 'TMDCBrush',
	#classTraits : 'TMDCBrush classTrait',
	#category : #'Material-Components-Components-Toggle'
}

{ #category : #initialization }
MDCRadioInnerCircle >> initialize [
	super initialize.
	self mdcClass: 'radio__inner-circle'
]
