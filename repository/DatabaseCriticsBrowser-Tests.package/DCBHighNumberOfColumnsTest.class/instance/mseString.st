accessing
mseString
	^ '(
    (FAMIX.PrimitiveType (id: 1)
        (name ''character varying''))
    (FAMIX.Column (id: 2)
        (name ''titre'')
        (calledFromExpressions (ref: 3))
        (ownerTable (ref: 4))
        (referencedByExpressions (ref: 5))
        (referencedByFunctions (ref: 6)))
    (FAMIX.Column (id: 7)
        (name ''cle'')
        (calledFromExpressions (ref: 8))
        (ownerTable (ref: 4))
        (referencedByExpressions (ref: 9))
        (referencedByFunctions (ref: 10)))
    (FAMIX.PrimitiveType (id: 11)
        (name ''character varying[]''))
    (FAMIX.Column (id: 12)
        (name ''resume'')
        (calledFromExpressions (ref: 13))
        (ownerTable (ref: 4))
        (referencedByExpressions (ref: 14))
        (referencedByFunctions (ref: 15)))
    (FAMIX.Column (id: 16)
        (name ''nom'')
        (calledFromExpressions (ref: 17))
        (ownerTable (ref: 18))
        (referencedByExpressions (ref: 19))
        (referencedByFunctions (ref: 20)))
    (FAMIX.PrimitiveType (id: 21)
        (name ''character varying(1024)''))
    (FAMIX.Table (id: 4)
        (name ''sujet'')
        (columns (ref: 7) (ref: 2) (ref: 12)))
    (FAMIX.Table (id: 18)
        (name ''theme'')
        (columns (ref: 22) (ref: 16)))
    (FAMIX.PrimitiveType (id: 23)
        (name ''integer''))
    (FAMIX.Column (id: 22)
        (name ''cle'')
        (calledFromExpressions (ref: 24))
        (ownerTable (ref: 18))
        (referencedByExpressions (ref: 25))
        (referencedByFunctions (ref: 26))))'