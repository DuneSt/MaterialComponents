Trait {
	#name : #TMDCButton,
	#traits : 'TMDCBrush',
	#classTraits : 'TMDCBrush classTrait',
	#category : #'Material-Components-Components-Traits'
}

{ #category : #options }
TMDCButton >> dense [
	<mdcApi: 'Optional. Makes the button text and container slightly smaller.' priority: 40>
	self mdcClass: 'button--dense'
]

{ #category : #'syntaxic sugar' }
TMDCButton >> icon: aString label: aString2 [
	<mdcApi: 'Syntactic sugar. Indicates the button’s text label and icon and directly wrap them inside a MDCButtonLabel and MDCIcon.' priority: 60>
	self
		with: [ self canvas mdcIcon
				buttonIcon;
				with: aString.
			self canvas mdcButtonLabel: aString2 ]
]

{ #category : #initialization }
TMDCButton >> initialize [
	<mdcConstructor: #mdcButton description: 'Creates a text button (if no option added) that is flush with the surface.'>
	<mdcConstructor: #mdcButton: description: 'Creates a text button that is flush with the surface with implicit content.'>
	super initialize.
	self mdcClass: 'button'
]

{ #category : #'syntaxic sugar' }
TMDCButton >> label: aStringOrBlock [
	<mdcApi: 'Syntactic sugar. Indicates the button’s text label and directly wrap it inside a MDCButtonLabel.' priority: 50>
	self with: [ self canvas mdcButtonLabel: aStringOrBlock ]
]

{ #category : #options }
TMDCButton >> outlined [
	<mdcApi: 'Optional. Styles an outlined button that is flush with the surface.' priority: 30>
	self mdcClass: 'button--outlined'
]

{ #category : #options }
TMDCButton >> raised [
	<mdcApi: 'Optional. Styles a contained button that is elevated above the surface.' priority: 10>
	self mdcClass: 'button--raised'
]

{ #category : #options }
TMDCButton >> unelevated [
	<mdcApi: 'Optional. Styles a contained button that is flush with the surface.' priority: 20>
	self mdcClass: 'button--unelevated'
]
