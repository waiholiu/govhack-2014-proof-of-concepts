# Quickstart guide for GovHack

This project provides a template, instructions and solutions to some of the issues we suspect we will hit when setting up a simple Meteor app that utilises Australian energy rating datasets to do simple analysis.

1. Create meteor project
2. Add .gitignore
3. Create git repository and do initial commit
3. Add standard packages (meteor add)
	- underscore
	- jquery
	- coffeescript
	- less
4. Add meteorite packages then commit _(if you get a “there was a problem checking out tag” error, use mrt uninstall —system to kill the .meteorite directory, then try again)_
	- bootstrap3-less ([https://github.com/simison/bootstrap3-less/], [http://getbootstrap.com])
	- npm
	- select2
	- select2-bootstrap3-css
	- iron-router ([https://github.com/EventedMind/iron-router])
5. Add the csvtojson npm package ([https://github.com/Keyang/node-csvtojson]) by editing the packages.json file: "csvtojson": "0.3.11"
6. Bring in the bootstrap stylesheet and link to the fonts:
	- Create a styles.less file in the root folder and add @import "/packages/bootstrap3-less/bootstrap.import.less";
	- cd public
	- ln -s ../packages/bootstrap3-less/lib/fonts ./
7. Setup our directory structure and delete the boilerplate example files
	- client
		- lib
		- pages
	- lib
	- methods
	- models
	- server
		- methods
8. Create a head.html file in a new client/pages/layout directory
'' <head>
	'' <title>GovHack</title>
	'' <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
'' </head>
'' 
'' <body>
'' <!-- empty body -->
'' </body>
9. Create home and admin page templates and .coffee files with simple routing: e.g.
`Router.map ->`
`	@route 'admin',`
`		path: '/admin'`
`		template: 'admin'`
10. Add a “categories” collection and prepopulate it
11. Add file upload code to the admin page front and backends
12. Remove the insecure and autopublish packages and setup publish and subscribe rules for categories and energyRatings
13. Add some category row counts to the admin screen
14. Pick and add a (free) bootstrap theme
	- [http://bootswatch.com/] (lumen, united, flatly are nice)
	- [http://www.bootstrapzero.com/bootstrap-templates]
	- [http://startbootstrap.com] (grayscale is nice and might work OK - [http://startbootstrap.com/templates/grayscale/])
	- [http://gratisography.com/] open source images
15. Assuming we decide to go with the “grayscale” theme, we will need to install jquery easing:
	- $ mrt add jquery-easing
16. Change the background images from the grayscale theme to something more appropriate