#!/usr/bin/justfile -f

_:
	@just --list

[no-cd]
translate:
	node ../colemak-bg/translate.js up README
	node ../colemak-bg/translate.js up LINUX

[no-cd]
serve:
	bundle exec jekyll serve

[no-cd]
config_yml:
	#!/usr/bin/node
	const fs = require("fs")
	const flc = []
	function ex(fl, entries) {
		const readme = JSON.parse(fs.readFileSync(fl + ".all.json", "utf-8"))
		readme.languages.push(readme.language)
		return readme.languages.map(lang => {
			let fln = (lang == readme.language) ? fl : fl + "." + lang
			return '  - scope:\n      path: "' + fln + '.md"\n    values:\n      lang: "' + lang + '"\n' +
				Object.entries(entries).map(entry => {
				const value = entry[0] == "image" ? entry[1] : ((lang == readme.language) ? entry[1] : readme.translated[lang][entry[1]])
				if (!value) {
					throw new Error("no value for " + lang + " " + entry[1])
				}
				return '      ' + entry[0] + ': "' + value + '"'
			}).join("\n")
		}).join("\n")
	}
	flc.push(ex("README", {description: "This is my attempt to make a keyboard layout based on Colemak, adapted for the Bulgarian language and the Cyrillic alphabet", image: "./media/preview.png"}))
	flc.push(ex("LINUX", {description: "Follow these instructions"}))
	fs.writeFileSync("_config.temp.yml", flc.join("\n"))
