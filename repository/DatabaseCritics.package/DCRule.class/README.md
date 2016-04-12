I am the class representing an abstract rule.

My subclasses must override:
	- #acceptedClasses to specify on which entity(ies) of the model the rule should be applied.
	- #check: to specify how to check the model.
	- #ruleName to specify the name of the rule.
	- #description to specify the meaning of the rule.
	- #severity to specify the severity of the rule.
	- #isApplicable (class-side) which returns true if the rule is applicable, else returns false.