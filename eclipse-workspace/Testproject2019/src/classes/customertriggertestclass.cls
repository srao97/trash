@istest
private class customertriggertestclass
{
    static testmethod void myunittest()
    {
        //create the data
        customer__c objcust=new customer__c();
        objcust.name='Test customer';
        objcust.status__c='Inactive';
        insert objcust;
        
        test.starttest();
        objcust.status__c='Active';
        update objcust;//trigger will get fired
        test.stoptest();
        //see if our expected result is equal to the actual result assert()
        list<invoices__C> invlist=[select id,customer__c from invoices__c where customer__c=:objcust.id];
        system.assertequals(1,invlist.size());
    }
}