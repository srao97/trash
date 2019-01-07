public class customertriggerhelper
{
    public static void createinvoicerecords(list<customer__c> customerlist,map<id,customer__c> oldmapcustomer)
    {
        list<invoices__c> invoicelist=new list<invoices__c>();
        for(customer__c objcustomer:customerlist)
        {
            if(objcustomer.status__c=='Active' && oldmapcustomer.get(objcustomer.id).status__c!='Active')
            {
                invoices__c inv=new invoices__C();
                inv.status__c='pending'; 
                inv.amount__c=1000;  
                inv.customer__c=objcustomer.id;
                invoicelist.add(inv);
            }
        }
        insert invoicelist;   
    }
}