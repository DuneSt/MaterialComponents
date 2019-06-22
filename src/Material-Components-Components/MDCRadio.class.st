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
	<mdcConstructor: #mdcRadio description: 'Creates a Radio buttons allowing the user to select one option from a set while seeing all available options.'>
	<mdcConstructor: #mdcRadio: description: 'Creates a Radio buttons allowing the user to select one option from a set while seeing all available options with implicit content.'>
	super initialize.
	self
		mdcClass: 'radio';
		autoInit
]
