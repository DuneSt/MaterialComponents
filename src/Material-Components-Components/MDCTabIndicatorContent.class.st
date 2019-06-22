"
Description
--------------------

I denote the tab indicator content. 

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
	#name : #MDCTabIndicatorContent,
	#superclass : #MDCSpanTag,
	#traits : 'TMDCBrush',
	#classTraits : 'TMDCBrush classTrait',
	#category : #'Material-Components-Components-Tabs'
}

{ #category : #options }
MDCTabIndicatorContent >> icon [
	<mdcApi: 'Optional. Denotes an icon tab indicator when the tab is active.' priority: 20>
	self
		mdcClass: 'tab-indicator__content--icon';
		class: 'material-icons';
		attributeAt: 'aria-hidden' put: 'true'
]

{ #category : #initialization }
MDCTabIndicatorContent >> initialize [
	<mdcConstructor: #mdcTabIndicatorContent description: 'Creates a tab indicator content that should be included in a MDCTabIndicator.'>
	<mdcConstructor: #mdcTabIndicatorContent: description: 'Creates a tab indicator content that should be included in a MDCTabIndicator with implicit content.'>
	<mdcConstructor: #mdcTabUnderlinedIndicatorContent description: 'Creates a tab indicator content that should be included in a MDCTabIndicator that will be underlined when active.'>
	<mdcConstructor: #mdcTabIconIndicatorContent: description: 'Creates a tab indicator content that will be denoted with an icon when active that should be included in a MDCTabIndicator with implicit content.'>
	
	super initialize.
	self mdcClass: 'tab-indicator__content'
]

{ #category : #options }
MDCTabIndicatorContent >> underline [
	<mdcApi: 'Optional. Denotes an underline tab indicator when the tab is active.' priority: 10>
	self mdcClass: 'tab-indicator__content--underline'
]
