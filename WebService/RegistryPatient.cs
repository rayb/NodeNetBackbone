using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.ServiceModel.Activation;
using System.ServiceModel.Web;
using System.Text;
using System.Data;
using System.Data.Linq;
using System.Web.Script.Serialization;

namespace RegistryToolSvc
{
    // Start the service and browse to http://<machine_name>:<port>/Service1/help to view the service's generated help page
    // NOTE: By default, a new instance of the service is created for each call; change the InstanceContextMode to Single if you want
    // a single instance of the service to process all calls.	
    [ServiceContract]
    [AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
    [ServiceBehavior(InstanceContextMode = InstanceContextMode.PerCall)]
    // NOTE: If the service is renamed, remember to update the global.asax.cs file
    public class RegistryPatient
    {
        // resource (old) http://www.codeproject.com/Articles/327420/WCF-REST-Service-with-JSON as a template
        // resource (old) http://msdn.microsoft.com/en-us/library/ee391967.aspx

        [WebInvoke(Method = "GET", UriTemplate = "", ResponseFormat = WebMessageFormat.Json)]
        // TODO: The default Linq way
        ////http://stackoverflow.com/questions/6834085/returning-datasets-from-linq-to-sql-in-a-rest-wcf-service
        public List<Patient> GetPatients()
        {
            List<Patient> ret = new List<Patient>();
            using (DataClasses1DataContext context = new DataClasses1DataContext())
            {
                var patientResults = from p in context.Patients select p;
                ret = patientResults.ToList<Patient>();
            }
            return ret;
        }
        
        [OperationContract]
        [WebInvoke(Method = "GET", UriTemplate = "/foo", RequestFormat = WebMessageFormat.Json,
                   ResponseFormat = WebMessageFormat.Json)]
        public RegistryPatientObject List()
        {
            return new RegistryPatientObject()
                {
                    first_name = "hello",
                    last_name = "world"
                };
        }

        //[OperationContract]
        //[WebInvoke(
        //  Method = "POST",
        //  UriTemplate = "", 
        //  BodyStyle = WebMessageBodyStyle.WrappedRequest,
        //  RequestFormat = WebMessageFormat.Json, ResponseFormat = WebMessageFormat.Json)]
        //[OperationContract]
        //[WebInvoke(Method = "POST", UriTemplate = "", RequestFormat = WebMessageFormat.Json)]

        [WebInvoke(UriTemplate = "", Method = "POST")]
        public long Create(string RegistryPatient)
        {
            return 200;  
        }
        //[WebInvoke(UriTemplate = "", Method = "POST")]
        //public SampleItem Create(SampleItem instance)
        //{
        //    // TODO: Add the new instance of SampleItem to the collection
        //    throw new NotImplementedException();
        //}

        [WebGet(UriTemplate = "{id}")]
        public SampleItem Get(string id)
        {
            // TODO: Return the instance of SampleItem with the given id
            throw new NotImplementedException();
        }

        [WebInvoke(UriTemplate = "{id}", Method = "PUT")]
        public SampleItem Update(string id, SampleItem instance)
        {
            // TODO: Update the given instance of SampleItem in the collection
            throw new NotImplementedException();
        }

        [WebInvoke(UriTemplate = "{id}", Method = "DELETE")]
        public void Delete(string id)
        {
            // TODO: Remove the instance of SampleItem with the given id from the collection
            throw new NotImplementedException();
        }

    }
    public class RegistryPatientObject
    {
        public string last_name { get; set; }
        public string first_name { get; set; }
    }

    public class CustomTypeResolver : JavaScriptTypeResolver
    {
        public override Type ResolveType(string id)
        {
            return Type.GetType(id);
        }

        public override string ResolveTypeId(Type type)
        {
            return "Hello Custom writer";
            //if (type == null)
            //{
            //    throw new ArgumentNullException("type");
            //}

            //return type.Name;
        }
    }

}
