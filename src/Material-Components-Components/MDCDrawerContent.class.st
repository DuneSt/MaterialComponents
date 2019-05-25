Class {
	#name : #MDCDrawerContent,
	#superclass : #MDCDivTag,
	#traits : 'TMDCBrush',
	#classTraits : 'TMDCBrush classTrait',
	#category : #'Material-Components-Components-Layout'
}

{ #category : #initialization }
MDCDrawerContent >> initialize [
	super initialize.
	self mdcClass: 'drawer__content'
]
