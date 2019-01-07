public class accountscreatecontroller {

    public PageReference save() 
            {
            partnerSoapSforceCom.soap myconnection = new partnerSoapSforceCom.soap();
            partnerSoapSforceCom.LoginResult mylogindetails = myconnection.login('raos1@gmail.com','Aneesh#1HGu4GRgVR8xKh9I96Miomwx5o');
            system.debug('Session Info ---->' +mylogindetails.sessionid);
            
            string sessionId = mylogindetails.sessionid;
            soapSforceComSchemasClassAccountcre.SessionHeader_element headerinfo = new soapSforceComSchemasClassAccountcre.SessionHeader_element();
            headerinfo.sessionId = sessionId;
            soapSforceComSchemasClassAccountcre.AccountCreate newAcc = new soapSforceComSchemasClassAccountcre.AccountCreate();
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
   public AccountsCreateController ()
    {
    message ='';
        acc=new Account();
    }

}