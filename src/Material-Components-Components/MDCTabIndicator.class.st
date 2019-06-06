Class {
	#name : #MDCTabIndicator,
	#superclass : #MDCSpanTag,
	#traits : 'TMDCBrush',
	#classTraits : 'TMDCBrush classTrait',
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

{ #category : #options }
MDCTabIndicator >> fade [
	<mdcApi: 'Optional. Sets up the tab indicator to fade in on activation and fade out on deactivation instead of moving between tabs.' priority: 30>
	self mdcClass: 'tab-indicator--fade'
]

{ #category : #initialization }
MDCTabIndicator >> initialize [
	<mdcConstructor: #mdcTabIndicator description: 'Creates a tab indicator that is a visual guide that shows which Tab is active.'>
	<mdcConstructor: #mdcTabIndicator: description: 'Creates a tab indicator that is a visual guide that shows which Tab is active with implicit content.'>
	super initialize.
	self mdcClass: 'tab-indicator'
]
