trigger beeinsert on Customer__c (before delete,before update, before insert) 
{
     if(trigger.isbefore)
     {
        if(trigger.isdelete)
         {
            for(customer__c c:trigger.old)
            {
                 c.name.adderror('you cannot delete this record');//delete operation 
            }
         }
         else if(trigger.isbefore)
                  {
                      if(trigger.isupdate)
                      {
                          for(customer__C c:trigger.new)
                          {
                              c.Customer_Description__c='this is update operation';//update operation
                          }
                      }
                  }
              
     }
     if(trigger.isbefore)
          {
              if(trigger.isinsert)
              {
                  for(customer__c c:trigger.new)
                  {                     
                      c.Customer_Description__c='this is insert operation';//insert operation
                  }
                     
              }
           }  
}