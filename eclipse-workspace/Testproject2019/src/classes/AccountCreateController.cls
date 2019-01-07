public class AccountCreateController
{
    public PageReference save() 
            {
            partnerSoapSforceCom.soap myconnection = new partnerSoapSforceCom.soap();
            partnerSoapSforceCom.LoginResult mylogindetails = myconnection.login('raos@gmail.com','aneesh04hPqTF8TJchwwIryNuC4vUxvJl');
            system.debug('Session Info ---->' +mylogindetails.sessionid);
            
            string sessionId = mylogindetails.sessionid;
            soapSforceComSchemasClassHarianee12.SessionHeader_element headerinfo = new soapSforceComSchemasClassHarianee12.SessionHeader_element();
            headerinfo.sessionId = sessionId;
            soapSforceComSchemasClassHarianee12.AccountCreate newAcc = new soapSforceComSchemasClassHarianee12.AccountCreate();
            newAcc.SessionHeader = headerinfo;
            string response = newAcc.createAccount(acc.Name,acc.Phone,acc.BillingCity); 
            if(response == 'Success')
            {
            insert acc;
            }       
            if(acc.id!=null)
            {
            message ='succesfully created in both application';
            }
            
            
            
    return null;
    }

    public Account acc{get;set;}
    public string message{get;set;}
   public AccountCreateController ()
    {
    message ='';
        acc=new Account();
    }

}