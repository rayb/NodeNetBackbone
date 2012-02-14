
/*
* GET home page.
*/

exports.patients = function (req, res) {
  res.render('patients/index', { title: 'Patients' })
};

//exports.index = function (req, res) {
//  res.render('index', { title: 'Patient Tool' })
//};