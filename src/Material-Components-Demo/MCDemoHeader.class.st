"
Description
--------------------

A header for the MDL for seaside demo with all the pages.
"
Class {
	#name : #MCDemoHeader,
	#superclass : #MCDemoComponent,
	#instVars : [
		'activeTab'
	],
	#category : #'Material-Components-Demo-Core'
}

{ #category : #accessing }
MCDemoHeader >> possiblePages [
	^ MCDemoPage pagesToDisplay
]

{ #category : #rendering }
MCDemoHeader >> renderContentOn: html [
	self flag: #todo.
	html mcTopAppBar
		with: [ html
				mcTopAppBarRow: [ "html mdlNavigationLink
						callback: [ Just refresh ];
						with: [ html
								mdlLayoutTitle: [ html image
										style: 'width: 40px; height: 40px;';
										url: (MCDemoLibrary urlOf: 'logoSvg').
									html text: '    Material Components for Seaside' ] ].
					html mdlLayoutSpacer.
					html text: '	Version ' , self version.
					self renderForkMeOnGithubOn: html ].
			html
				mdlLayoutTabBar: [ self possiblePages
						do: [ :aClass | 
							html mdlLayoutTab
								callback: [ self displayInstanceOf: aClass ];
								isActiveIf: aClass = self rootComponent componentToDisplay class;
								with: aClass pageName ]" ] ]
]

{ #category : #rendering }
MCDemoHeader >> renderForkMeOnGithubOn: html [
	html anchor
		url: 'https://github.com/DuneSt/MaterialComponents';
		with: [ html image
				style: 'position: absolute; top: 0; right: 0; border: 0; z-index: 5;width: 100px; height: 100px;';
				url: 'https://s3.amazonaws.com/github/ribbons/forkme_right_darkblue_121621.png';
				altText: 'Fork me on GitHub' ].
	html text: '            '
]
