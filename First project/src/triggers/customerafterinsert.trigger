trigger customerafterinsert on Customer__c (after update)
{
   customertriggerhelpers.createinvoicerecords(trigger.new,trigger.oldmap); 
}