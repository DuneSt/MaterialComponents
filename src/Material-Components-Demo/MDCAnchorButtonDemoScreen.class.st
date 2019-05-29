"
Description
--------------------

I am a screen containing divers demo on MDC buttons as anchors.
"
Class {
	#name : #MDCAnchorButtonDemoScreen,
	#superclass : #MDCComponentDemo,
	#category : #'Material-Components-Demo-Components'
}

{ #category : #accessing }
MDCAnchorButtonDemoScreen class >> description [
	^ 'Button-like anchors communicate an action a user can take. They are typically placed throughout your UI, in places like dialogs, forms, cards, and toolbars.'
]

{ #category : #accessing }
MDCAnchorButtonDemoScreen class >> icon [
	^ 'compAnchorPng'
]

{ #category : #accessing }
MDCAnchorButtonDemoScreen class >> title [
	^ 'Anchor buttons'
]

{ #category : #accessing }
MDCAnchorButtonDemoScreen >> actualClasses [
	^ { MDCAnchorButton. MDCButtonLabel }
]

{ #category : #sections }
MDCAnchorButtonDemoScreen >> outlinedAnchors [
	^ OrderedDictionary new
		add: 'Default' -> #renderDefaultOutlinedAnchorOn:;
		add: 'Dense' -> #renderDenseOutlinedAnchorOn:;
		add: 'Icon' -> #renderIconOutlinedAnchorOn:;
		yourself
]

{ #category : #sections }
MDCAnchorButtonDemoScreen >> raisedAnchors [
	^ OrderedDictionary new
		add: 'Default' -> #renderDefaultRaisedAnchorOn:;
		add: 'Dense' -> #renderDenseRaisedAnchorOn:;
		add: 'Icon' -> #renderIconRaisedAnchorOn:;
		yourself
]

{ #category : #code }
MDCAnchorButtonDemoScreen >> renderDefaultOutlinedAnchorOn: html [
	html mdcAnchorButton
		callback: [ 'Log from anchor demo' logCr ];
		outlined;
		withRipple;
		label: 'Default'
]

{ #category : #code }
MDCAnchorButtonDemoScreen >> renderDefaultRaisedAnchorOn: html [
	html mdcAnchorButton
		callback: [ 'Log from anchor demo' logCr ];
		raised;
		withRipple;
		label: 'Default'
]

{ #category : #code }
MDCAnchorButtonDemoScreen >> renderDefaultShapedAnchorOn: html [
	html mdcAnchorButton
		callback: [ 'Log from anchor demo' logCr ];
		raised;
		mdcClass: 'demo-button-shaped'; "Check MDC documentation on their mixin to know how to generate this class"
		withRipple;
		label: 'Default'
]

{ #category : #code }
MDCAnchorButtonDemoScreen >> renderDefaultTextAnchorOn: html [
	html mdcAnchorButton
		callback: [ 'Log from anchor demo' logCr ];
		with: [ html mdcButtonLabel: 'Default' ]
]

{ #category : #code }
MDCAnchorButtonDemoScreen >> renderDefaultUnelevatedAnchorOn: html [
	html mdcAnchorButton
		callback: [ 'Log from anchor demo' logCr ];
		unelevated;
		withRipple;
		label: 'Default'
]

{ #category : #code }
MDCAnchorButtonDemoScreen >> renderDenseOutlinedAnchorOn: html [
	html mdcAnchorButton
		callback: [ 'Log from anchor demo' logCr ];
		outlined;
		dense;
		withRipple;
		label: 'Dense'
]

{ #category : #code }
MDCAnchorButtonDemoScreen >> renderDenseRaisedAnchorOn: html [
	html mdcAnchorButton
		callback: [ 'Log from anchor demo' logCr ];
		raised;
		dense;
		withRipple;
		label: 'Dense'
]

{ #category : #code }
MDCAnchorButtonDemoScreen >> renderDenseShapedAnchorOn: html [
	html mdcAnchorButton
		callback: [ 'Log from anchor demo' logCr ];
		raised;
		mdcClass: 'demo-button-shaped'; "Check MDC documentation on their mixin to know how to generate this class"
		dense;
		withRipple;
		label: 'Dense'
]

{ #category : #code }
MDCAnchorButtonDemoScreen >> renderDenseTextAnchorOn: html [
	html mdcAnchorButton
		callback: [ 'Log from anchor demo' logCr ];
		dense;
		label: 'Dense'
]

{ #category : #code }
MDCAnchorButtonDemoScreen >> renderDenseUnelevatedAnchorOn: html [
	html mdcAnchorButton
		callback: [ 'Log from anchor demo' logCr ];
		unelevated;
		dense;
		withRipple;
		label: 'Dense'
]

{ #category : #code }
MDCAnchorButtonDemoScreen >> renderIconOutlinedAnchorOn: html [
	html mdcAnchorButton
		callback: [ 'Log from anchor demo' logCr ];
		outlined;
		withRipple;
		icon: 'favorite' label: 'Icon'
]

{ #category : #code }
MDCAnchorButtonDemoScreen >> renderIconRaisedAnchorOn: html [
	html mdcAnchorButton
		callback: [ 'Log from anchor demo' logCr ];
		raised;
		withRipple;
		icon: 'favorite' label: 'Icon'
]

{ #category : #code }
MDCAnchorButtonDemoScreen >> renderIconShapedAnchorOn: html [
	html mdcAnchorButton
		callback: [ 'Log from anchor demo' logCr ];
		raised;
		mdcClass: 'demo-button-shaped'; "Check MDC documentation on their mixin to know how to generate this class"
		withRipple;
		icon: 'favorite' label: 'Icon'
]

{ #category : #code }
MDCAnchorButtonDemoScreen >> renderIconTextAnchorOn: html [
	html mdcAnchorButton
		callback: [ 'Log from anchor demo' logCr ];
		with: [ html mdcIcon
				buttonIcon;
				with: 'favorite'.
			html mdcButtonLabel: 'Icon' ]
]

{ #category : #code }
MDCAnchorButtonDemoScreen >> renderIconTextAnchorWithSugarOn: html [
	html mdcAnchorButton
		callback: [ 'Log from anchor demo' logCr ];
		icon: 'favorite' label: 'Icon'
]

{ #category : #code }
MDCAnchorButtonDemoScreen >> renderIconUnelevatedAnchorOn: html [
	html mdcAnchorButton
		callback: [ 'Log from anchor demo' logCr ];
		unelevated;
		withRipple;
		icon: 'favorite' label: 'Icon'
]

{ #category : #rendering }
MDCAnchorButtonDemoScreen >> renderScreenContentOn: html [
	self
		render: self textAnchors on: html;
		render: self raisedAnchors on: html;
		render: self unelevatedAnchors on: html;
		render: self outlinedAnchors on: html;
		render: self shapedAnchors on: html
]

{ #category : #code }
MDCAnchorButtonDemoScreen >> renderTextAnchorWithRipplesOn: html [
	html mdcAnchorButton
		callback: [ 'Log from anchor demo' logCr ];
		withRipple;
		label: 'Ripples'
]

{ #category : #code }
MDCAnchorButtonDemoScreen >> renderTextAnchorWithSugarOn: html [
	html mdcAnchorButton
		callback: [ 'Log from anchor demo' logCr ];
		label: 'Default'
]

{ #category : #sections }
MDCAnchorButtonDemoScreen >> shapedAnchors [
	^ OrderedDictionary new
		add: 'Default' -> #renderDefaultShapedAnchorOn:;
		add: 'Dense' -> #renderDenseShapedAnchorOn:;
		add: 'Icon' -> #renderIconShapedAnchorOn:;
		yourself
]

{ #category : #sections }
MDCAnchorButtonDemoScreen >> textAnchors [
	^ OrderedDictionary new
		add: 'Default' -> #renderDefaultTextAnchorOn:;
		add: 'Sugar on label' -> #renderTextAnchorWithSugarOn:;
		add: 'With ripples' -> #renderTextAnchorWithRipplesOn:;
		add: 'Dense' -> #renderDenseTextAnchorOn:;
		add: 'Icon' -> #renderIconTextAnchorOn:;
		add: 'Sugar on icon' -> #renderIconTextAnchorWithSugarOn:;
		yourself
]

{ #category : #sections }
MDCAnchorButtonDemoScreen >> unelevatedAnchors [
	^ OrderedDictionary new
		add: 'Default' -> #renderDefaultUnelevatedAnchorOn:;
		add: 'Dense' -> #renderDenseUnelevatedAnchorOn:;
		add: 'Icon' -> #renderIconUnelevatedAnchorOn:;
		yourself
]
