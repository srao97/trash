trigger beforeins on Account (before insert) 
{
    if(trigger.isinsert)
        {
        for(account a:trigger.new)
            {
                system.assertequals('mydad',a.name);
            }
        }
}