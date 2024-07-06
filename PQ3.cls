//program to query five accounts into a list now iterate on a list and create a map where key will be account id
//and value will be account sObject (without using loop) and display value of map. 
public class PQ3 {
    
    public static void queryAccounts(){
        
        List<Account> accList = new List<Account>();
        Map<ID, Account> accMap = new Map<ID, Account>();
        
        accList = [select id, name from Account limit 5];
        
        for (Account acc : accList){
            
            accMap.put(acc.id, acc);
        }
        
        system.debug(accMap.values());
        
    }

}
