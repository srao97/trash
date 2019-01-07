trigger acc on Account (before delete)
{
    for(account a:trigger.old)
        {
            if(a.AccountNumber!='2345')
                {
                a.adderror('you cannot delete this record');
                }
        }
    
}