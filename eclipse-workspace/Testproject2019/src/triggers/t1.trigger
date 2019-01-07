trigger t1 on Account (before Insert) 
{
    for(Account a:trigger.new)
    {
        if(a.industry=='Technology')
        {
            a.description='Technology Account';
        }
    }
}