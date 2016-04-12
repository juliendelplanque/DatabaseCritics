I am an abstract rule with a threshold.

My subclasses should implement:
	- #thresholdClass (class-size) which returns the class of the threshold object.

Notice that my #isAppliable class message returns true if the threshold is not nil
so there is no need to override it in my subclasses unless you don't want the rule
to be use. In this case make it returns false. Do not override it to make it return true!