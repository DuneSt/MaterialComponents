Trait {
	#name : #TAutoInitBrush,
	#category : #'Material-Components-Components'
}

{ #category : #initialization }
TAutoInitBrush >> autoInit: aModuleName [
	self attributeAt: 'data-mdc-auto-init' put: aModuleName
]
