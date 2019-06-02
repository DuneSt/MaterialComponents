Class {
	#name : #MDCTabBar,
	#superclass : #MDCDivTag,
	#traits : 'TMDCAutoInitBrush',
	#classTraits : 'TMDCAutoInitBrush classTrait',
	#category : #'Material-Components-Components-Tabs'
}

{ #category : #initialization }
MDCTabBar >> initialize [
	<mdcConstructor: #mdcTabBar description: 'Creates a tab bar to organize and allow navigation between groups of content that are related and at the same level of hierarchy.'>
	<mdcConstructor: #mdcTabBar: description: 'Creates a tab bar to organize and allow navigation between groups of content that are related and at the same level of hierarchy with implicit content.'>
	super initialize.
	self
		mdcClass: 'tab-bar';
		role: 'tablist';
		autoInit
]
