public class Contactlistcontroller {
    public string sortorder='LastName';
        public list<Contact> getcontacts()
        {
        List <Contact> results=Database.query('select Id,FirstName,LastName from Contact LIMIT 10');
        return results;
}
}