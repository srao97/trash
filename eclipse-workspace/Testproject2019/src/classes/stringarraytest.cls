public class stringarraytest 
{
	public static list<string> generatestringarray(integer n)
    {
        list<string> myarray=new list<string>();
    	for(integer i=0;i<n;i++)
        {
            myarray.add('Test'+i);
            system.debug(myarray[i]);
        }
    	return myarray;
        }

}