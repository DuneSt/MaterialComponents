"
Description
--------------------

Page containing all the MDC for seaside components examples.
"
Class {
	#name : #MDCComponentsDemoPage,
	#superclass : #MDCDemoPageWithList,
	#category : #'Material-Components-Demo-Core'
}

{ #category : #accessing }
MDCComponentsDemoPage class >> pageName [
	^ 'Components'
]

{ #category : #accessing }
MDCComponentsDemoPage class >> priority [
	^ 30
]

{ #category : #rendering }
MDCComponentsDemoPage >> renderPageDescriptionOn: html [
	html
		paragraph:
			'The first part of Material Components for Seaside is the components. The MDC components are created with CSS, JavaScript, and HTML. You can use the components to construct web pages and web apps that are attractive, consistent, and functional. Pages developed with MDC will adhere to modern web design principles like browser portability, device independence, and graceful degradation. Most of them are based on Google''s MDC implementation and provides a binding for Seaside.'.
	html paragraph: 'The components are made available in the form of Seaside''s brushes.'
]

{ #category : #accessing }
MDCComponentsDemoPage >> screens [
	^ MDCComponentDemo subclasses
]
