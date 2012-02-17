(function() {
  var registry_patients;

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

  ({
    find: function(id) {
      var registry_patient, _i, _len;
      for (_i = 0, _len = registry_patients.length; _i < _len; _i++) {
        registry_patient = registry_patients[_i];
        if (registry_patient.id === id) return registry_patient;
      }
    }
  });

  module.exports.all = registry_patients;

}).call(this);
