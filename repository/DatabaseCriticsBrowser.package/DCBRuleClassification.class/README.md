I am an abstract object that specify how to classify rules.

#groupedRules is abstract but in my subclasses, it must returns a dictionary that groups my rules.

To create a new classification, just create a class inheriting from me and overriding #groupedRules.

#subgroupClassification: message is used to set the classification on the level under mine. If not set, it returns a DCBNoClassification instance.

Eventually, you can define an order in subgroups created by setting a sorting block using #sortingBlock: message.
Example:
self sortingBlock: [ :a :b | a asString < b asString ]