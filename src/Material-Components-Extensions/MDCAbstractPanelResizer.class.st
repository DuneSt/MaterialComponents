"
Description
--------------------

I am a simple component allowing to resize a panel of the window. 

"
Class {
	#name : #MDCAbstractPanelResizer,
	#superclass : #WAComponent,
	#category : #'Material-Components-Extensions'
}

{ #category : #accessing }
MDCAbstractPanelResizer >> initMethodName [
	^ self subclassResponsibility
]

{ #category : #accessing }
MDCAbstractPanelResizer >> panelClass [
	^ self subclassResponsibility
]

{ #category : #rendering }
MDCAbstractPanelResizer >> renderContentOn: html [
	html div
		mdcClass: self panelClass;
		mdcClass: 'resizer'.
	html document addLoadScript: self initMethodName js
]
