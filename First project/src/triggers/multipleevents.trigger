trigger multipleevents on Account (before insert,before update,before delete) 
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
        else if(trigger.isupdate)
            {
                for(account a:trigger.new)
                {
                    a.description='this is before update operation';
                }
            }
        if(trigger.isdelete)
        {
            for(account a:trigger.old)
            {
                if(a.accountnumber=='null')
                {
                    a.adderror('you cannot delete this record when number is null');
                }
            }
        }
    }
}