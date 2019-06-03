Class {
	#name : #MDCTabIndicatorTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Components-Components-Tests-Tabs'
}

{ #category : #tests }
MDCTabIndicatorTest >> testBareBrush [
	self assert: [ :html | html mdcTabIndicator ] generates: '<span class="mdc-tab-indicator" data-mdc-auto-init="MDCTabIndicator"></span>'
]

{ #category : #tests }
MDCTabIndicatorTest >> testBeActive [
	self
		assert: [ :html | 
			html mdcTabIndicator
				beActive;
				with: 'Test' ]
		generates: '<span class="mdc-tab-indicator mdc-tab-indicator--active" data-mdc-auto-init="MDCTabIndicator">Test</span>'
]

{ #category : #tests }
MDCTabIndicatorTest >> testBeActiveIf [
	self
		assert: [ :html | 
			html mdcTabIndicator
				beActiveIf: true;
				with: 'Test' ]
		generates: '<span class="mdc-tab-indicator mdc-tab-indicator--active" data-mdc-auto-init="MDCTabIndicator">Test</span>'.
	self
		assert: [ :html | 
			html mdcTabIndicator
				beActiveIf: [ true ];
				with: 'Test' ]
		generates: '<span class="mdc-tab-indicator mdc-tab-indicator--active" data-mdc-auto-init="MDCTabIndicator">Test</span>'.
	self
		assert: [ :html | 
			html mdcTabIndicator
				beActiveIf: false;
				with: 'Test' ]
		generates: '<span class="mdc-tab-indicator" data-mdc-auto-init="MDCTabIndicator">Test</span>'.
	self
		assert: [ :html | 
			html mdcTabIndicator
				beActiveIf: [ false ];
				with: 'Test' ]
		generates: '<span class="mdc-tab-indicator" data-mdc-auto-init="MDCTabIndicator">Test</span>'
]

{ #category : #tests }
MDCTabIndicatorTest >> testIsAutoInitialized [
	self assert: [ :html | html mdcTabIndicator ] generatedIncludes: 'data-mdc-auto-init="MDCTabIndicator"'
]

{ #category : #tests }
MDCTabIndicatorTest >> testWithContent [
	self assert: [ :html | html mdcTabIndicator: 'Test' ] generates: '<span class="mdc-tab-indicator" data-mdc-auto-init="MDCTabIndicator">Test</span>'
]
