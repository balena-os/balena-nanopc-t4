deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
	version: 1
	slug: 'smarc-px30'
	name: 'I-Pi SMARC PX30 SD-CARD'
	arch: 'aarch64'
	state: 'new'
	community: true

	instructions: commonImg.instructions

	gettingStartedLink:
		windows: 'https://www.balena.io/docs/learn/getting-started/smarc-px30/nodejs/'
		osx: 'https://www.balena.io/docs/learn/getting-started/smarc-px30/nodejs/'
		linux: 'https://www.balena.io/docs/learn/getting-started/smarc-px30/nodejs/'

	yocto:
		machine: 'smarc-px30'
		image: 'resin-image'
		fstype: 'resinos-img'
		version: 'yocto-thud'
		deployArtifact: 'resin-image-smarc-px30.resinos-img'
		compressed: true

	options: [ networkOptions.group ]

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
