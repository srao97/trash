trigger beforeinsertupdate on Contact (before insert,before update)
{
    for(contact c:trigger.new)
        {
            if(trigger.isinsert)
            {
                c.description='welcome rao to contact insert';
            }
            else if(trigger.isupdate)
            {
                c.description='welcome rao to contact update';
            }
        }
}