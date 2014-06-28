Router.map ->
	@route 'admin',
		path: '/admin'
		template: 'admin'
		data: ->
			categories: share.Categories.find()