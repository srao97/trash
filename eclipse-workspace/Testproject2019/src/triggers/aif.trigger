trigger aif on Account (before delete ) 
{
    //deleting a record
    for(account a:trigger.old)
    {
        if(a.accountnumber!=null)
        {
            a.adderror('you cannot delete this record');
        }
    }
}