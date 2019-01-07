trigger act on Account (before insert)
{ 
    if(trigger.isinsert)
    {
        for(account a:trigger.new)
        {
            system.assertequals('mytutorial',a.name);
        }
    }
}