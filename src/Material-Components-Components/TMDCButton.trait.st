Trait {
	#name : #TMDCButton,
	#traits : 'TMDCBrush',
	#classTraits : 'TMDCBrush classTrait',
	#category : #'Material-Components-Components-Traits'
}

{ #category : #initialization }
TMDCButton >> initialize [
	super initialize.
	self mdcClass: 'button'
]

{ #category : #options }
TMDCButton >> outlined [
	self mdcClass: 'button--outlined'
]

{ #category : #options }
TMDCButton >> raised [
	self mdcClass: 'button--raised'
]

{ #category : #options }
TMDCButton >> unelevated [
	self mdcClass: 'button--unelevated'
]
