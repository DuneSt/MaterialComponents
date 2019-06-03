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
