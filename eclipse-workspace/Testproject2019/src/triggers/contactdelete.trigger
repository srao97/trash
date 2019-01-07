trigger contactdelete on Contact (before delete)
 {
    for(contact c:trigger.old)
        {
            if(c.accountid==null)
            {
                c.adderror('Hey!!! you are not authorized to delete this contact');
            }
        }
}