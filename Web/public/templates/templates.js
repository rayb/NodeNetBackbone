window.JST = {};

window.JST['registry_patients/index'] = _.template(
  "<h1>Patients V4 (via Backbone):</h1><ul id='registry_patients'></ul> <a href='#/new'>New Registry Patient</a>"
);

window.JST['registry_patients/registry_patient'] = _.template(
  "<p><%= first_name %>"
);

window.JST['registry_patients/new'] = _.template(
  "hello from new template"
);


