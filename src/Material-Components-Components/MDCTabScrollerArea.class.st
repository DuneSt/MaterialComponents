Class {
	#name : #MDCTabScrollerArea,
	#superclass : #MDCDivTag,
	#traits : 'TMDCBrush',
	#classTraits : 'TMDCBrush classTrait',
	#category : #'Material-Components-Components-Tabs'
}

{ #category : #initialization }
MDCTabScrollerArea >> initialize [
	<mdcConstructor: #mdcTabScrollerArea description: 'Creates a tab scroller area that should be included in a MDCScroller.'>
	<mdcConstructor: #mdcTabScrollerArea: description: 'Creates a tab scroller area that should be included in a MDCScroller with implicit content.'>
	super initialize.
	self mdcClass: 'tab-scroller__scroll-area'
]
