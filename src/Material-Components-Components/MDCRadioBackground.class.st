Class {
	#name : #MDCRadioBackground,
	#superclass : #MDCDivTag,
	#traits : 'TMDCBrush',
	#classTraits : 'TMDCBrush classTrait',
	#category : #'Material-Components-Components-Toggle'
}

{ #category : #private }
MDCRadioBackground >> after [
	super after.
	canvas
		mdcRadioOuterCircle;
		mdcRadioInnerCircle
]

{ #category : #initialization }
MDCRadioBackground >> initialize [
	super initialize.
	self mdcClass: 'radio__background'
]
