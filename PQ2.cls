//program to query five accounts into a list now iterate on a list and create a map where key will be account id
//and value will be account sObject (using loop) and display value of map.
public class PQ2 {
    
    public static void queryAccounts(){
        
        List<Account> accList = new List<Account>();
        Map<id, Account> accMap = new Map<id, Account >();
        
        accList = [select id, name from Account limit 5];
        
        for (Account acc : accList){
            
            accMap.put(acc.id, acc);
            //accMap.add(acc)
            
        }
        system.debug('Value of maps are '+accMap.values());
         
    }
    
}
