//program to query related opportunity of accounts where account id matches.
public class queryRelatedOpp {
    
    public static void queryOpp(){
        List<Account> accList = new List<Account>();
        Set<ID> accID = new set<ID>();
        acclist = [select id, name from account];
        for(Account acc :accList){
            accID.add(acc.Id);
        }
        List<opportunity> oppList = new List<Opportunity>();
        oppList = [select id , Name, accountID from Opportunity where AccountID IN : accList];
        
        for(Opportunity opp : oppList){
            system.debug(opp);
        }
        
        
    }        
    
}
