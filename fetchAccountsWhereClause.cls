public class SOQLdemoJuly25 {
    
    public static void fetchAccounts(){
        
        List<Account> accList = [select id, name from Account LIMIT 10];
        
        for(Account acc : accList){
            system.debug(acc);
            
        }
    }
    
    public static void fetchAccountsWhereClause(){
        
        List<Account> accList = [select id, name from Account limit 10];
        Set<ID> IDset = new Set<ID>();
        
        for(Account acc: accList){
            IDset.add(acc.Id);
        }
        
        List<Opportunity> oppList = [select id, Name, stageName from Opportunity where AccountID IN : IDset];
        
        system.debug('opportunity having account id are '+ oppList);
    }

}
