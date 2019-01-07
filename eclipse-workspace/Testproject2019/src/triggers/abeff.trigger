trigger abeff on Customer__c (after update) 
{
    List<invoices__c> inv=new list<invoices__c>();
    {
        for(customer__c cust:trigger.new)
        {
            if(cust.status__c=='Active' && trigger.oldmap.get(cust.id).status__c!='Active')
            {
                invoices__c i=new invoices__c();
                i.status__c='pending';
                i.amount__c=1000;
                i.customer__c=cust.id;
                inv.add(i);
            }    
        }
        insert inv;//insert operation
    }
}