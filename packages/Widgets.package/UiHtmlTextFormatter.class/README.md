I create a text instance from a given string that contains html tags for emphasis. Examples:

'Hello, <b>World!</b>' asHtmlText
'<i>Hello</i>, World!' asHtmlText
'<font color="#00cc00">Hello!</font>, World!' asHtmlText
'<font color="#FF00FF">Ahahaha! <b>Hello</b>, <i>World</i></font>!' asHtmlText asMorph openInHand
'<font color="#0000ff">Ahahaha! <b><font size="7">Hello</font></b></font>, <i><b>World</b></i>!' asHtmlText
'<font color="#444444"><b>Hello</b> <i>World!</i></font>' asHtmlText asMorph openInHand

Supports line breaks: 'Hello<br>World!' asHtmlText asMorph openInHand.

Escape control characters with $\. Double-escape them if you use #format:.
('<b>Hello \\>\\> {1}!</b>' format: {'World'}) asHtmlText