"
Description
--------------------

I am a screen containing divers demo on MDC buttons.
"
Class {
	#name : #MDCButtonDemoScreen,
	#superclass : #MDCComponentDemo,
	#category : #'Material-Components-Demo-Components'
}

{ #category : #accessing }
MDCButtonDemoScreen class >> description [
	^ 'Buttons communicate an action a user can take. They are typically placed throughout your UI, in places like dialogs, forms, cards, and toolbars.'
]

{ #category : #accessing }
MDCButtonDemoScreen class >> icon [
	^ 'compbuttonsPng'
]

{ #category : #accessing }
MDCButtonDemoScreen class >> title [
	^ 'Buttons'
]

{ #category : #accessing }
MDCButtonDemoScreen >> actualClasses [
	^ { MDCButton. MDCButtonLabel }
]

{ #category : #sections }
MDCButtonDemoScreen >> outlinedButtons [
	^ OrderedDictionary new
		add: 'Default' -> #renderDefaultOutlinedButtonOn:;
		add: 'Dense' -> #renderDenseOutlinedButtonOn:;
		add: 'Icon' -> #renderIconOutlinedButtonOn:;
		yourself
]

{ #category : #sections }
MDCButtonDemoScreen >> raisedButtons [
	^ OrderedDictionary new
		add: 'Default' -> #renderDefaultRaisedButtonOn:;
		add: 'Dense' -> #renderDenseRaisedButtonOn:;
		add: 'Icon' -> #renderIconRaisedButtonOn:;
		yourself
]

{ #category : #code }
MDCButtonDemoScreen >> renderDefaultOutlinedButtonOn: html [
	html mdcButton
		outlined;
		withRipples;
		label: 'Default'
]

{ #category : #code }
MDCButtonDemoScreen >> renderDefaultRaisedButtonOn: html [
	html mdcButton
		raised;
		withRipples;
		label: 'Default'
]

{ #category : #code }
MDCButtonDemoScreen >> renderDefaultShapedButtonOn: html [
	html mdcButton
		raised;
		mdcClass: 'demo-button-shaped'; "Check MDC documentation on their mixin to know how to generate this class"
		withRipples;
		label: 'Default'
]

{ #category : #code }
MDCButtonDemoScreen >> renderDefaultTextButtonOn: html [
	html mdcButton: [ html mdcButtonLabel: 'Default' ]
]

{ #category : #code }
MDCButtonDemoScreen >> renderDefaultUnelevatedButtonOn: html [
	html mdcButton
		unelevated;
		withRipples;
		label: 'Default'
]

{ #category : #code }
MDCButtonDemoScreen >> renderDenseOutlinedButtonOn: html [
	html mdcButton
		outlined;
		dense;
		withRipples;
		label: 'Dense'
]

{ #category : #code }
MDCButtonDemoScreen >> renderDenseRaisedButtonOn: html [
	html mdcButton
		raised;
		dense;
		withRipples;
		label: 'Dense'
]

{ #category : #code }
MDCButtonDemoScreen >> renderDenseShapedButtonOn: html [
	html mdcButton
		raised;
		mdcClass: 'demo-button-shaped'; "Check MDC documentation on their mixin to know how to generate this class"
		dense;
		withRipples;
		label: 'Dense'
]

{ #category : #code }
MDCButtonDemoScreen >> renderDenseTextButtonOn: html [
	html mdcButton
		dense;
		label: 'Dense'
]

{ #category : #code }
MDCButtonDemoScreen >> renderDenseUnelevatedButtonOn: html [
	html mdcButton
		unelevated;
		dense;
		withRipples;
		label: 'Dense'
]

{ #category : #code }
MDCButtonDemoScreen >> renderIconOutlinedButtonOn: html [
	html mdcButton
		outlined;
		withRipples;
		icon: 'favorite' label: 'Icon'
]

{ #category : #code }
MDCButtonDemoScreen >> renderIconRaisedButtonOn: html [
	html mdcButton
		raised;
		withRipples;
		icon: 'favorite' label: 'Icon'
]

{ #category : #code }
MDCButtonDemoScreen >> renderIconShapedButtonOn: html [
	html mdcButton
		raised;
		mdcClass: 'demo-button-shaped'; "Check MDC documentation on their mixin to know how to generate this class"
		withRipples;
		icon: 'favorite' label: 'Icon'
]

{ #category : #code }
MDCButtonDemoScreen >> renderIconTextButtonOn: html [
	html
		mdcButton: [ html mdcIcon
				buttonIcon;
				with: 'favorite'.
			html mdcButtonLabel: 'Icon' ]
]

{ #category : #code }
MDCButtonDemoScreen >> renderIconTextButtonWithSugarOn: html [
	html mdcButton icon: 'favorite' label: 'Icon'
]

{ #category : #code }
MDCButtonDemoScreen >> renderIconUnelevatedButtonOn: html [
	html mdcButton
		unelevated;
		withRipples;
		icon: 'favorite' label: 'Icon'
]

{ #category : #rendering }
MDCButtonDemoScreen >> renderScreenContentOn: html [
	self
		render: self textButtons on: html;
		render: self raisedButtons on: html;
		render: self unelevatedButtons on: html;
		render: self outlinedButtons on: html;
		render: self shapedButtons on: html
]

{ #category : #code }
MDCButtonDemoScreen >> renderTextButtonWithRipplesOn: html [
	html mdcButton
		withRipples;
		label: 'Ripples'
]

{ #category : #code }
MDCButtonDemoScreen >> renderTextButtonWithSugarOn: html [
	html mdcButton label: 'Default'
]

{ #category : #sections }
MDCButtonDemoScreen >> shapedButtons [
	^ OrderedDictionary new
		add: 'Default' -> #renderDefaultShapedButtonOn:;
		add: 'Dense' -> #renderDenseShapedButtonOn:;
		add: 'Icon' -> #renderIconShapedButtonOn:;
		yourself
]

{ #category : #sections }
MDCButtonDemoScreen >> textButtons [
	^ OrderedDictionary new
		add: 'Default' -> #renderDefaultTextButtonOn:;
		add: 'Sugar on label' -> #renderTextButtonWithSugarOn:;
		add: 'With ripples' -> #renderTextButtonWithRipplesOn:;
		add: 'Dense' -> #renderDenseTextButtonOn:;
		add: 'Icon' -> #renderIconTextButtonOn:;
		add: 'Sugar on icon' -> #renderIconTextButtonWithSugarOn:;
		yourself
]

{ #category : #sections }
MDCButtonDemoScreen >> unelevatedButtons [
	^ OrderedDictionary new
		add: 'Default' -> #renderDefaultUnelevatedButtonOn:;
		add: 'Dense' -> #renderDenseUnelevatedButtonOn:;
		add: 'Icon' -> #renderIconUnelevatedButtonOn:;
		yourself
]
