trigger aftins on Account (after insert) 
{
    list<contact> con=new list<contact>();
    for(account a:trigger.new)
    {
        contact c=new contact();
        c.lastname=a.name;
        con.add(c);
    }
    insert con;
}