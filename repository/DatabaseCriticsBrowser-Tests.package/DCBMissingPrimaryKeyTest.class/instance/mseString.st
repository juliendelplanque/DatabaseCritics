accessing
mseString
	^ '(
    (FAMIX.PrimitiveType (id: 1)
        (name ''character varying(1024)''))
    (FAMIX.Column (id: 2)
        (name ''nom'')
        (calledFromExpressions (ref: 3))
        (ownerTable (ref: 4))
        (referencedByExpressions (ref: 5))
        (referencedByFunctions (ref: 6)))
    (FAMIX.Table (id: 7)
        (name ''sujet'')
        (columns (ref: 8) (ref: 9) (ref: 10)))
    (FAMIX.PrimitiveType (id: 11)
        (name ''character varying''))
    (FAMIX.PrimitiveType (id: 12)
        (name ''integer''))
    (FAMIX.Column (id: 8)
        (name ''cle'')
        (calledFromExpressions (ref: 13))
        (isPK true)
        (ownerTable (ref: 7))
        (referencedByExpressions (ref: 14))
        (referencedByFunctions (ref: 15)))
    (FAMIX.Column (id: 9)
        (name ''titre'')
        (calledFromExpressions (ref: 16))
        (ownerTable (ref: 7))
        (referencedByExpressions (ref: 17))
        (referencedByFunctions (ref: 18)))
    (FAMIX.Column (id: 10)
        (name ''resume'')
        (calledFromExpressions (ref: 19))
        (ownerTable (ref: 7))
        (referencedByExpressions (ref: 20))
        (referencedByFunctions (ref: 21)))
    (FAMIX.PrimitiveType (id: 22)
        (name ''character varying(8192)''))
    (FAMIX.Column (id: 23)
        (name ''cle'')
        (calledFromExpressions (ref: 24))
        (ownerTable (ref: 4))
        (referencedByExpressions (ref: 25))
        (referencedByFunctions (ref: 26)))
    (FAMIX.Column (id: 27)
        (name ''description'')
        (calledFromExpressions (ref: 28))
        (ownerTable (ref: 4))
        (referencedByExpressions (ref: 29))
        (referencedByFunctions (ref: 30)))
    (FAMIX.Table (id: 4)
        (name ''theme'')
        (columns (ref: 23) (ref: 2) (ref: 27)))
    (FAMIX.PrimitiveType (id: 31)
        (name ''character varying[]'')))'