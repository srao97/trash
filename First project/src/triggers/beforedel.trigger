trigger beforedel on Contact (before delete) 
{
    for(contact c:trigger.old)
        {
            if(c.accountid==null)
                {
                    c.adderror('you cannot delete this record');
                }
        }
}