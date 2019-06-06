Class {
	#name : #MDCTabIndicatorContentTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Components-Components-Tests-Tabs'
}

{ #category : #tests }
MDCTabIndicatorContentTest >> testBareBrush [
	self assert: [ :html | html mdcTabIndicatorContent ] generates: '<span class="mdc-tab-indicator__content"></span>'
]

{ #category : #tests }
MDCTabIndicatorContentTest >> testIcon [
	self assert: [ :html | html mdcTabIndicatorContent icon; with: 'Test' ] generates: '<span class="mdc-tab-indicator__content mdc-tab-indicator__content--icon material-icons" aria-hidden="true">Test</span>'
]

{ #category : #tests }
MDCTabIndicatorContentTest >> testUnderline [
	self assert: [ :html | html mdcTabIndicatorContent underline; with: 'Test' ] generates: '<span class="mdc-tab-indicator__content mdc-tab-indicator__content--underline">Test</span>'
]

{ #category : #tests }
MDCTabIndicatorContentTest >> testWithContent [
	self assert: [ :html | html mdcTabIndicatorContent: 'Test' ] generates: '<span class="mdc-tab-indicator__content">Test</span>'
]
