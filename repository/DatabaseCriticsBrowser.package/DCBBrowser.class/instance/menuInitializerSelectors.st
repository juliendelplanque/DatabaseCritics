initialization-menu
menuInitializerSelectors
	"Collect selectors of methods that have #dcbMenuOrder: pragma and returns them."
	^ ((Pragma allNamed: #dcbMenuOrder: in: self class)
			sorted: [ :pragmaA :pragmaB | pragmaA arguments first < pragmaB arguments first ])
				collect: #selector