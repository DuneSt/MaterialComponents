"
Description
--------------------

Abstract superclass of all demo components. 

I provide some conveniance methods to be used during the redering of the demo.
"
Class {
	#name : #MDCDemoComponent,
	#superclass : #WAComponent,
	#category : #'Material-Components-Demo-Core'
}

{ #category : #convenience }
MDCDemoComponent >> display: aComponentInstance [
	"Set a component instance as the component to display by the root component."

	self rootComponent componentToDisplay: aComponentInstance
]

{ #category : #convenience }
MDCDemoComponent >> displayInstanceOf: aComponentClass [
	"Set a component class as the component to display by the root component."

	self rootComponent displayInstanceOf: aComponentClass
]

{ #category : #accessing }
MDCDemoComponent >> rootComponent [
	^ self session rootComponent
]

{ #category : #rendering }
MDCDemoComponent >> version [
	^ self rootComponent version
]
