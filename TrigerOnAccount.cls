public class TriggerOnAccountHandler {
    public static void updateDescOnAcc(List<Account> accList){
        for(Account acc : accList){
            acc.Description = 'This is description updated through trigger';
        }
        
    }
    
    public static void updateRatingOnAcc(List<Account> accList){
        for(Account acc : accList){
            if(acc.Industry != null && acc.Industry  == 'Technogy'){
                acc.Rating = 'Hot';
            }else{
                acc.Rating = 'Warm';
            }
        }
        
    }
    
}
