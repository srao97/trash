@istest
private class accounttriggerclass
{
//create a method use testmethod
    static testmethod void myunitest()
    {
    //create the test data
    account a=new account();
    a.name='testman';
    insert a;
    }
}