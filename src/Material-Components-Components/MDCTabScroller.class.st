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
