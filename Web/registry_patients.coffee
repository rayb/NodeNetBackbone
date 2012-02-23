http = require "http"

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
  console.log "in patients find"
  id = parseInt(id)
  found = null
  for patient in registry_patients
    found = patient if patient.registry_patient_id is id
  found

module.exports.set = (id, registry_patient) ->
  registry_patient.registry_patient_id = parseInt(id)
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

module.exports.list = (callback) ->
  console.log "in the registry patients list"
  options =
    host: '10.0.2.7'
    port: 4000
    path: "/RegistryPatient/"
  # TODO: pass in params
  req = http.get options, (res) ->
    contents = ''
    res.on 'data', (chunk) ->
      contents += "#{chunk}"
    res.on 'end', () ->
      content_data = JSON.parse contents
      response_data = []
      for item in content_data
        console.log "item: " + item
        registry_patient = {
          registry_patient_id: item["PatientID"]
          last_name: item["Last"]
          first_name: item["First"]
        }
        response_data.push registry_patient
      callback (response_data)
  req.on "error", (e) ->
    console.log "Error: {e.message}"
