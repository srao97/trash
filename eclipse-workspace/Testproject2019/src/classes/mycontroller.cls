public class mycontroller {

    public List<Account> getMyaccounts() {
        return [select Id,Name,phone from Account limit 10];
    }

}