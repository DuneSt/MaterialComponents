Class {
	#name : #MDCRadioButton,
	#superclass : #WARadioButtonTag,
	#traits : 'TMDCBrush',
	#classTraits : 'TMDCBrush classTrait',
	#category : #'Material-Components-Components-Toggle'
}

{ #category : #initialization }
MDCRadioButton >> initialize [
	super initialize.
	self mdcClass: 'radio__native-control'
]
