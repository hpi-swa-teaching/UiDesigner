*widgets-text
escapeHtmlText
	"Replaces all tokens that could be problematic when converting this string into a text using #asHtmlText."
	
	^ (self copyReplaceAll: '<' with: '\<')
		copyReplaceAll: '>' with: '\>'