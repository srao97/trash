trigger customertrigger on Customer__c (after update,after insert) 
{
    if(trigger.isafter && trigger.isupdate)
    {
         customertriggerhelpers.createinvoicerecords(trigger.new,trigger.oldmap);   
    }
}