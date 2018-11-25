trigger simpletrigger on Account (after insert) 
{
    list<contact> contactlist= new list<contact>();
    for(account a:trigger.new)
        {
            contact c=new contact();
            c.lastname=a.name;
            contactlist.add(c);
        }
insert contactlist;
}