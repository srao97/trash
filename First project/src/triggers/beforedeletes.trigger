trigger beforedeletes on Account (before delete)
{
    if(trigger.isbefore)
    {
        if(trigger.isdelete)
            {
                for(account a:trigger.old)
                {
                    if(a.name!='badcow')
                    a.adderror('you cannot delete this record');
                }
        
            }
    }
}