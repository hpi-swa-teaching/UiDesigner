A helper class that allows to find model indices in an item model.

A column filter can be used to reduce the search operation to specific columns in a specific order. The amount of columns being searched has an impact on the performance.

The item model can be traversed #breadthFirst or #depthFirst (default).

A subset of the collection API is present (e.g., #do:, #detect:).

====
Example
====

| view model finder |
view := UiTreeView new.
model := UiSmalltalkModel new.
finder := UiItemModelFinder on: model.

finder
   columnFilter: #(1); "nur Spalte 1"
   traversalMode: #depthFirst. "standard; #breadthFirst möglich"

"Knoten finden und selektieren/ausklappen."
view currentIndex: (finder detect: [:modelIndex |
   modelIndex text asString startsWith: "Morph"]).

"Iterative Suche. Für weiteren Index Code wiederholt ausführen:"
view currentIndex: (finder nextSatisfying: [:modelIndex |
   modelIndex text asString startsWith: "Morph"]).
