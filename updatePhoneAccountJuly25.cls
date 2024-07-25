public class UpdateQueryJuly25 {
    
    public static void updatePhoneAccount(){
        
        List<Account> accList = [SELECT ID, Name, Phone, Industry,AnnualRevenue FROM Account where Industry = NULL];
        
        if(!accList.isEmpty()){
            
            for(Account acc : accList){
                acc.Industry = 'Manufacturing';
            }
            update accList;
        }
    }

}
