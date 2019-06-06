Trait {
	#name : #TMDCTab,
	#traits : 'TMDCBrush',
	#classTraits : 'TMDCBrush classTrait',
	#category : #'Material-Components-Components-Traits'
}

{ #category : #'instance creation' }
TMDCTab >> after [
	super after.
	"Tabs should always end with a tab ripple before closing tag."
	self canvas mdcTabRipple
]

{ #category : #options }
TMDCTab >> beActive [
	<mdcApi: 'Optional. Visually activates the indicator.' priority: 10>
	self mdcClass: 'tab--active'
]

{ #category : #options }
TMDCTab >> beActiveIf: aValuable [
	<mdcApi: 'Optional. Visually activates the indicator if the value of the parameter is true (can be a valuable).' priority: 20>
	aValuable value ifTrue: [ self beActive ]
]

{ #category : #initialization }
TMDCTab >> initialize [
	<mdcConstructor: #mdcTab description: 'Creates a tab to organize and allow navigation between groups of content that are related and at the same level of hierarchy. Each Tab governs the visibility of one group of content.'>
	<mdcConstructor: #mdcTab: description: 'Creates a tab to organize and allow navigation between groups of content that are related and at the same level of hierarchy with implicit content.'>
	super initialize.
	self
		mdcClass: 'tab';
		role: 'tab'.
		
	self resetType
]

{ #category : #initialization }
TMDCTab >> resetType [
	self explicitRequirement
]
