trigger today on Account (after delete) 
{
    list<contact> con=new list<contact>();
    for(account a:trigger.old)
    {
        if(a.name=='ramba')
        {
            contact c=new contact();
            c.lastname=a.name;
            con.add(c);
        }
    }
    delete con;
}