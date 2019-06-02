Class {
	#name : #MDCTabBarTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Components-Components-Tests-Tabs'
}

{ #category : #tests }
MDCTabBarTest >> testBareBrush [
	self assert: [ :html | html mdcTabBar ] generates: '<div class="mdc-tab-bar" role="tablist" data-mdc-auto-init="MDCTabBar"></div>'
]

{ #category : #tests }
MDCTabBarTest >> testHasRole [
	self assert: [ :html | html mdcTabBar ] generatedIncludes: 'role="tablist"'
]

{ #category : #tests }
MDCTabBarTest >> testIsAutoInitialized [
	self assert: [ :html | html mdcTabBar ] generatedIncludes: 'data-mdc-auto-init="MDCTabBar"'
]

{ #category : #tests }
MDCTabBarTest >> testWithContent [
	self assert: [ :html | html mdcTabBar: 'Test' ] generates: '<div class="mdc-tab-bar" role="tablist" data-mdc-auto-init="MDCTabBar">Test</div>'
]
