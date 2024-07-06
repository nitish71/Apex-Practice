//program to query 5 account records into a list,, now iterate on account id of list and create a set of ids.
public class PQ1 {
    
    public static void queryAccounts(){
        
        List<Account> accList = new List<Account>();
        Set<ID> IDset = new set<ID>();
        accList = [select id, name from account limit 5];
        
        for(Account acc : accList){
            
            IDset.add(acc.Id);
        }
        
        system.debug(IDset);
    }

}
