global class batprocess implements database.Batchable<sobject>
{
	global database.querylocator start(database.BatchableContext BC )
    {
        string query='select id,name from account';
        return database.getQueryLocator(query);
    }
    global void execute(database.BatchableContext BC,list<account>scope)
    {
        for(Account a:scope)
        {
            a.name=a.name+'***';
        }
        update scope;
    }
    global void finish(database.BatchableContext BC)
    {
        
    }
}