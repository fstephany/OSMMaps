baselines
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec project: 'Roassal2' with: [
				spec
					className: #ConfigurationOfRoassal2;
					version: #development;
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ].
		spec package: #OSMMaps ].
