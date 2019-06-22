"
Description
--------------------

I am a visual guide that shows which Tab is active. I should be part of a MDCTab.

Public API and Key Messages
--------------------

Browse the #options protocol to find the different ways to customize the component.

Examples
--------------------

	| kinds |
	kinds := OrderedDictionary
		with: 'Furry' -> (#pets -> #('Donald' 'Robin hood' 'Baloo' 'Malefic' 'The beast'))
		with: 'Human' -> (#accessibility -> #('Peter pan' 'Casimodo' 'Belle'))
		with: 'Other' -> (#help -> #('Genie' 'The dwarves' 'Stitch')).
		
	html
		mdcTabBar: [ html
				mdcTabScroller: [ html
						mdcTabScrollerArea: [ html
								mdcTabScrollerContent: [ kinds
										keysAndValuesDo: [ :kind :asso | 
											html mdcTab
												beActiveIf: kind = 'Furry';
												onClick: ((html jQuery id: #demo1) load html: [ :canvas | (kinds at: kind) value do: [ :each | html mdcListItem: each ] ]);
												with: [ html
														mdcTabContent: [ html mdcIcon
																tabIcon;
																with: asso key.
															html mdcTabLabel: kind ].
													html mdcTabIndicator
														beActiveIf: kind = 'Furry';
														with: [ html mdcTabUnderlinedIndicatorContent ] ] ] ] ] ] ].
	html mdcList
		id: #demo1;
		with: [ (kinds at: 'Furry') value do: [ :each | html mdcListItem: each ] ]
"
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
