Trait {
	#name : #TMDCAutoInitBrush,
	#traits : 'TMDCBrush',
	#classTraits : 'TMDCBrush classTrait',
	#category : #'Material-Components-Components-Traits'
}

{ #category : #initialization }
TMDCAutoInitBrush >> autoInit [
	self flag: #todo.
	self autoInit: self class printString
]

{ #category : #initialization }
TMDCAutoInitBrush >> autoInit: aModuleName [
	self attributeAt: 'data-mdc-auto-init' put: aModuleName
]
