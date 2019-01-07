trigger aftersinsert on Account (after update)
{
    //if you insert new account record, it should insert new account record
    list<contact> con=new list<contact>();
    for(account a:trigger.new)
    {
        contact c=new contact();
        c.phone=a.phone;
        con.add(c);
    }
    insert con;//insert operation
}