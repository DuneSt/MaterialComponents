Trait {
	#name : #TMDCBrush,
	#category : #'Material-Components-Components-Traits'
}

{ #category : #accessing }
TMDCBrush >> mdcClass: aString [
	self class: 'mdc-' , aString
]
