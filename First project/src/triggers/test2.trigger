trigger test2 on Account (before insert,after insert)
{
     if(trigger.isbefore)
        {
            if(trigger.isinsert)
            {       
                 for(account a:trigger.new)
                 {
                     a.description='this is before insert operation';    
                 }
            }
        }
     else if(trigger.isafter)
        {
            if(trigger.isinsert)
            {
                list<contact> con=new list<contact>();
                for(account a:trigger.new)
                {
                     contact conn=new contact();
                     conn.lastname=a.name;
                     con.add(conn);
               }
               insert con;
            }
            
     
        }  
  
}