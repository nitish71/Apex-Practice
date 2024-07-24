public class RectangleAgainJuly24 {
    
    public static void calculateRect(integer len, integer width){
        
        integer sumOfSide = len+width;
        
        if(sumOfSide>50){
            integer area;
            area = len*width;
            system.debug('Area of rectangle is '+ area);
            
        }else{
            
            integer perimeter;
            perimeter = 2*(len+width);
            system.debug('Perimeter of rectangle is '+ perimeter);
        }
        
        
    }
    

}

//to call =  RectangleAgainJuly24.calculateRect(11,12);
