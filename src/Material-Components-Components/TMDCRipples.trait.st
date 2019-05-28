Trait {
	#name : #TMDCRipples,
	#traits : 'TMDCBrush',
	#classTraits : 'TMDCBrush classTrait',
	#category : #'Material-Components-Components-Traits'
}

{ #category : #options }
TMDCRipples >> withRipple [
	<mdcApi: 'Adds a ripple to the element with the element is clicked.' priority: 100>
	self mdcClass: 'with-ripple'
]
