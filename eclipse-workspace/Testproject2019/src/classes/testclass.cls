@istest
public class testclass
{
    static testmethod void test_method()
    {
        list<account> acts=new list<account>();
        for(integer i=0; i<200; i++)
        {
        account a=new account(Name='Test Account'+i, Industry='Technology');
        acts.add(a);
        }
        
        Test.StartTest();
        insert acts;
        Test.StopTest();
        
        list<account> inserted_acts=[select name,industry,description from account where ID IN:acts];
        for(account i_a:inserted_acts)
            {
                system.assertequals('Technology Account',i_a.Description);
            }
    }
}