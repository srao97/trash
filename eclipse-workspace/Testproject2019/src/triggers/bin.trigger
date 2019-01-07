trigger bin on Account (before insert) 
{
    if(trigger.isinsert)
    {
        for(account a:trigger.new)
        {
            system.assertequals('rao',a.name);
            system.assertequals('12345',a.accountnumber);
        }
    }
}