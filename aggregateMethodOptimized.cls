//Aggregate methods to returns columns ad therir values.
public class AggregateMethods {
    
    public static void aggFunctions(){
        
        
        for(AggregateResult ar : [select Accountid , sum(Amount) Total, max(Amount) maximum from Opportunity group by AccountID ]){
            
            system.debug('Account id is '+ ar.get('AccountID'));
            system.debug('Amount sum is '+ ar.get('Total'));
            system.debug('Maximum amount is '+ ar.get('Maximum'));
        }
    }
    
}
