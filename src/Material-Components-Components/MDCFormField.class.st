Class {
	#name : #MDCFormField,
	#superclass : #MDCDivTag,
	#traits : 'TMDCAutoInitBrush',
	#classTraits : 'TMDCAutoInitBrush classTrait',
	#category : #'Material-Components-Components-Form'
}

{ #category : #initialization }
MDCFormField >> initialize [
	<mdcConstructor: #mdcFormField description: 'Creates a MDC Form Field that aligns a MDC Web form field (for example, a checkbox) with its label and makes it RTL-aware. It also activates a ripple effect upon interacting with the label.'>
	<mdcConstructor: #mdcFormField: description: 'Creates a MDC Form Field that aligns a MDC Web form field (for example, a checkbox) with its label and makes it RTL-aware. It also activates a ripple effect upon interacting with the label with implicit content.'>
	self flag: #todo. "add options + demo + documentation"
	super initialize.
	self
		mdcClass: 'form-field';
		autoInit
]
