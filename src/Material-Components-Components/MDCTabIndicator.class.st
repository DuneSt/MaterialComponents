Class {
	#name : #MDCTabIndicator,
	#superclass : #MDCSpanTag,
	#traits : 'TMDCAutoInitBrush',
	#classTraits : 'TMDCAutoInitBrush classTrait',
	#category : #'Material-Components-Components-Tabs'
}

{ #category : #options }
MDCTabIndicator >> beActive [
	<mdcApi: 'Optional. Visually activates the indicator.' priority: 10>
	self mdcClass: 'tab-indicator--active'
]

{ #category : #options }
MDCTabIndicator >> beActiveIf: aValuable [
	<mdcApi: 'Optional. Visually activates the indicator if the value of the parameter is true (can be a valuable).' priority: 20>
	aValuable value ifTrue: [ self beActive ]
]

{ #category : #initialization }
MDCTabIndicator >> initialize [
	<mdcConstructor: #mdcTabIndicator description: 'Creates a tab indicator that is a visual guide that shows which Tab is active.'>
	<mdcConstructor: #mdcTabIndicator: description: 'Creates a tab indicator that is a visual guide that shows which Tab is active with implicit content.'>
	super initialize.
	self
		mdcClass: 'tab-indicator';
		autoInit
]
