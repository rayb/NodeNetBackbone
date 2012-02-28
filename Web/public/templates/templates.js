window.JST = {};

window.JST['registry_patients/index'] = _.template(
  "<h1>Patients V4 (via Backbone):</h1><ul id='registry_patients'></ul> <a href='#/new'>New Registry Patient</a>"
);

window.JST['registry_patients/registry_patient'] = _.template(
  "<p><%= first_name %>"
);

window.JST['registry_patients/new'] = _.template(
  "<h1>Patients V4 (via Backbone):</h1><form id='new-registry_patient' name='registry_patient'><div class='field'><label for='first_name'>First Name:</label><input type='text' id='first_name' name='first_name'/></div><div class='field'><label for='last_name'>Last Name:</label><input type='text' id='last_name' name='last_name'/></div><div class='actions'><input type='submit'/></div></form>"
);

// window.JST['registry_patients/new'] = _.template(
//   "hello from new template"
// );

