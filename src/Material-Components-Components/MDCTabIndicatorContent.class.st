Class {
	#name : #MDCTabIndicatorContent,
	#superclass : #MDCSpanTag,
	#traits : 'TMDCBrush',
	#classTraits : 'TMDCBrush classTrait',
	#category : #'Material-Components-Components-Tabs'
}

{ #category : #initialization }
MDCTabIndicatorContent >> initialize [
	<mdcConstructor: #mdcTabIndicatorContent description: 'Creates a tab indicator content that should be included in a MDCTabIndicator.'>
	<mdcConstructor: #mdcTabIndicatorContent: description: 'Creates a tab indicator content that should be included in a MDCTabIndicator with implicit content.'>
	super initialize.
	self mdcClass: 'tab-indicator__content'
]

{ #category : #highlighting }
MDCTabIndicatorContent >> underline [
	<mdcApi: 'Optional. Denotes an underline tab indicator when the tab is active.' priority: 10>
	self mdcClass: 'tab-indicator__content--underline'
]
