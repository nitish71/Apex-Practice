public class AggregateFuncDemoJuly25 {
    
    public static void aggregateFunctions(){
        
        AggregateResult [ ]  groupedResults = [Select AccountID, SUM(Amount) Total, Max(Amount) Maximum  from Opportunity Group by AccountID];
        system.debug(groupedResults);
        
        for(AggregateResult ar : groupedResults){
            
            system.debug('Account id are '+ ar.get('AccountID'));
            system.debug('Sum of amount is '+ ar.get('Total'));
            system.debug('Maximum of amount is '+ar.get('Maximum'));
                
        }
    }
    
    public static void aggregateFuncOptimized(){
        
        for(AggregateResult ar : [ Select AccountID, SUM(Amount) Total, Max(Amount) Maximum  from Opportunity Group by AccountID]){
            system.debug('Account id are '+ ar.get('AccountID'));
            system.debug('Sum of amount is '+ ar.get('Total'));
            system.debug('Maximum of amount is '+ar.get('Maximum'));
        }
            
    }

}
