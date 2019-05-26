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

{ #category : #rendering }
MDCButtonDemoScreen >> renderScreenContentOn: html [
	self flag: #todo
]
