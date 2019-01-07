trigger befdelete on Account (before delete) 
{
    //deleting a record
    if(trigger.isbefore)
    {
        if(trigger.isdelete)
        {
            for(account a:trigger.old)
            {
                if(a.name=='raju')
                {
                    a.adderror('you cannot delete this record');
                }
            }
        }
    }
}