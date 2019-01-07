trigger accountinsert on Account (before delete) 
{
    for(account a:trigger.old)
        {
        if(a.site==null)
            {
            a.adderror('you cannot delete this record');
            }
        }  
}