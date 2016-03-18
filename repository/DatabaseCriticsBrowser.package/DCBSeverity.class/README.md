I am an abstract severity to define common behavior of all severities.

To implement a new severity, you must override:
	- #severityName (class side) which must returns a symbol.
	- #level (class side) which must returns an integer.