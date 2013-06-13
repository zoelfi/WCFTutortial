using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Activation;
using System.ServiceModel.Web;
using System.Text;

namespace WcfServiceContract
{
    [ServiceContract]
    [AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
    public class TaskListService 
    {
        [OperationContract]
        [WebGet(ResponseFormat = WebMessageFormat.Json)]
        public List<TaskList> GetTaskLists()
        {
            using (var entity = new PushDataEntities())
            {
                var result = from data in entity.TaskLists
                             select data;
                return result.Take(50).ToList();
            }
        }
    }
}
