trigger createoppcont on Account (after insert) 
{
    list<opportunity> opplist=new list<opportunity>();
    
    
    for(account a:trigger.new)
    {
        opportunity opp=new opportunity();
        
        opp.name=a.name;
        opp.stagename= 'qualification';
        opp.closedate=date.today()+14;
        opp.accountid=a.id;
        opplist.add(opp);
     }
     insert opplist;
}