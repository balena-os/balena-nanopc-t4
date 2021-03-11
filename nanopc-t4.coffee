deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

postProvisioningInstructions = [
	instructions.BOARD_SHUTDOWN
	instructions.REMOVE_INSTALL_MEDIA
	instructions.BOARD_REPOWER
]

module.exports =
	version: 1
	slug: 'nanopc-t4'
	name: 'NanoPC-T4'
	arch: 'aarch64'
	state: 'new'
	private: false

	stateInstructions:
		postProvisioning: postProvisioningInstructions

	instructions: [
		instructions.ETCHER_SD
		instructions.EJECT_SD
		instructions.FLASHER_WARNING
	].concat(postProvisioningInstructions)

	gettingStartedLink:
		windows: 'https://docs.balena.io/nanopc-t4/nodejs/getting-started/#adding-your-first-device'
		osx: 'https://docs.balena.io/nanopc-t4/nodejs/getting-started/#adding-your-first-device'
		linux: 'https://docs.balena.io/nsnopc-t4/nodejs/getting-started/#adding-your-first-device'

	supportsBlink: true

	yocto:
		machine: 'nanopc-t4'
		image: 'balena-image-flasher'
		fstype: 'balenaos-img'
		version: 'yocto-thud'
		deployArtifact: 'balena-image-flasher-nanopc-t4.balenaos-img'
		compressed: true

	options: [ networkOptions.group ]

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
