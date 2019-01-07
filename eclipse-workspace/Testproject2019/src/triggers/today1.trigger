trigger today1 on Account (after insert) 
{
    //using after insert operation
    list<contact> con=new list<contact>();
    for(account a:trigger.new)
    {
        if(a.name=='oktodelete')
        {
            contact c=new contact();
            c.lastname=a.name;
            c.firstname=a.name;
            con.add(c);
        }
    }
    insert con;//insert operation outside the loop
}