trigger afin on Account (after insert)
// after insert operation
{
    list<contact> con=new list<contact>();
    for(account a:trigger.new)
    {
        contact c=new contact();
        c.lastname=a.name;
        c.firstname=a.name;
        con.add(c);
    }   
    insert con;//inserting record in contact object
}