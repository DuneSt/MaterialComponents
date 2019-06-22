Class {
	#name : #MDCTogglesDemoScreen,
	#superclass : #MDCComponentDemo,
	#category : #'Material-Components-Demo-Components2'
}

{ #category : #accessing }
MDCTogglesDemoScreen class >> description [
	^ 'Toogles allow the user to select options from a set. The selection can be unique (radio buttons) or multiple (checkboxes).'
]

{ #category : #accessing }
MDCTogglesDemoScreen class >> icon [
	^ 'comptogglesPng'
]

{ #category : #accessing }
MDCTogglesDemoScreen class >> title [
	^ 'Toggles'
]

{ #category : #accessing }
MDCTogglesDemoScreen >> actualClasses [
	^ {  }
]

{ #category : #sections }
MDCTogglesDemoScreen >> radioButtons [
	^ OrderedDictionary new
		add: 'Radio buttons' -> #renderRadioButtonsDemoOn:;
		add: 'Disabled radio buttons' -> #renderDisabledRadioButtonsDemoOn:;
		yourself
]

{ #category : #code }
MDCTogglesDemoScreen >> renderDisabledRadioButtonsDemoOn: html [
	html radioGroup
		callback: [ :value | value crLog ];
		selected: true;
		with: [ :group | 
			#(true false)
				do: [ :boolean | 
					html
						mdcFormField: [ html mdcRadio
								disabled;
								with: [ group mdcRadioButton
										disabled;
										id: html nextId;
										value: boolean ].
							html label
								for: html lastId;
								with: boolean asString capitalized ] ] ]
]

{ #category : #code }
MDCTogglesDemoScreen >> renderRadioButtonsDemoOn: html [
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
]

{ #category : #rendering }
MDCTogglesDemoScreen >> renderScreenContentOn: html [
	self
		render: self radioButtons on: html
]
