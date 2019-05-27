Trait {
	#name : #TMDCListItem,
	#traits : 'TMDCBrush',
	#classTraits : 'TMDCBrush classTrait',
	#category : #'Material-Components-Components-Traits'
}

{ #category : #initialization }
TMDCListItem >> initialize [
	self flag: #todo.
	super initialize.
	self mdcClass: 'list-item'
]

{ #category : #options }
TMDCListItem >> isActive [
	self mdcClass: 'list-item--activated'
]

{ #category : #options }
TMDCListItem >> isActiveIf: aBoolean [
	aBoolean value ifTrue: [ self isActive ]
]
