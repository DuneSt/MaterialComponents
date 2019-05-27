Trait {
	#name : #TMDCRipples,
	#traits : 'TMDCBrush',
	#classTraits : 'TMDCBrush classTrait',
	#category : #'Material-Components-Components-Traits'
}

{ #category : #options }
TMDCRipples >> withRipples [
	self ensureId.
	self canvas document addLoadScript: ('new mdc.ripple.MDCRipple(document.querySelector("#{1}"))' format: {self id}) js
]
