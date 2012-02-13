# NodeNetBackbone

## A Node based web server app for delivering timely patient information

## Websites Required

With Node on IIS, each website should be run at as it's own root site (not as a Virtual Directory)

Here's how the sites are set up on a machine:

Disable "Default Web Site" or change it's port away from 80
Add:

* NodeNetBackbone on port 80
* NodeNetBackboneSvc on port 4000 (our rest server)

## Software Stack

* .Net Restful Data Service (to server up data for app)
* Express JS (Minimal Server Side MVC framework)
* Backbone JS (client side MVC framework)

Together, this stack will work well together to deliver a single page patient management app


## High Level API

Objects 

* AppImages

get: webservice/AppImages
[
  {
    AppImageID: 1,
    Name: "example name",
    Category: "example category",
    RegionID: 1,
    ImageData: ????,
    ImageMimeType: "image/png"
  },
  {
    AppImageID: 2,
    Name: "example name",
    Category: "example category",
    RegionID: 2,
    ImageData: ????,
    ImageMimeType: "image/jpg"
  }
]

* AppImageID (int)
* Name (String)
* Category (String)
* RegionID (ID)
* ImageData (Image)
* ImageMimeType (string) (image/jpeg - image/png) 

* RegistryEvents
get: webservice/RegistryEvents
[

]

* RegistryEventID (int)
* EventDate (date)
* ScoapPatientID (int)
* ScoapDoctorID (int)
* FacilityID (int)

* ServiceLines

* ServiceLineID (int)
* LineType (string
* DisplayName (string)
* RegistryEventID (int)
* ProcedureCodeID (int)
