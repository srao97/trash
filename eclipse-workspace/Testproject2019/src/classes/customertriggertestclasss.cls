@istest
private class customertriggertestclasss
{
//create a method use testmethod
    static testmethod void myunittest()
    {
        //create the test data
        customer__c objcust=new customer__c();
        objcust.name='test customer';
        objcust.status__c='Inactive';
        insert objcust;
        
        test.starttest();
        objcust.status__c='Active';
        update objcust;//trigger get fired
        test.stoptest();
        //see if our expected results is equal to the actual result assert()
        list<invoices__c> invlist=[select id,customer__c from invoices__c where customer__c=:objcust.id];
        system.assertequals(1,invlist.size());
    }
    
}