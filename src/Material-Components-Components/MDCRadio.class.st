Class {
	#name : #MDCRadio,
	#superclass : #MDCDivTag,
	#traits : 'TMDCAutoInitBrush',
	#classTraits : 'TMDCAutoInitBrush classTrait',
	#category : #'Material-Components-Components-Toggle'
}

{ #category : #private }
MDCRadio >> after [
	super after.
	canvas mdcRadioBackground
]

{ #category : #initialization }
MDCRadio >> initialize [
	super initialize.
	self
		mdcClass: 'radio';
		autoInit
]
