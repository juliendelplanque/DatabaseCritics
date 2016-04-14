dependencies
specModelsAddOns: spec
	^ spec
		project: 'SpecModelsAddOns' with: [ 
			spec
				className: 'ConfigurationOfSpecModelsAddOns';
				version: #development;
				repository: 'http://smalltalkhub.com/mc/JulienDelplanque/SpecAddOns/main' ];
		yourself