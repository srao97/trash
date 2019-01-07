public class cato 
{
    private string name;
    private integer size;
	public cato(string n,integer s)
    {
        name=n;
        size=s;
    }
    public void display()
    {
        system.debug('name of my cat'+name);
        system.debug('size of my cat'+size);
    }
}