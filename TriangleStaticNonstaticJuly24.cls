public class TriangleStaticNonstaticJuly24 {
    
    decimal len,width;
    
    public TriangleStaticNonstaticJuly24(decimal l, decimal b){
        
        This.len = l;
        this.width = b;
        
        
    }
    public void areaOfTri(){
        
        decimal area;
        area = 0.5*len*width;
        system.debug('Area of triangle using constructor is  '+ area);
        
    }
    
    public static void areaOfTri2(decimal l, decimal b){
        
        decimal area2;
        area2 = 0.5*l*b;
        system.debug('Area of traingle using static '+ area2);
    }

}

/*calling of methods using both way
 * TriangleStaticNonstaticJuly24 myRec = new TriangleStaticNonstaticJuly24(10,20);
myRec.areaOfTri();

TriangleStaticNonstaticJuly24.areaOfTri2(10,20);    
   */
