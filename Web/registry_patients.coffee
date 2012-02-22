registry_patients = undefined
registry_patients = [
  registry_patient_id: 1
  external_patient_id: "external-a"
  last_name: "Dosen"
  first_name: "Daniel"
  date_of_birth: "2011-01-01"
  gender: "m"
,
  registry_patient_id: 2
  external_patient_id: "external-b"
  last_name: "Dosen"
  first_name: "Molly"
  date_of_birth: "2011-01-01"
  gender: "f"
]

module.exports.all = registry_patients

module.exports.find = (id) ->
  id = parseInt(id)
  found = null
  for patient in registry_patients
    found = patient  if patient.registry_patient_id is id
    console.log found
  found

module.exports.set = (id, registry_patient) ->
  registry_patient.registry_patient_id = id
  registry_patients[id - 1] = registry_patient
  id

module.exports.new = ->
  registry_patient_id: 0
  external_patient_id: ""
  last_name: ""
  first_name: ""
  date_of_birth: ""
  gender: ""

module.exports.insert = (registry_patient) ->
  id = registry_patients.length + 1
  registry_patient.registry_patient_id = id
  registry_patients.push registry_patient
  id

