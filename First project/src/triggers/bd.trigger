trigger bd on Contact (before delete) 
{
    //deleting a  contact record
    for(contact c:trigger.old)
    {
        if(c.accountid!=null)
        {
            c.adderror('you cannot delete this record');
        }
    }
}