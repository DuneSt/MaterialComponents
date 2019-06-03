Class {
	#name : #MDCTabScrollerContent,
	#superclass : #MDCDivTag,
	#traits : 'TMDCBrush',
	#classTraits : 'TMDCBrush classTrait',
	#category : #'Material-Components-Components-Tabs'
}

{ #category : #initialization }
MDCTabScrollerContent >> initialize [
	<mdcConstructor: #mdcTabScrollerContent description: 'Creates a tab scroller content that should be included in a MDCScrollerArea.'>
	<mdcConstructor: #mdcTabScrollerContent: description: 'Creates a tab scroller mdcTabScrollerContent that should be included in a MDCScrollerArea with implicit content.'>
	super initialize.
	self mdcClass: 'tab-scroller__scroll-content'
]
