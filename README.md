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

### RegistryPatient
RegistryPatient stores detail about a patient in the DoctorsTool

    get (all): webservice/AppImages
    [
      {
        RegistryPatientID: 1,
        ExternalPatientID: "external-id",
        LastName: "LastName",
        FirstName: "FirstName",
        DOB: "2011-01-01",
        Gender: "M"
      },
      {
        RegistryPatientID: 2,
        ExternalPatientID: "external-id",
        LastName: "LastName",
        FirstName: "FirstName",
        DOB: "2011-01-01",
        Gender: "F" 
      }
    ]

    get (1): webservice/AppImages/:id
    {
      RegistryPatientID: 1,
      ExternalPatientID: "external-id",       
      LastName: "LastName",
      FirstName: "FirstName",
      DOB: "2011-01-01",
      Gender: "M"
    }

*Fields*

* RegistryPatientID: int
* ExternalPatientID: string
* LastName: string
* FirstName: string
* DOB: Date
* Gender: string (example 'm', 'f') 


    public class RegistryPatient
     {
       public int RegistryPatientID { get; set; }
       public string ExternalPatientID { get; set; }
       public string LastName { get; set; }
       public string FirstName { get; set; }
       public DateTime? DOB { get; set; }
       public string Gender { get; set; }
     }



### RegistryEvents
Registry Events will provide a (filtered) list of each patient events 

    get: webservice/RegistryEvents
    [
      {
        RegistryEventID: 1,
        EventDate: "2011-01-01", # format as UTF?
        ScoapPatientID: 1,
        ScoapDoctorID: 1,
        FacilityID: 1
      },
      {
        RegistryEventID: 2,
        EventDate: "2011-01-01", # format as UTF?
        ScoapPatientID: 2,
        ScoapDoctorID: 2,
        FacilityID: 2
      }
    ]    


    get (1): webservice/RegistryEvents/:id
    {
      RegistryEventID: 2,
      EventDate: "2011-01-01", # format as UTF?
      ScoapPatientID: 2,
      ScoapDoctorID: 2,
      FacilityID: 
    }

    new: webservice/RegistryEvents
    update: webservice/RegistryEvents/:id
    delete: webservice/RegistryEvents/:id

*Fields*

* RegistryEventID: int
* EventDate: date
* ScoapPatientID: int
* ScoapDoctorID: int
* FacilityID: int


### ServiceLines
Service Lines are the detail of data collected as a bill of materials for each Registry Event. There's a many to one relationship between ServiceLines and a RegistryEvent. 
*Note*: for this first version, we'll lazily load any ServiceLines for an Event.

    get: webservice/RegistryEvents
    [
      {
        ServiceLineID: 1,
        LineType: 1,
        DisplayName: "display name",
        RegistryEventID: 1,
        ProcedureCodeID: 1
      },
      {
        ServiceLineID: 2,
        LineType: 2,
        DisplayName: "display name",
        RegistryEventID: 2,
        ProcedureCodeID: 2
      }
    ]    

*Fields*

* ServiceLineID: int
* LineType: int
* DisplayName: string
* RegistryEventID: int
* ProcedureCodeID: int

### AppImages
AppImages - these will be loaded from the web service and cached on the client the first time a user enters the web site.  This will bring in a set of images used throughout the site. 

    get (all): webservice/AppImages
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

    get (1): webservice/AppImages/:id
    {
      AppImageID: 1,
      Name: "example name",
      Category: "example category",
      RegionID: 1,
      ImageData: ????,
      ImageMimeType: "image/png"
    }

*Fields*

* AppImageID: int
* Name: string
* Category string
* RegionID: int
* ImageData: image??? binary?
* ImageMimeType: string (example 'image/jpeg' - 'image/png') 
