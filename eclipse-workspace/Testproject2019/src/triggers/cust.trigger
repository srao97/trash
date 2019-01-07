trigger cust on Customer__c (before update)
{
    list<customer__c> cus=new list<customer__c>();
    for(customer__c c:trigger.new)
    {
        system.debug('objcust current value'+c);    
        if(c.active__C==true)
        {
            c.customer_description__c='welcome to salesforce';
            system.debug('the record which has satisfied the if condition'+c);
        }
    }
}