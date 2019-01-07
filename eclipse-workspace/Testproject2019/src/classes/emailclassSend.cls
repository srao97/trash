public class emailclassSend 
{
	public static void sendsinglemail()
    {
        messaging.SingleEmailMessage semail=new messaging.SingleEmailMessage();
        string[] sendingto=new string[]{'rao.sarveswara@gmail.com'};
            semail.setToAddresses(sendingto);
        	semail.setSubject('single email messaging test');
            semail.setPlainTextBody('hello how are you???test mail from apex');
        messaging.sendEmail(new messaging.SingleEmailMessage[]{semail});
    }
}