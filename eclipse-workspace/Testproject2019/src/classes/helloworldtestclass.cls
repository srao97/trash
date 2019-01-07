@istest
private class helloworldtestclass
{
    static testmethod void validatehelloworld()
    {
        book__c b=new book__c(name='salesforce',price__c=100);
        system.debug('price before inserting new book:'+b.price__c);
        
        //insert book
        insert b;
        b=[select price__c from book__c where ID=:B.Id];
        system.assertequals(90,b.price__c);
    }
}