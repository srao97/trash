public class c4
    {

    public String getActs() {
        return null;
    }


       Account[] selectedacts;
        public Account[] getselectedacts()
    {
        return selectedacts;
    }
        public pagereference showall()
        {
        selectedacts=[select Name,Phone,fax from Account];
        return null;
        }
    
        public pagereference direct()
        {
        selectedacts=[select Name,phone,fax from Account where Name='Yaki'];
        return null;
        }
    
    
    
    }