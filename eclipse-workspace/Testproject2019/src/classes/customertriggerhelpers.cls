public class customertriggerhelpers
{
    public static void createinvoicerecords(list<customer__c> customerlist,map<id,customer__c>oldmapcustomer)
    {
        list<invoices__c> invoicelist=new list<invoices__c>();
        for(customer__c objcustomer:customerlist)
        {
            if(objcustomer.status__C=='Active' && oldmapcustomer.get(objcustomer.id).status__c=='Inactive')
            {
                invoices__c objinvoice=new invoices__c();
                objinvoice.status__c='pending';
                objinvoice.amount__C=1000;
                objinvoice.customer__C=objcustomer.id;
                invoicelist.add(objinvoice);
            }
        }  
        insert invoicelist; 
    }
}