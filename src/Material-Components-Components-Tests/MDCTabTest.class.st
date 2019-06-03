Class {
	#name : #MDCTabTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Components-Components-Tests-Tabs'
}

{ #category : #tests }
MDCTabTest >> testBareBrush [
	self assert: [ :html | html mdcTab ] generates: '<button class="mdc-tab" role="tab" data-mdc-auto-init="MDCTab"><span class="mdc-tab__ripple"></span></button>'
]

{ #category : #tests }
MDCTabTest >> testBeActive [
	self
		assert: [ :html | 
			html mdcTab
				beActive;
				with: 'Test' ]
		generates: '<button class="mdc-tab mdc-tab--active" role="tab" data-mdc-auto-init="MDCTab">Test<span class="mdc-tab__ripple"></span></button>'
]

{ #category : #tests }
MDCTabTest >> testBeActiveIf [
	self
		assert: [ :html | 
			html mdcTab
				beActiveIf: true;
				with: 'Test' ]
		generates: '<button class="mdc-tab mdc-tab--active" role="tab" data-mdc-auto-init="MDCTab">Test<span class="mdc-tab__ripple"></span></button>'.
	self
		assert: [ :html | 
			html mdcTab
				beActiveIf: [ true ];
				with: 'Test' ]
		generates: '<button class="mdc-tab mdc-tab--active" role="tab" data-mdc-auto-init="MDCTab">Test<span class="mdc-tab__ripple"></span></button>'.
	self
		assert: [ :html | 
			html mdcTab
				beActiveIf: false;
				with: 'Test' ]
		generates: '<button class="mdc-tab" role="tab" data-mdc-auto-init="MDCTab">Test<span class="mdc-tab__ripple"></span></button>'.
	self
		assert: [ :html | 
			html mdcTab
				beActiveIf: [ false ];
				with: 'Test' ]
		generates: '<button class="mdc-tab" role="tab" data-mdc-auto-init="MDCTab">Test<span class="mdc-tab__ripple"></span></button>'
]

{ #category : #tests }
MDCTabTest >> testHasRipple [
	self assert: [ :html | html mdcTab ] generatedIncludes: '<span class="mdc-tab__ripple"></span>'
]

{ #category : #tests }
MDCTabTest >> testHasRole [
	self assert: [ :html | html mdcTab ] generatedIncludes: 'role="tab"'
]

{ #category : #tests }
MDCTabTest >> testIsAutoInitialized [
	self assert: [ :html | html mdcTab ] generatedIncludes: 'data-mdc-auto-init="MDCTab"'
]

{ #category : #tests }
MDCTabTest >> testWithContent [
	self assert: [ :html | html mdcTab: 'Test' ] generates: '<button class="mdc-tab" role="tab" data-mdc-auto-init="MDCTab">Test<span class="mdc-tab__ripple"></span></button>'
]
