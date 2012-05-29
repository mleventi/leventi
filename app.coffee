express = require 'express'

app = express.createServer()

app.set 'view engine', 'jade'
app.set 'view options', { layout: false }

app.get '/', (req, res) ->
	res.render 'index', {}

app.use express.static "#{__dirname}/public"

port = process.env.PORT || 3000

app.listen port, () ->
	console.log "Listening on #{port}"
