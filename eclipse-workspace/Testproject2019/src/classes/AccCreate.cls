global class AccCreate
{
    webservice static string createaccount (string name,string phone,string city)
    {
        Account acc= new Account();
        acc.name=name;
        acc.phone=phone;
        acc.billingcity=city;
        insert acc;
        
    if(acc.id!=null)
        {
            return 'success';
        }
     else
        {
            return 'failure';
        }    
        
    }

}