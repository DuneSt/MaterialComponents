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
