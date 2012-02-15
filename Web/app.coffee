express = require("express")
routes = require("./routes")
app = module.exports = express.createServer()
app.configure ->
  app.set "views", __dirname + "/views"
  app.set "view engine", "jade"
  app.use express.bodyParser()
  app.use express.methodOverride()
  app.use express.cookieParser()
  app.use express.session(secret: "your secret here")
  app.use app.router
  app.use express.static(__dirname + "/public")
  app.use express.errorHandler(
    dumpExceptions: true
    showStack: true
  )

app.configure "development", ->
  app.use express.errorHandler(
    dumpExceptions: true
    showStack: true
  )

app.configure "production", ->
  app.use express.errorHandler()

app.get "/", routes.index
app.get "/patients", (req, res) ->
  res.render "patients/index",
    title: "Patients"

app.get "/patients/new", (req, res) ->
  res.render "patients/new",
    title: "New Patient"

app.get "/patients/:id", (req, res) ->
  res.render "patients/show",
    title: "Patients"

app.get "/patients/:id/edit", (req, res) ->
  res.render "patients/edit",
    locals:
      patient: patient

app.put "/patients/:id", (req, res) ->
  id = req.params.id
  res.redirect "/patients/" + id

app.post "/patients/", (req, res) ->
  res.redirect "/patients/" + id

port = process.env.PORT or 3000
app.listen port, ->
  console.log "Express server listening on port %d in %s mode", app.address().port, app.settings.env

