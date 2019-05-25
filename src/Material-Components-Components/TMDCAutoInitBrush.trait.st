Trait {
	#name : #TMDCAutoInitBrush,
	#category : #'Material-Components-Components'
}

{ #category : #initialization }
TMDCAutoInitBrush >> autoInit [
	self autoInit: self class printString
]

{ #category : #initialization }
TMDCAutoInitBrush >> autoInit: aModuleName [
	self attributeAt: 'data-mdc-auto-init' put: aModuleName
]
