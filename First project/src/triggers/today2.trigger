trigger today2 on customer__c (after update) 
{
    //after update operation using
    list<invoices__c> inv=new list<invoices__c>();
    for(customer__c cust:trigger.new)
    {
        if(cust.status__c=='Active' && trigger.oldmap.get(cust.id).status__c!='Active')
        {
            //create a new invoice record
            invoices__c i=new invoices__c();
            i.amount__c=1000;
            i.status__C='good';
            i.customer__c=cust.id;
            inv.add(i);
        }
    }
    insert inv;//update the invoice record
}