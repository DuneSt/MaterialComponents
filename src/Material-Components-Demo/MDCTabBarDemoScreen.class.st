"
Description
--------------------

I am a screen containing divers demo on MDC tab bar.
"
Class {
	#name : #MDCTabBarDemoScreen,
	#superclass : #MDCComponentDemo,
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
	^ { MDCTabBar. MDCTabScroller. MDCTabScrollerArea. MDCTabScrollerContent }
]

{ #category : #accessing }
MDCTabBarDemoScreen >> pageNotes [
	^ 'Note: Some subcomposants of the tab bar can be used individually outside a tab bar.'
]

{ #category : #rendering }
MDCTabBarDemoScreen >> renderScreenContentOn: html [
	self render: self tabBar fullWidth: true on: html
]

{ #category : #code }
MDCTabBarDemoScreen >> renderTabBarDemoOn: html [
	"This example do not use any syntactic sugar to show the vanilla way of creating tabs. Other examples will introduce simpler way to create tabs."
	| kinds selected |
	kinds := OrderedDictionary
		with: 'Furry' -> (#pets -> #('Donald' 'Robin hood' 'Baloo' 'Malefic' 'The beast'))
		with: 'Human' -> (#accessibility -> #('Peter pan' 'Casimodo' 'Belle'))
		with: 'Other' -> (#help -> #('Genie' 'The dwarves' 'Stitch')).
	selected := 'Furry'.
	html div
		mdcElevation: 4;
		with: [ html
				mdcTabBar: [ html
						mdcTabScroller: [ html
								mdcTabScrollerArea: [ html
										mdcTabScrollerContent: [ kinds
												keysAndValuesDo: [ :kind :asso | 
													html mdcTab
														beActiveIf: kind = selected;
														onClick: ((html jQuery id: #demo1) load html: [ :canvas | selected := kind. (kinds at: selected) value do: [ :each | html mdcListItem: each ] ]);
														with: [ html
																mdcTabContent: [ html mdcIcon
																		tabIcon;
																		with: asso key.
																	html mdcTabLabel: kind ].
															html mdcTabIndicator
																beActiveIf: kind = selected;
																with: [ html mdcTabIndicatorContent underline ] ] ] ] ] ] ].
			html mdcList id: #demo1; with: [ (kinds at: selected) value do: [ :each | html mdcListItem: each ] ] ]
]

{ #category : #sections }
MDCTabBarDemoScreen >> tabBar [ 
	^ OrderedDictionary new
		add: 'Tab bar' -> #renderTabBarDemoOn:;
		yourself
]

{ #category : #accessing }
MDCTabBarDemoScreen >> warningMessage [
	^ 'Page under construction.'
]
