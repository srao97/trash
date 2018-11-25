trigger aft on Customer__c (after update) 
{
    //status of the customer is active,create new invoice
    list<invoices__c> invlist=new list<invoices__c>();
    {
        for(customer__c cus:trigger.new)
        {
        if(cus.status__c=='Active' && trigger.oldmap.get(cus.id).status__c!='Active')
            {
                invoices__c i=new invoices__c();
                i.status__c='pending';
                i.amount__c=1000;
                i.customer__c=cus.id;
                invlist.add(i);
            }
        }
        insert invlist;//inserting a invoice record
    }
}