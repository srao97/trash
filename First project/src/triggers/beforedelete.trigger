trigger beforedelete on Account (before delete) 
{
    if(trigger.isbefore)
    {
        if(trigger.isdelete)
        {
            for(account a:trigger.old)
            {
                if(a.name!='oktodelete')
                a.adderror('you cannot delete this record');

            }


        }
    }
}