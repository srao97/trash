trigger helloworldtrigger on Book__c (before insert) 
{
    book__c[] books=trigger.new;
    myhelloworld.applydiscount(books);
}