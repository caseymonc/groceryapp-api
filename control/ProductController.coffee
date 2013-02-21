response = require('./response')()

module.exports = (Product) =>
	errors =
		USER_NOT_FOUND: 
			error: true
			message: "Not Found"
			code: 401
		NOT_AUTHENTICATED: 
			error: true
			message: "Not Authenticated"
			code: 401

	addProduct: (req, res)=>
		options = 
			name: req.body.name
			quantity: req.body.quantity
			description: req.body.description