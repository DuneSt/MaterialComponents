"
Description
--------------------

I am a brush to create a label to add in a button.

NOTE: The brush element is required for buttons with a trailing icon, but it is currently optional for buttons with no icon or a leading icon. In the latter cases, it is acceptable for the text label to simply exist directly within the button element. However, I may become mandatory for all cases in the future, so it is recommended to always include it to be future-proof. 

Examples
--------------------

	html mdcButtonLabel: 'Default'
"
Class {
	#name : #MDCButtonLabel,
	#superclass : #MDCSpanTag,
	#category : #'Material-Components-Components-Buttons'
}

{ #category : #initialization }
MDCButtonLabel >> initialize [
	<mdcConstructor: #mdcButtonLabel description: 'Creates a label to be displayed in a MDC button.'>
	<mdcConstructor: #mdcButtonLabel: description: 'Creates a label to be displayed in a MDC button with implicit content.'>
	super initialize.
	self mdcClass: 'button__label'
]
