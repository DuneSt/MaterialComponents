"
Description
--------------------

I indicate the label of a MDCTab.

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
	#name : #MDCTabLabel,
	#superclass : #MDCSpanTag,
	#traits : 'TMDCBrush',
	#classTraits : 'TMDCBrush classTrait',
	#category : #'Material-Components-Components-Tabs'
}

{ #category : #initialization }
MDCTabLabel >> initialize [
	<mdcConstructor: #mdcTabLabel description: 'Creates a tab label that should be included in a MDCTabContent.'>
	<mdcConstructor: #mdcTabLabel: description: 'Creates a tab label that should be included in a MDCTabContent with implicit content.'>
	super initialize.
	self mdcClass: 'tab__text-label'
]
