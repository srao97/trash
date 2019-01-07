trigger beftrigger on Account (before insert,before update,before delete)
{
        if(trigger.isinsert)
            {
                for(account a:trigger.new)
                   {
                     a.description='isinsert trigger';
                   }
            }
         else if(trigger.isupdate)
             {
                 for(account a:trigger.new)
                   {
                     a.description='isupdate trigger';
                   }
             }
         if(trigger.isdelete)  
               {
                    for(account a:trigger.old)
               {
                    if(a.accountnumber==null)
                        {
                            a.adderror('you cannot delete record');
                        }
                    
                    
               }
      
               }
}