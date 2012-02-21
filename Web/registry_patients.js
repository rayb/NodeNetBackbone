(function() {
  var registry_patients;

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
    id = parseInt(id);
    found = null;
    for (_i = 0, _len = registry_patients.length; _i < _len; _i++) {
      patient = registry_patients[_i];
      if (patient.registry_patient_id === id) found = patient;
      console.log(found);
    }
    return found;
  };

  module.exports.set = function(id, registry_patient) {
    registry_patient.registry_patient_id = id;
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
    id = registry_patients.length;
    registry_patient.registry_patient_id = id;
    registry_patients[id] = registry_patient;
    return id;
  };

}).call(this);
