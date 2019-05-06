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
	html mcTopAppBar: [ html
				mcTopAppBarRow: [ html mcTopAppBarSection
						alignStart;
						with: [ html image
								style: 'width: 40px; height: 40px;';
								url: (MCDemoLibrary urlOf: 'logoSvg').
							html anchor
								style: 'text-decoration: none; color: rgb(255,255,255);';
								callback: [ "Just refresh" ];
								with: [ html mcTopAppBarTitle: [ html text: 'Material Components for Seaside' ] ] ].

					html mcTopAppBarSection
						alignEnd;
						with: [ html text: '	Version ' , self version.
							self renderForkMeOnGithubOn: html ] ].
					html mcTopAppBarRow: [ html html: '<div class="mdc-tab-bar" role="tablist">


        <button class="mdc-tab mdc-tab--active" role="tab" aria-selected="true" tabindex="0">
          <span class="mdc-tab__content">
            <span class="mdc-tab__icon material-icons" aria-hidden="true">favorite</span>
            <span class="mdc-tab__text-label">Favorites</span>
          </span>
          <span class="mdc-tab-indicator mdc-tab-indicator--active">
            <span class="mdc-tab-indicator__content mdc-tab-indicator__content--underline"></span>
          </span>
          <span class="mdc-tab__ripple"></span>
        </button>


</div>' ]
			"html
				mdlLayoutTabBar: [ self possiblePages
						do: [ :aClass | 
							html mdlLayoutTab
								callback: [ self displayInstanceOf: aClass ];
								isActiveIf: aClass = self rootComponent componentToDisplay class;
								with: aClass pageName ]" ]
]

{ #category : #rendering }
MCDemoHeader >> renderForkMeOnGithubOn: html [
	html anchor
		url: 'https://github.com/DuneSt/MaterialComponents';
		with: [ html image
				style: 'position: absolute; top: 0; right: 0; border: 0; z-index: 5;width: 100px; height: 100px;';
				url: 'https://s3.amazonaws.com/github/ribbons/forkme_right_darkblue_121621.png';
				altText: 'Fork me on GitHub' ].
	html text: '                   '
]
