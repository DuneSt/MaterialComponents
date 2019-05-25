"
Description
--------------------

A simple page describing what is MDC for Seaside.
"
Class {
	#name : #MDCDemoAboutPage,
	#superclass : #MDCDemoPage,
	#category : #'Material-Components-Demo-Core'
}

{ #category : #accessing }
MDCDemoAboutPage class >> pageName [
	^ 'About'
]

{ #category : #accessing }
MDCDemoAboutPage class >> priority [
	^ 10
]

{ #category : #rendering }
MDCDemoAboutPage >> renderContentOn: html [
	self flag: #todo.
	html text: 'TODO ABOUT'
	"html mdlGrid
		noSpacing;
		class: 'mdl-doc';
		with: [ self renderMDDescriptionOn: html.
			html image
				class: 'mdl-illustration';
				url: (MDLDemoLibrary urlOf: 'metaphorPng').
			self renderMDLDescriptionOn: html.
			html image
				class: 'mdl-illustration';
				url: (MDLDemoLibrary urlOf: 'boldPng').
			self renderSeasideDescriptionOn: html.
			html image
				class: 'mdl-illustration';
				url: (MDLDemoLibrary urlOf: 'motionPng').
			html section beCell: 12 ]"
]

{ #category : #rendering }
MDCDemoAboutPage >> renderMDDescriptionOn: html [
	self flag: #todo.
	"html section
		beCell: 12;
		with: [ html
				definitionList: [ html definitionTerm: 'Material Design'.
					html
						definitionData: [ html
								paragraph: [ html
										text:
											'Material Design Lite (MDL) is a library of components for web developers based on Google''s Material Design Philosophy: A visual language for our users that synthesizes the classic principles of good design with the innovation and possibility of technology and science. Understanding the goals and principles of Material Design is critical to the proper use of the Material Design Lite components. If you have not yet read the '.
									html anchor
										url: 'https://material.io/guidelines/material-design/';
										with: 'Material Design Introduction'.
									html text: ' you should do so before attempting to use the components.' ] ] ] ]"
]

{ #category : #rendering }
MDCDemoAboutPage >> renderMDLDescriptionOn: html [
	self flag: #todo.
	"html section
		beCell: 12;
		with: [ html
				definitionList: [ html definitionTerm: 'Material Design Lite'.
					html
						definitionData: [ html
								paragraph:
									'Material Design Lite for Seaside lets you add a Material Design look and feel to your websites. It doesn’t rely on any JavaScript frameworks and aims to optimize for cross-device use, gracefully degrade in older browsers, and offer an experience that is immediately accessible.'.
							html
								paragraph: [ html text: 'This project is built on top of '.
									html anchor
										url: 'https://getmdl.io/index.html';
										with: 'Material Design Lite'.
									html text: ' implementation from Google.' ] ] ] ]"
]

{ #category : #rendering }
MDCDemoAboutPage >> renderSeasideDescriptionOn: html [
	self flag: #todo.
	"html section
		beCell: 12;
		with: [ html
				definitionList: [ html definitionTerm: 'Seaside'.
					html
						definitionData: [ html
								paragraph: [ html anchor
										url: 'https://github.com/SeasideSt/Seaside';
										with: 'Seaside'.
									html
										text:
											' provides a layered set of abstractions over HTTP and XHTML that let you build highly interactive web applications quickly, reusably and maintainably. It is based on Smalltalk, a proven and robust language that is implemented by different vendors.' ] ] ] ]"
]
