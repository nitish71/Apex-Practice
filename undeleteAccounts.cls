public class deleteQueryJuly25 {
    
    Public static void deleteAccount(){
        
        List<Account> accList = [SELECT ID, Name, Industry FROM Account WHERE INDUSTRY = 'Media'];
        
        if(!accList.isEmpty()){
            
            delete accList;
        }
        
    }
    
    public static void undeleteAccounts(){
        
        List<Account> accList = [SELECT ID, Name, Industry FROM Account WHERE INDUSTRY = 'Media' ALL ROWS];
        
        if(!accList.isEmpty()){
            
            undelete accList;
        }
    }

}
