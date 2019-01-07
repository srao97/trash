public class pass 
{
	public static void debugmess()
    {
        string msg='original value';
        ps(msg);
        system.debug('the value of msg'+msg);
    }
    public static void ps(string s)
    {
        s='modified value';
    }
}