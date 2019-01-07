trigger test1 on Contact (before update)
 {
    for(contact c:trigger.new)
    {
    c.description='contact updated by udemy instructor'+userinfo.getusername();
    }
}