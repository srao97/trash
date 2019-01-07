@istest(seealldata=true)
public class seealldatademotest
{
    //if the test class or test method is annotated with istest(seealldata=true)
    static testmethod void dounitest()
    {
        account getac=[select id,name from account where id='0017F00000Gufht' limit 1];
        
    }
}