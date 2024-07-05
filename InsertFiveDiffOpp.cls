//create 5 opportunity with different names
public class OppWithDiffName {
    
    //create a methods
    public static void createOpp(){
        
        List<Opportunity> oppList = new List<Opportunity>();
        
        for (integer i = 1; i<=5; i++){
            
            Opportunity opp = new Opportunity();
            
            opp.Name = 'my name is opportunity'+i;
            opp.StageName = 'Prospecting';
            opp.CloseDate = system.today();
            
            oppList.add(opp);
        }
        
        insert oppList;
    }
    
}
