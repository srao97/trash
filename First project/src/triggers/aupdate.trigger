trigger aupdate on Customer__c (after update) 
{
    //status of the customer is active,create new invoice
    list<invoices__c> inv=new list<invoices__c>();
    for(customer__c cus:trigger.new)
    {
        if(cus.status__c=='Active' && trigger.oldmap.get(cus.id).status__c!='Active')
        {
            //insert a new invoice record
            invoices__c i=new invoices__c();
            i.amount__c=1000;
            i.status__c='invoice active';
            i.customer__c=cus.id;
            inv.add(i);
        }
    }
    insert inv; //insert operation
    
}