trigger afterupdate on Customer__c (after delete) 
{
 if(trigger.isafter)
     {
         if(trigger.isdelete)
             {
                 for(customer__c cust:trigger.old)
                     {
                         if(cust.name=='oktodelete')
                         cust.adderror('you cannot delete this record');
                     }
             
             }
     }   
}