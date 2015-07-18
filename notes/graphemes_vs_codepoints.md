#Codepoints vs Graphemes

Unicode describe a [grapheme](http://unicode.org/glossary/#grapheme) as "what a user thinks of as a
character"  

A [codepoint](http://unicode.org/glossary/#code_point) is Unicode number for an atomic unit of information in
hexidecimal.  

```
word = "as⃝df̅"

String.codepoints word
=> ["a", "s", "⃝", "d", "f", "̅"]

String.graphemes word
=> ["a", "s⃝", "d", "f̅"]
```


