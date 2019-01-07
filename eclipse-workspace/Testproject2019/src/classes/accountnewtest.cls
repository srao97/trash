@istest
public class accountnewtest
{
    static testmethod void addnewaccount()
    {
        Account acc=new Account();
        acc.name='chase bank';
        acc.numberofemployees=12;
        insert acc;
    }
    static testmethod void withoutaccount()
    {
        Account acc=new Account();
        acc.name='steve bank';
        acc.numberofemployees=12;
        insert acc;
    }
}