"
Description
--------------------

I am a screen containing divers demo on MDC tab bar.
"
Class {
	#name : #MDCTabBarDemoScreen,
	#superclass : #MDCComponentDemo,
	#instVars : [
		'datas'
	],
	#category : #'Material-Components-Demo-Components2'
}

{ #category : #accessing }
MDCTabBarDemoScreen class >> description [
	^ 'Tabs make it easy to explore and switch between different views.'
]

{ #category : #accessing }
MDCTabBarDemoScreen class >> icon [
	^ 'compTabsPng'
]

{ #category : #accessing }
MDCTabBarDemoScreen class >> title [
	^ 'Tab Bar'
]

{ #category : #accessing }
MDCTabBarDemoScreen >> actualClasses [
	^ {MDCTabBar . MDCTabScroller . MDCTabScrollerArea . MDCTabScrollerContent . MDCTab . MDCTabContent . MDCTabLabel . MDCTabIndicator . MDCTabIndicatorContent}
]

{ #category : #accessing }
MDCTabBarDemoScreen >> datas [
	^ datas
		ifNil: [ datas := OrderedDictionary
				with: 'Furry' -> (#pets -> #('Donald' 'Robin hood' 'Baloo' 'Malefic' 'The beast'))
				with: 'Human' -> (#accessibility -> #('Peter pan' 'Casimodo' 'Belle'))
				with: 'Other' -> (#help -> #('Genie' 'Stitch')) ]
]

{ #category : #accessing }
MDCTabBarDemoScreen >> pageNotes [
	^ #('Note: Some subcomposants of the tab bar can be used individually outside a tab bar.' 'Note 2: For readability the datas to display will only be included in the first example.')
]

{ #category : #rendering }
MDCTabBarDemoScreen >> renderListContentFor: kind on: html [
	^ (self datas at: kind) value do: [ :each | html mdcListItem: each ]
]

{ #category : #code }
MDCTabBarDemoScreen >> renderMinWidthTabsDemoOn: html [
	html div
		mdcElevation: 4;
		style: 'min-width: 350px;';
		with: [ html mdcList
				id: html nextId;
				with: [ self renderListContentFor: 'Furry' on: html ].
			html
				mdcTabBar: [ html
						mdcTabSimpleScroller: [ self datas
								keysAndValuesDo: [ :kind :asso | 
									html mdcTab
										minWidth;
										beActiveIf: kind = 'Furry';
										onClick: ((html jQuery id: html lastId) load html: [ :canvas | self renderListContentFor: kind on: html ]);
										with: [ html mdcTabContent: [ html mdcTabIcon: asso key ].
											html mdcTabIndicator
												beActiveIf: kind = 'Furry';
												with: [ html mdcTabUnderlinedIndicatorContent ] ] ] ] ] ]
]

{ #category : #rendering }
MDCTabBarDemoScreen >> renderScreenContentOn: html [
	self
		render: self tabBar fullWidth: true on: html;
		render: self simpleTabBar on: html;
		render: self tabIndicatorOptions on: html;
		render: self tabOptions on: html;
		render: self tabScrollerAlignments on: html
]

{ #category : #code }
MDCTabBarDemoScreen >> renderSimpleTabBarDemoOn: html [
	html div
		mdcElevation: 4;
		with: [ html mdcList
				id: html nextId;
				with: [ self renderListContentFor: 'Furry' on: html ].
			html
				mdcTabBar: [ html
						mdcTabSimpleScroller: [ self datas
								keysAndValuesDo: [ :kind :asso | 
									html
										mdcSimpleTabActive: kind = 'Furry'
										customization: [ :tab | tab onClick: ((html jQuery id: html lastId) load html: [ :canvas | self renderListContentFor: kind on: html ]) ]
										with: [ html mdcTabIcon: asso key.
											html mdcTabLabel: kind ] ] ] ] ]
]

{ #category : #code }
MDCTabBarDemoScreen >> renderStackedTabsDemoOn: html [
	html div
		mdcElevation: 4;
		with: [ html mdcList
				id: html nextId;
				with: [ self renderListContentFor: 'Furry' on: html ].
			html
				mdcTabBar: [ html
						mdcTabSimpleScroller: [ self datas
								keysAndValuesDo: [ :kind :asso | 
									html mdcTab
										stacked;
										beActiveIf: kind = 'Furry';
										onClick: ((html jQuery id: html lastId) load html: [ :canvas | self renderListContentFor: kind on: html ]);
										with: [ html
												mdcTabContent: [ html mdcTabIcon: asso key.
													html mdcTabLabel: kind ].
											html mdcTabIndicator
												beActiveIf: kind = 'Furry';
												with: [ html mdcTabUnderlinedIndicatorContent ] ] ] ] ] ]
]

{ #category : #code }
MDCTabBarDemoScreen >> renderTabBarDemoOn: html [
	"This example do not use any syntactic sugar to show the vanilla way of creating tabs. Other examples will introduce simpler way to create tabs."

	| kinds |
	kinds := OrderedDictionary
		with: 'Furry' -> (#pets -> #('Donald' 'Robin hood' 'Baloo' 'Malefic' 'The beast'))
		with: 'Human' -> (#accessibility -> #('Peter pan' 'Casimodo' 'Belle'))
		with: 'Other' -> (#help -> #('Genie' 'The dwarves' 'Stitch')).
	html div
		mdcElevation: 4;
		with: [ html
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
				with: [ (kinds at: 'Furry') value do: [ :each | html mdcListItem: each ] ] ]
]

{ #category : #code }
MDCTabBarDemoScreen >> renderTabIndicatorIconFadingDemoOn: html [
	html div
		mdcElevation: 4;
		with: [ html mdcList
				id: html nextId;
				with: [ self renderListContentFor: 'Furry' on: html ].
			html
				mdcTabBar: [ html
						mdcTabSimpleScroller: [ self datas
								keysAndValuesDo: [ :kind :asso | 
									html mdcTab
										beActiveIf: kind = 'Furry';
										onClick: ((html jQuery id: html lastId) load html: [ :canvas | self renderListContentFor: kind on: html ]);
										with: [ html
												mdcTabContent: [ html mdcTabIcon: asso key.
													html mdcTabLabel: kind ].
											html mdcTabIndicator
												fade;
												beActiveIf: kind = 'Furry';
												with: [ html mdcTabIconIndicatorContent: #done ] ] ] ] ] ]
]

{ #category : #code }
MDCTabBarDemoScreen >> renderTabIndicatorIconSlidingDemoOn: html [
	html div
		mdcElevation: 4;
		with: [ html mdcList
				id: html nextId;
				with: [ self renderListContentFor: 'Furry' on: html ].
			html
				mdcTabBar: [ html
						mdcTabSimpleScroller: [ self datas
								keysAndValuesDo: [ :kind :asso | 
									html mdcTab
										beActiveIf: kind = 'Furry';
										onClick: ((html jQuery id: html lastId) load html: [ :canvas | self renderListContentFor: kind on: html ]);
										with: [ html
												mdcTabContent: [ html mdcTabIcon: asso key.
													html mdcTabLabel: kind ].
											html mdcTabIndicator
												beActiveIf: kind = 'Furry';
												with: [ html mdcTabIconIndicatorContent: #done ] ] ] ] ] ]
]

{ #category : #code }
MDCTabBarDemoScreen >> renderTabScrollerCenterDemoOn: html [
	html div
		mdcElevation: 4;
		with: [ html mdcList
				id: html nextId;
				style: 'min-width: 300px';
				with: [ self renderListContentFor: 'Furry' on: html ].
			html
				mdcTabBar: [ html mdcTabScroller
						alignCenter;
						with: [ html
								mdcTabScrollerArea: [ html
										mdcTabScrollerContent: [ self datas
												keysAndValuesDo: [ :kind :asso | 
													html mdcTab
														minWidth;
														beActiveIf: kind = 'Furry';
														onClick: ((html jQuery id: html lastId) load html: [ :canvas | self renderListContentFor: kind on: html ]);
														with: [ html mdcTabContent: [ html mdcTabIcon: asso key ].
															html mdcTabIndicator
																beActiveIf: kind = 'Furry';
																with: [ html mdcTabUnderlinedIndicatorContent ] ] ] ] ] ] ] ]
]

{ #category : #code }
MDCTabBarDemoScreen >> renderTabScrollerEndDemoOn: html [
	html div
		mdcElevation: 4;
		with: [ html mdcList
				id: html nextId;
				style: 'min-width: 300px';
				with: [ self renderListContentFor: 'Furry' on: html ].
			html
				mdcTabBar: [ html mdcTabScroller
						alignEnd;
						with: [ html
								mdcTabScrollerArea: [ html
										mdcTabScrollerContent: [ self datas
												keysAndValuesDo: [ :kind :asso | 
													html mdcTab
														minWidth;
														beActiveIf: kind = 'Furry';
														onClick: ((html jQuery id: html lastId) load html: [ :canvas | self renderListContentFor: kind on: html ]);
														with: [ html mdcTabContent: [ html mdcTabIcon: asso key ].
															html mdcTabIndicator
																beActiveIf: kind = 'Furry';
																with: [ html mdcTabUnderlinedIndicatorContent ] ] ] ] ] ] ] ]
]

{ #category : #code }
MDCTabBarDemoScreen >> renderTabScrollerStartDemoOn: html [
	html div
		mdcElevation: 4;
		with: [ html mdcList
				id: html nextId;
				style: 'min-width: 300px';
				with: [ self renderListContentFor: 'Furry' on: html ].
			html
				mdcTabBar: [ html mdcTabScroller
						alignStart;
						with: [ html
								mdcTabScrollerArea: [ html
										mdcTabScrollerContent: [ self datas
												keysAndValuesDo: [ :kind :asso | 
													html mdcTab
														minWidth;
														beActiveIf: kind = 'Furry';
														onClick: ((html jQuery id: html lastId) load html: [ :canvas | self renderListContentFor: kind on: html ]);
														with: [ html mdcTabContent: [ html mdcTabIcon: asso key ].
															html mdcTabIndicator
																beActiveIf: kind = 'Furry';
																with: [ html mdcTabUnderlinedIndicatorContent ] ] ] ] ] ] ] ]
]

{ #category : #sections }
MDCTabBarDemoScreen >> simpleTabBar [ 
	^ OrderedDictionary new
		add: 'Tab bar with syntactic sugar' -> #renderSimpleTabBarDemoOn:;
		yourself
]

{ #category : #sections }
MDCTabBarDemoScreen >> tabBar [ 
	^ OrderedDictionary new
		add: 'Tab bar' -> #renderTabBarDemoOn:;
		yourself
]

{ #category : #sections }
MDCTabBarDemoScreen >> tabIndicatorOptions [
	^ OrderedDictionary new
		add: 'Sliding Icon Indicator' -> #renderTabIndicatorIconSlidingDemoOn:;
		add: 'Fading Icon Indicator' -> #renderTabIndicatorIconFadingDemoOn:;
		yourself
]

{ #category : #sections }
MDCTabBarDemoScreen >> tabOptions [
	^ OrderedDictionary new
		add: 'Stacked tabs' -> #renderStackedTabsDemoOn:;
		add: 'Min width tabs' -> #renderMinWidthTabsDemoOn:;
		yourself
]

{ #category : #sections }
MDCTabBarDemoScreen >> tabScrollerAlignments [
	^ OrderedDictionary new
		add: 'Content aligned left' -> #renderTabScrollerStartDemoOn:;
		add: 'Content aligned center' -> #renderTabScrollerCenterDemoOn:;
		add: 'Content aligned right' -> #renderTabScrollerEndDemoOn:;
		yourself
]

{ #category : #accessing }
MDCTabBarDemoScreen >> warningMessage [
	^ 'Page under construction.'
]
