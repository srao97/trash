public class simpletriggerhelper
{
    public static void insertrecord(list<account> acclist)
    
    {
        list<contact> con=new list<contact>();
        for(account acc:acclist)
        {
            contact c=new contact();
            c.lastname=acc.name;
            c.firstname=acc.name;
            con.add(c);
        }
        insert con;
    }
    
    
}