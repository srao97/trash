trigger contactbeforeinsert on Contact (before insert) 
{
  for(contact contact:trigger.new)
  {
      contact.Description='contact updated by rao';
  }  
}