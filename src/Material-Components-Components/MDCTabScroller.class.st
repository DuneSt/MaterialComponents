Class {
	#name : #MDCTabScroller,
	#superclass : #MDCDivTag,
	#traits : 'TMDCAutoInitBrush',
	#classTraits : 'TMDCAutoInitBrush classTrait',
	#category : #'Material-Components-Components-Tabs'
}

{ #category : #initialization }
MDCTabScroller >> initialize [
	<mdcConstructor: #mdcTabScroller description: 'Creates a tab scroller to allows for smooth native and animated scrolling of tabs.'>
	<mdcConstructor: #mdcTabScroller: description: 'Creates a tab scroller to allows for smooth native and animated scrolling of tabs with implicit content.'>
	<mdcConstructor: #mdcTabSimpleScroller: description: 'Syntactic sugar. Create a tab scroller with a simple scroller area and scroller content.'>
	super initialize.
	self
		mdcClass: 'tab-scroller';
		autoInit
]
