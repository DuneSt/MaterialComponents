"
Description
--------------------

I am an abstract component. My subclasses represent the main content of the MCDemo.
"
Class {
	#name : #MCDemoPage,
	#superclass : #MCDemoComponent,
	#category : #'Material-Components-Demo-Core'
}

{ #category : #testing }
MCDemoPage class >> isAbstract [
	^ self = MCDemoPage
]

{ #category : #accessing }
MCDemoPage class >> pageName [
	^ self subclassResponsibility
]

{ #category : #accessing }
MCDemoPage class >> pagesToDisplay [
	^ (self allSubclasses reject: #isAbstract) sorted: #priority descending
]

{ #category : #accessing }
MCDemoPage class >> pathName [
	"Use to define the URL name"

	^ self pageName copyWithout: $  
]

{ #category : #accessing }
MCDemoPage class >> priority [
	^ self subclassResponsibility
]

{ #category : #accessing }
MCDemoPage >> pathName [
	^ self class pathName
]
