//program to query and iterate aggregated results.
public class AggregateFunDemo {
    
    public static void aggFunction(){
        
        AggregateResult [ ] groupedResult = [select AccountID, sum(Amount) FROM Opportunity Group BY AccountID];
        
        system.debug('groupedResult');
        
        for(AggregateResult ar : groupedResult){
            
            system.debug('Accout ID is  '+ ar.get('AccountID'));
            system.debug('Amount sum is '+ ar.get('expr0'));
        }
    }



}
