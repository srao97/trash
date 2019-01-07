trigger aftersinsert on Account (after insert)
{
    //if you insert new account record, it should insert new account record
    list<contact> con=new list<contact>();
    for(account a:trigger.new)
    {
        contact c=new contact();
        c.lastname=a.name;
        c.firstname=a.name;
        con.add(c);
    }
    insert con;//insert operation
}