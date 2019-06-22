"
Description
--------------------

I organize and allow navigation between groups of content that are related and at the same level of hierarchy. The Tab Bar contains the Tab Scroller and Tab components.

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
	#name : #MDCTabBar,
	#superclass : #MDCDivTag,
	#traits : 'TMDCAutoInitBrush',
	#classTraits : 'TMDCAutoInitBrush classTrait',
	#category : #'Material-Components-Components-Tabs'
}

{ #category : #initialization }
MDCTabBar >> initialize [
	<mdcConstructor: #mdcTabBar description: 'Creates a tab bar to organize and allow navigation between groups of content that are related and at the same level of hierarchy.'>
	<mdcConstructor: #mdcTabBar: description: 'Creates a tab bar to organize and allow navigation between groups of content that are related and at the same level of hierarchy with implicit content.'>
	super initialize.
	self
		mdcClass: 'tab-bar';
		role: 'tablist';
		autoInit
]
