trigger contactbeforeupdate on Contact (before update)
 {
    for(contact c:trigger.new)
    {
    c.description='contact updated successfully by'+userinfo.getusername();
    }
    
}