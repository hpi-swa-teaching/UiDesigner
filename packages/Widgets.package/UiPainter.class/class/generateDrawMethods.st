code generation
generateDrawMethods
	"self generateDrawMethods."

	(PackageInfo named: #Widgets) classes 
		select: [:cls | (cls inheritsFrom: Morph) and: [cls isWidgetClass]]
		thenDo: [:cls | | qname src msg |
			qname := cls name allButFirst: 2. "Remove 'Ui' prefix."
			msg := '"Auto-generated. Do not edit but override. See UiPainter>>generateDrawMethods."'.
			src := 'draw{1}: a{1} {2}: aCanvas
	"Auto-generated. Do not edit. See UiPainter>>generateDrawMethods."
	
	self morph: a{1}.
	a{1} enabled
		ifTrue: [self draw{1}{3}EnabledOn: aCanvas]
		ifFalse: [self draw{1}{3}DisabledOn: aCanvas].'.
	
			UiPainter
				compile: (src format: {qname. 'on'. ''})
				classified: #drawing;
				compile: (src format: {qname. 'overlayOn'. 'Overlay'})
				classified: #drawing;
				compile: ('draw{1}EnabledOn: aCanvas
	{2}' format: {qname. msg})
				classified: #'drawing - specific';
				compile: ('draw{1}DisabledOn: aCanvas
	{2}' format: {qname. msg})
				classified: #'drawing - specific';
				compile: ('draw{1}OverlayEnabledOn: aCanvas
	{2}' format: {qname. msg})
				classified: #'drawing - specific';
				compile: ('draw{1}OverlayDisabledOn: aCanvas
	{2}' format: {qname. msg})
				classified: #'drawing - specific'].