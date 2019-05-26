"
Description
--------------------

A header for the MDC for seaside demo with all the pages.
"
Class {
	#name : #MDCDemoHeader,
	#superclass : #MDCDemoComponent,
	#instVars : [
		'activeTab'
	],
	#category : #'Material-Components-Demo-Core'
}

{ #category : #accessing }
MDCDemoHeader >> possiblePages [
	^ MDCDemoPage pagesToDisplay
]

{ #category : #rendering }
MDCDemoHeader >> renderContentOn: html [
	self flag: #todo.	"finish header"
	self flag: #todo.	"Add icons to drawer?"
	html mdcDrawer
		modal;
		closeModalWhenElementIsSelected;
		with: [ html
				mdcDrawerContent: [ html
						mdcNavigationList: [ self possiblePages
								do: [ :aClass | 
									html mdcAnchorListItem
										callback: [ self displayInstanceOf: aClass ];
										isActiveIf: aClass = self rootComponent componentToDisplay class;
										with: [ html mdcListItemText: aClass pageName ] ] ] ] ].

	html
		mdcTopAppBar: [ html
				mdcTopAppBarRow: [ html mdcTopAppBarSection
						alignStart;
						with: [ html mdcTopAppBarNavigationIcon
								openModalDrawer;
								with: 'menu'.
							html image
								style: 'width: 40px; height: 40px;';
								url: (MDCDemoLibrary urlOf: 'logoSvg').
							html anchor
								style: 'text-decoration: none; color: rgb(255,255,255);';
								callback: [ "Just refresh" ];
								with: [ html mdcTopAppBarTitle: 'Material Components for Seaside' ] ].

					html mdcTopAppBarSection
						alignEnd;
						with: [ html text: '	Version ' , self version.
							self renderForkMeOnGithubOn: html ] ] ]
]

{ #category : #rendering }
MDCDemoHeader >> renderForkMeOnGithubOn: html [
	html anchor
		url: 'https://github.com/DuneSt/MaterialComponents';
		with: [ html image
				style: 'position: absolute; top: 0; right: 0; border: 0; z-index: 5;width: 100px; height: 100px;';
				url: 'https://s3.amazonaws.com/github/ribbons/forkme_right_darkblue_121621.png';
				altText: 'Fork me on GitHub' ].
	html text: '                   '
]
