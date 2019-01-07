trigger customertrigger on Customer__c (after update) 
{
    customertriggerhelper.createinvoicerecords(trigger.new,trigger.oldmap);   
    
}