public class insertUpdateJuly25v2 {
    Public static void updateCreateAccounts(){
        
        List<Account> accList = [SELECT ID, Name, Phone, Industry FROM Account WHERE Industry = 'Media'];
        
        if(!accList.isEmpty()){
            for(Account acc : accList){
                acc.Industry = 'Technology';
            }
            
        }
        for(integer i = 1; i<=5; i++){
            Account acc = new Account();
            acc.Name = 'Testing july 25'+i;
            acc.Industry = 'Media';
            acc.AnnualRevenue = 1000990;
            acc.Active__c = 'Yes';
            accList.add(acc);
        }
        
        if(!accList.isEmpty()){
            upsert accList;
        }
    }
    
}

