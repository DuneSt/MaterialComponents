"
Description
--------------------

I allow for smooth native and animated scrolling of tabs.

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
	#name : #MDCTabScroller,
	#superclass : #MDCDivTag,
	#traits : 'TMDCBrush',
	#classTraits : 'TMDCBrush classTrait',
	#category : #'Material-Components-Components-Tabs'
}

{ #category : #options }
MDCTabScroller >> alignCenter [
	<mdcApi: 'Optional. Sets the elements inside the scroll content element to be aligned to the center of the scroll content element.' priority: 20>
	self mdcClass: 'tab-scroller--align-center'
]

{ #category : #options }
MDCTabScroller >> alignEnd [
	<mdcApi: 'Optional. Sets the elements inside the scroll content element to be aligned to the end of the scroll content element.' priority: 30>
	self mdcClass: 'tab-scroller--align-end'
]

{ #category : #options }
MDCTabScroller >> alignStart [
	<mdcApi: 'Optional. Sets the elements inside the scroll content element to be aligned to the start of the scroll content element.' priority: 10>
	self mdcClass: 'tab-scroller--align-start'
]

{ #category : #initialization }
MDCTabScroller >> initialize [
	<mdcConstructor: #mdcTabScroller description: 'Creates a tab scroller to allows for smooth native and animated scrolling of tabs.'>
	<mdcConstructor: #mdcTabScroller: description: 'Creates a tab scroller to allows for smooth native and animated scrolling of tabs with implicit content.'>
	<mdcConstructor: #mdcTabSimpleScroller: description: 'Syntactic sugar. Create a tab scroller with a simple scroller area and scroller content.'>
	super initialize.
	self mdcClass: 'tab-scroller'
]
