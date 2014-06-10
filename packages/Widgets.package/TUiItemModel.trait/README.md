This trait can be used for models/nodes that should be able to communicate with item views.

Dynamic contents
----------------
? special signals can trigger selected updates in item views
* add/remove/change child nodes (w/ all properties)
* change selected properties

Static contents
---------------
? some contents may only be specified on initial view creation
* number of properties (use #modelReset if changed)
* number of groups (use #modelReset if changed)