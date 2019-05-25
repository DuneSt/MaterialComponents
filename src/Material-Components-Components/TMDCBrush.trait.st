Trait {
	#name : #TMDCBrush,
	#category : #'Material-Components-Components'
}

{ #category : #accessing }
TMDCBrush >> mdcClass: aString [
	self class: 'mdc-' , aString
]
