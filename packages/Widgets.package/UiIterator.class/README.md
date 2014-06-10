An iterator for collections. Optionally concurrent.

f := UiIterator new.
f root: Smalltalk classNames.
self connect: f signal: #found: to: Transcript selector: #show:.
self connect: f signal: #found: to: Transcript selector: #show: pattern: {#=. String cr}.
self connect: f signal: #finished to: Transcript selector: #show: pattern: {#=. 'Done.'}.
f nextSatisfying: [:name | name includesSubstring: 'tool' caseSensitive: false] forkAt: 35.