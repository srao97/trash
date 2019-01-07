@istest
public class startstopdemotest
{
    //limit.getdmlstatements-returns the number of dml statements that have been called.
    static testmethod void dounittest()
    {
        test.starttest();
        contact con=new contact();
        con.lastname='samplecontact123';
        insert con;
        system.assertequals(1,limits.getdmlstatements());
        test.stoptest();
        system.assertequals(0,limits.getdmlstatements());
    }

}