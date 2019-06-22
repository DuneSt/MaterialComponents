"
Description
--------------------

I am a radio button input that should be contained in a MDCRadio.

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
