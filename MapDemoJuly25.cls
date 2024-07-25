public class MapDemoJuly25 {
    
    public static void mapDemo(){
        
        Map<Integer , String> colorMap = new Map<Integer , string>();
        
        colorMap.put(1, 'Red');
        colorMap.put(2, 'green');
        colorMap.put(3, 'yelllow');
        colorMap.put(4, 'violet');
        colorMap.put(5, 'blue');
        
        system.debug('colors in the map are '+ colorMap);
        
        colorMap.put(4, 'Magenta');
        system.debug('colors in the map are '+ colorMap);
        
        system.debug('map contans keys are '+ colorMap.keyset());
        system.debug('Map containing valuea are '+ colorMap.values());
        
    }
    
    public static void createAccount(){
        
        List<Account> accList = new List<Account>();
        
        for(integer i = 1; i<= 5 ; i++){
            Account acc = new Account();
            acc.Name = 'Account July 25';
            acc.Phone = '534543543';
            acc.AnnualRevenue = 3424423;
            acc.Active__c = 'Yes';
            if(acc.Active__c == 'Yes'){
                accList.add(acc);
            }
            
        }
        if(!accList.isEmpty()){
            insert accList;
        }
        
        
        Map<ID, Account> accMap = new Map<ID, Account>(accList);
        
        system.debug('Map contains '+ accMap);
        system.debug('Map keys are '+ accMap.keyset());
        system.debug('Map values are '+ accMap.values());
    }
    
    
    
    
    
    
    
    
    
    

}
