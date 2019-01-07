trigger testtrigger on Account (before insert,before update) 
{
     for(account a:trigger.new)
         {
             if(trigger.isinsert)
                 {
                     a.description='this is insert operation';
                 }
             else if(trigger.isupdate)
                 {
                     a.description='this is update operation';
                 }
         }    
}