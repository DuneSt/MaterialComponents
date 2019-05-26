"
Description
--------------------

I am an abstract component. My subclasses represent the main content of the MDCDemo.
"
Class {
	#name : #MDCDemoPage,
	#superclass : #MDCDemoComponent,
	#category : #'Material-Components-Demo-Core'
}

{ #category : #testing }
MDCDemoPage class >> isAbstract [
	^ self = MDCDemoPage
]

{ #category : #accessing }
MDCDemoPage class >> pageName [
	^ self subclassResponsibility
]

{ #category : #accessing }
MDCDemoPage class >> pagesToDisplay [
	^ (self allSubclasses reject: #isAbstract) sorted: #priority ascending
]

{ #category : #accessing }
MDCDemoPage class >> pathName [
	"Use to define the URL name"

	^ self pageName copyWithout: $  
]

{ #category : #accessing }
MDCDemoPage class >> priority [
	^ self subclassResponsibility
]

{ #category : #accessing }
MDCDemoPage >> pathName [
	^ self class pathName
]
