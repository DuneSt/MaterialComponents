Class {
	#name : #MDCTabIndicatorTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Components-Components-Tests-Tabs'
}

{ #category : #tests }
MDCTabIndicatorTest >> testBareBrush [
	self assert: [ :html | html mdcTabIndicator ] generates: '<span class="mdc-tab-indicator"></span>'
]

{ #category : #tests }
MDCTabIndicatorTest >> testBeActive [
	self
		assert: [ :html | 
			html mdcTabIndicator
				beActive;
				with: 'Test' ]
		generates: '<span class="mdc-tab-indicator mdc-tab-indicator--active">Test</span>'
]

{ #category : #tests }
MDCTabIndicatorTest >> testBeActiveIf [
	self
		assert: [ :html | 
			html mdcTabIndicator
				beActiveIf: true;
				with: 'Test' ]
		generates: '<span class="mdc-tab-indicator mdc-tab-indicator--active">Test</span>'.
	self
		assert: [ :html | 
			html mdcTabIndicator
				beActiveIf: [ true ];
				with: 'Test' ]
		generates: '<span class="mdc-tab-indicator mdc-tab-indicator--active">Test</span>'.
	self
		assert: [ :html | 
			html mdcTabIndicator
				beActiveIf: false;
				with: 'Test' ]
		generates: '<span class="mdc-tab-indicator">Test</span>'.
	self
		assert: [ :html | 
			html mdcTabIndicator
				beActiveIf: [ false ];
				with: 'Test' ]
		generates: '<span class="mdc-tab-indicator">Test</span>'
]

{ #category : #tests }
MDCTabIndicatorTest >> testWithContent [
	self assert: [ :html | html mdcTabIndicator: 'Test' ] generates: '<span class="mdc-tab-indicator">Test</span>'
]
