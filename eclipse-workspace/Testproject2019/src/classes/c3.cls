Public class c3
{
Account[] acts=[select Name,Phone from Account where Name='Yaki'];
Public Account[] getacts()
{
return acts;
}
}