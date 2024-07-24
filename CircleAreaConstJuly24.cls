public class CircleAreaConstJuly24 {
    
    decimal radius;
    
    public CircleAreaConstJuly24(decimal R){
        
        This.radius = R;
        
    }
    
    public void areaOfcircle(){
        
        decimal A = 3.14*radius*radius;
        system.debug('area of circle is '+ A);
    }

}

/*
CircleAreaConstJuly24 myArea = new CircleAreaConstJuly24(100);
myArea.areaOfcircle();
*/
