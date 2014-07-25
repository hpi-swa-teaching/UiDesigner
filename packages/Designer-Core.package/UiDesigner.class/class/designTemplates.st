initialization
designTemplates

	^ UserInterface subclasses select: [:class | class isTemplate]