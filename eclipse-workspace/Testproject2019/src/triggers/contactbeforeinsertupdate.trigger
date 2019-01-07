trigger contactbeforeinsertupdate on Contact (before insert,before update)
 {
    for(contact c:trigger.new)
    {
        if(trigger.isinsert)
        {
            c.description='contact created successfully by insert trigger';
        }
        else if(trigger.isupdate)
        {
            c.description='contact updated sucessfully by else update block';
        }
    }
}