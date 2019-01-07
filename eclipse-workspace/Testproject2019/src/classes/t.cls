public class t 
{
	private string name;
    private integer size;
    public void setsize(integer s)
    {
     if(s<=0)
     {
         system.debug('you cant set a wrong value for my cat');
         size=10;
     }
        else
        {
            size=s;
        }
     }
      
    public void display()
    {
        system.debug('name of my cat'+name);
        system.debug('size of my cat'+size);
    }
}