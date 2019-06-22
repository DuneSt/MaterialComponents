Class {
	#name : #MDCFormField,
	#superclass : #MDCDivTag,
	#traits : 'TMDCAutoInitBrush',
	#classTraits : 'TMDCAutoInitBrush classTrait',
	#category : #'Material-Components-Components-Form'
}

{ #category : #initialization }
MDCFormField >> initialize [
	super initialize.
	self
		mdcClass: 'form-field';
		autoInit
]
