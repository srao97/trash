public class myhelloworld
{
    public static void applydiscount(book__C[] books)
    {
        for(book__c b:books)
        {
            b.price__C=b.price__c*0.9;
        }
    }
}