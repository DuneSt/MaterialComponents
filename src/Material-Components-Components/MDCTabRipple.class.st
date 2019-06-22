"
Description
--------------------

I denote the ripple of a MDCTab.

I should not be instantiated by the user. MDCTab instantiate me itself.
"
Class {
	#name : #MDCTabRipple,
	#superclass : #MDCSpanTag,
	#traits : 'TMDCBrush',
	#classTraits : 'TMDCBrush classTrait',
	#category : #'Material-Components-Components-Tabs'
}

{ #category : #initialization }
MDCTabRipple >> initialize [
	<mdcConstructor: #mdcTabRipple description: 'Denotes the ripple surface for the tab. Should be the last tag of the MDCTab.'>
	super initialize.
	self mdcClass: 'tab__ripple'
]
