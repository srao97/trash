trigger myaccounttrigger2 on Account (before insert) 
{
    if(trigger.isinsert)
        {
            for(account a:trigger.new)
            {
                system.assertEquals('MyTutorialRack',a.name);
                system.assertEquals('12345678',a.AccountNumber);
    
    
            }
    
        }
}