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
	html html: ' <aside class="mdc-drawer mdc-drawer--modal" data-mdc-auto-init="MDCDrawer">
    <div class="mdc-drawer__content">
      <nav class="mdc-list">
        <a class="mdc-list-item mdc-list-item--activated" href="#" aria-current="page">
          <i class="material-icons mdc-list-item__graphic" aria-hidden="true">inbox</i>
          <span class="mdc-list-item__text">Inbox</span>
        </a>
        <a class="mdc-list-item" href="#">
          <i class="material-icons mdc-list-item__graphic" aria-hidden="true">send</i>
          <span class="mdc-list-item__text">Outgoing</span>
        </a>
        <a class="mdc-list-item" href="#">
          <i class="material-icons mdc-list-item__graphic" aria-hidden="true">drafts</i>
          <span class="mdc-list-item__text">Drafts</span>
        </a>
      </nav>
    </div>
  </aside>

  <div class="mdc-drawer-scrim"></div>'.
	html mcTopAppBar: [ html
				mcTopAppBarRow: [ html mcTopAppBarSection
						alignStart;
						with: [ html html: ' <a href="#" class="demo-menu material-icons mdc-top-app-bar__navigation-icon">menu</a>'.html image
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
			"html
				mdlLayoutTabBar: [ self possiblePages
						do: [ :aClass | 
							html mdlLayoutTab
								callback: [ self displayInstanceOf: aClass ];
								isActiveIf: aClass = self rootComponent componentToDisplay class;
								with: aClass pageName ]" ].
						html document addLoadScript: 'const drawer = document.querySelector(".mdc-drawer").MDCDrawer;
const topAppBar = document.querySelector("header").MDCTopAppBar;
topAppBar.listen("MDCTopAppBar:nav", () => {
  drawer.open = !drawer.open;
});' js
	
						
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