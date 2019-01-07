Public class relatedcontracthandler
{
    @Invocablemethod
    public static void closecontractforaccounts(list<Id> accountIdlist)
    {
       List<contract> contractlist=[select id,status from contract where status!='Closed' AND Account.status__c='Closed' 
       AND AccountId in:accountIdlist];
       for(contract c:contractlist)
       {
           c.status='Closed';
       }
       update contractlist;
    }
}