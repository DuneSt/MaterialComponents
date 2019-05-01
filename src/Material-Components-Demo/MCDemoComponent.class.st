"
Description
--------------------

Abstract superclass of all demo components. 

I provide some conveniance methods to be used during the redering of the demo.
"
Class {
	#name : #MCDemoComponent,
	#superclass : #WAComponent,
	#category : #'Material-Components-Demo-Core'
}

{ #category : #convenience }
MCDemoComponent >> display: aComponentInstance [
	"Set a component instance as the component to display by the root component."

	self rootComponent componentToDisplay: aComponentInstance
]

{ #category : #convenience }
MCDemoComponent >> displayInstanceOf: aComponentClass [
	"Set a component class as the component to display by the root component."

	self rootComponent displayInstanceOf: aComponentClass
]

{ #category : #accessing }
MCDemoComponent >> rootComponent [
	^ self session rootComponent
]

{ #category : #rendering }
MCDemoComponent >> version [
	^ self rootComponent version
]
