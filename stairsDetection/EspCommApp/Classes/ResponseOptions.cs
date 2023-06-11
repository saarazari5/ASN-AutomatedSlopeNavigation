using System.ComponentModel;

namespace SafeGuard_API_MVC.Enums
{
    public enum ResponseOptions
    {
        [Description("Missing Params")] MissingParams = 10500,
        [Description("Already Exists")] AlreadyExists = 10501,
        [Description("Entity not found")] EntityNotFound = 10502,
        [Description("OK")] OK = 200,
        [Description("Error")] GeneralError = 404,
    }
}