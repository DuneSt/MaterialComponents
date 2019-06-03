Class {
	#name : #MDCTabContent,
	#superclass : #MDCSpanTag,
	#traits : 'TMDCBrush',
	#classTraits : 'TMDCBrush classTrait',
	#category : #'Material-Components-Components-Tabs'
}

{ #category : #initialization }
MDCTabContent >> initialize [
	<mdcConstructor: #mdcTabContent description: 'Creates a tab content that should be included in a MDCTab.'>
	<mdcConstructor: #mdcTabContent: description: 'Creates a tab content that should be included in a MDCTab with implicit content.'>
	super initialize.
	self mdcClass: 'tab__content'
]
