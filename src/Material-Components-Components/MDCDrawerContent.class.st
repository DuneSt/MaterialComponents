Class {
	#name : #MDCDrawerContent,
	#superclass : #MDCDivTag,
	#traits : 'TMDCBrush',
	#classTraits : 'TMDCBrush classTrait',
	#category : #'Material-Components-Components-Core'
}

{ #category : #initialization }
MDCDrawerContent >> initialize [
	super initialize.
	self mdcClass: 'drawer__content'
]
