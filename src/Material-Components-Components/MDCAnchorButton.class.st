"
Description
--------------------

Buttons communicate an action a user can take. They are typically placed throughout your UI, in places like dialogs, forms, cards, and toolbars.

I am a brush to create a button-like anchor following MDC style.

NOTE: I should contain a MDCButtonLabel. This is required for buttons with a trailing icon, but it is currently optional for buttons with no icon or a leading icon. In the latter cases, it is acceptable for the text label to simply exist directly within the button element. However, labels may become mandatory for all cases in the future, so it is recommended to always include it to be future-proof. 

Public API and Key Messages
--------------------

Browse the #options protocol to find the different ways to customize a button.

Examples
--------------------

	html mdcAnchorButton
		raised;
		dense;
		withRipple;
		label: 'Dense'
		
	html
		mdcAnchorButton: [ html mdcIcon
				buttonIcon;
				with: 'favorite'.
			html mdcButtonLabel: 'Icon' ]
		

"
Class {
	#name : #MDCAnchorButton,
	#superclass : #WAAnchorTag,
	#traits : 'TMDCButton + TMDCRipples',
	#classTraits : 'TMDCButton classTrait + TMDCRipples classTrait',
	#category : #'Material-Components-Components-Buttons'
}
