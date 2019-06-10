Class {
	#name : #MDCTabScrollerTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Components-Components-Tests-Tabs'
}

{ #category : #tests }
MDCTabScrollerTest >> testAlignCenter [
	self
		assert: [ :html | 
			html mdcTabScroller
				alignCenter;
				with: 'Test' ]
		generates: '<div class="mdc-tab-scroller mdc-tab-scroller--align-center">Test</div>'
]

{ #category : #tests }
MDCTabScrollerTest >> testAlignEnd [
	self
		assert: [ :html | 
			html mdcTabScroller
				alignEnd;
				with: 'Test' ]
		generates: '<div class="mdc-tab-scroller mdc-tab-scroller--align-end">Test</div>'
]

{ #category : #tests }
MDCTabScrollerTest >> testAlignStart [
	self
		assert: [ :html | 
			html mdcTabScroller
				alignStart;
				with: 'Test' ]
		generates: '<div class="mdc-tab-scroller mdc-tab-scroller--align-start">Test</div>'
]

{ #category : #tests }
MDCTabScrollerTest >> testBareBrush [
	self assert: [ :html | html mdcTabScroller ] generates: '<div class="mdc-tab-scroller"></div>'
]

{ #category : #tests }
MDCTabScrollerTest >> testWithContent [
	self assert: [ :html | html mdcTabScroller: 'Test' ] generates: '<div class="mdc-tab-scroller">Test</div>'
]
