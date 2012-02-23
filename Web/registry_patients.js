(function() {
  var http, registry_patients;

  http = require("http");

  registry_patients = void 0;

  registry_patients = [
    {
      registry_patient_id: 1,
      external_patient_id: "external-a",
      last_name: "Dosen",
      first_name: "Daniel",
      date_of_birth: "2011-01-01",
      gender: "m"
    }, {
      registry_patient_id: 2,
      external_patient_id: "external-b",
      last_name: "Dosen",
      first_name: "Molly",
      date_of_birth: "2011-01-01",
      gender: "f"
    }
  ];

  module.exports.all = registry_patients;

  module.exports.find = function(id) {
    var found, patient, _i, _len;
    console.log("in patients find");
    id = parseInt(id);
    found = null;
    for (_i = 0, _len = registry_patients.length; _i < _len; _i++) {
      patient = registry_patients[_i];
      if (patient.registry_patient_id === id) found = patient;
    }
    return found;
  };

  module.exports.set = function(id, registry_patient) {
    registry_patient.registry_patient_id = parseInt(id);
    registry_patients[id - 1] = registry_patient;
    return id;
  };

  module.exports["new"] = function() {
    return {
      registry_patient_id: 0,
      external_patient_id: "",
      last_name: "",
      first_name: "",
      date_of_birth: "",
      gender: ""
    };
  };

  module.exports.insert = function(registry_patient) {
    var id;
    id = registry_patients.length + 1;
    registry_patient.registry_patient_id = id;
    registry_patients.push(registry_patient);
    return id;
  };

  module.exports.list = function(callback) {
    var options, req;
    console.log("in the registry patients list");
    options = {
      host: '10.0.2.7',
      port: 4000,
      path: "/RegistryPatient/"
    };
    req = http.get(options, function(res) {
      var contents;
      contents = '';
      res.on('data', function(chunk) {
        return contents += "" + chunk;
      });
      return res.on('end', function() {
        var content_data, item, registry_patient, response_data, _i, _len;
        content_data = JSON.parse(contents);
        response_data = [];
        for (_i = 0, _len = content_data.length; _i < _len; _i++) {
          item = content_data[_i];
          console.log("item: " + item);
          registry_patient = {
            registry_patient_id: item["PatientID"],
            last_name: item["Last"],
            first_name: item["First"]
          };
          response_data.push(registry_patient);
        }
        return callback(response_data);
      });
    });
    return req.on("error", function(e) {
      return console.log("Error: {e.message}");
    });
  };

}).call(this);
