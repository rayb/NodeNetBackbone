
/**
 * Module dependencies.
 */

var express = require('express')
  , routes = require('./routes');

var app = module.exports = express.createServer();

// Configuration

app.configure(function () {
    app.set('views', __dirname + '/views');
    app.set('view engine', 'jade');
    // TODO can this parse put?
    app.use(express.bodyParser());
    app.use(express.methodOverride());
    app.use(express.cookieParser());
    app.use(express.session({ secret: 'your secret here' }));
    app.use(app.router);
    app.use(express.static(__dirname + '/public'));
    // TODO: Only use stack traces in development environment
    app.use(express.errorHandler({
      dumpExceptions: true,
      showStack: true
    }));
});

app.configure('development', function(){
  app.use(express.errorHandler({ dumpExceptions: true, showStack: true }));
});

app.configure('production', function(){
  app.use(express.errorHandler());
});


// Routes
app.get('/', routes.index);

// TODO: Why can't I load another routes file...
//app.get('/patients', routes.patients);
app.get('/patients', function (req, res) {
  res.render('patients/index', { title: 'Patients'
    // TODO: get patient data from web service
    //    , locals: {
    //    patient: patient
    //  }
  });
});

app.get('/patients/new', function (req, res) {
  //TODO: create an instance of a new object... (backbone?)
  res.render('patients/new', { title: 'New Patient'
  });
});

app.get('/patients/:id', function (req, res) {
  // var patient = patients.find(req.params.id);
  res.render('patients/show', { title: 'Patients'
// TODO: get patient data from web service
//    , locals: {
//    patient: patient
//  }
  });
});

app.get('/patients/:id/edit', function (req, res) {
  // var patient = patients.find(req.params.id);
  res.render('patients/edit', { locals: {
    patient: patient
  }});
});

app.put('/patients/:id', function (req, res) {
  var id = req.params.id;
  // save patient data...
  res.redirect('/patients/' + id);
});

app.post('/patients/', function (req, res) {
  //TODO: save patient data.
  // var patient = patients.add(req.body.patient);.
  res.redirect('/patients/' + id);
});


app.listen(process.env.PORT);

console.log("Express server listening on port %d in %s mode", app.address().port, app.settings.env);
