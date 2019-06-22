Class {
	#name : #MDCRadioButton,
	#superclass : #WARadioButtonTag,
	#traits : 'TMDCBrush',
	#classTraits : 'TMDCBrush classTrait',
	#category : #'Material-Components-Components-Toggle'
}

{ #category : #initialization }
MDCRadioButton >> initialize [
	<mdcConstructor: #mdcRadioButton description: 'Creates a Radio buttons input to go inside a MDCRadio. Can either be sent to a HTML canvas or a radio group.'>
	super initialize.
	self mdcClass: 'radio__native-control'
]
