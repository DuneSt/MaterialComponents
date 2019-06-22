"
Description
--------------------

I allow the user to select one option from a set while seeing all available options.

I should contain a MDCRadioButton to act as input.

I should be wrapped in a MDCFormField to managed the label style.

Public API and Key Messages
--------------------

Browse the #options protocol to find the different ways to customize the component.

Examples
--------------------

	html radioGroup
		callback: [ :value | value crLog ];
		selected: 2;
		with: [ :group | 
			1 to: 3 do: [ :int | 
				html
					mdcFormField: [ html
							mdcRadio: [ group mdcRadioButton
									id: html nextId;
									value: int ].
						html label
							for: html lastId;
							with: 'Value ' , int asString ] ] ]
"
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

{ #category : #options }
MDCRadio >> disabled: aBoolean [
	<mdcApi: 'Optional, set a disabled style to the radio button.' priority: 10>
	super disabled: aBoolean.
	aBoolean ifTrue: [ self mdcClass: 'radio--disabled' ]
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
