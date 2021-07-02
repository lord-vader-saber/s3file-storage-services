public class AccountHandler {
    
    public static void insertAccount(Integer num)
    {
        List <Account> addAccounts= new List <Account>();
        Integer n=1;
        while(n<=num)
        {
            Account store= new Account();
            store.Name= 'Acme Inc ' + n ;
            store.AccountNumber='A000' + n;
            addAccounts.add(store);
            n++;
        }
        insert addAccounts;
    }

}