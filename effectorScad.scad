mainCircleDiameter = 31;
height = 6.35;
jheadHole=4;
armHoles=3.7;

mountBox = [14.5,23.1,height];
grooveOut = [8,1.8,height];
inductiveSides = [11.5,27.2,height];
difference()
{
cylinder(height, mainCircleDiameter/2, mainCircleDiameter/2, center= false, $fn=50);
cylinder(height, 8.15,8.15, center=false, $fn=50);    

translate([10.5,0,0])
    {
        cylinder(height, jheadHole/2, jheadHole/2, center=false, $fn=50);
    }
    
    
translate([-10.5,0,0])
    {
     cylinder(height, jheadHole/2, jheadHole/2, center=false, $fn=50);   
    }
translate([0,10.5,0])
    {
        cylinder(height, jheadHole/2, jheadHole/2, center=false, $fn=50);
    }
}
module armPart (rotation=0){
rotate([0,0,rotation]){
translate([10,-11.8,0])
{
    difference()
    {
cube(mountBox);
    translate([-10,11.8,0])
    {
        if (rotation == 0)
        {
            translate([10.5,0,0])
    {
        cylinder(height, jheadHole/2, jheadHole/2, center=false, $fn=50);
    }
        }
        else if (rotation == 120)
        { 
            rotate([0,0,-120])
            {
            translate([0,10.5,0])
    {
        cylinder(height, jheadHole/2, jheadHole/2, center=false, $fn=50);
    }}
    
        }
            }
    translate([-10,11.8,0])
    {
      translate([15.4,9.9,0])
      {
          cube(grooveOut,center= false);
          translate([3.8,-5.6,0])
          {
              cylinder(height, armHoles/2, armHoles/2, center=false, $fn=50);
              translate([0,-9,0])
              {
                cylinder(height, armHoles/2, armHoles/2, center=false, $fn=50);  
              }
              
          }
      }
    translate([15.4,-12,0])
      {
          cube(grooveOut,center= false);
           
      }    
    }
        }
}
}}
armPart(0);
armPart(120);
armPart(-120);
translate([24.5,-13.8,0])
    {
        difference()
        {
        cube(inductiveSides);
            translate([7.3,4,0])
            {
            cylinder(height,jheadHole/2,jheadHole/2, center=false, $fn=50);
                translate([0,19.4,0])
                {
                    cylinder(height,jheadHole/2,jheadHole/2, center=false, $fn=50);
                }
            } 
            translate([6,13.8,0])
            {
        cylinder(height,6.1,6.1,center=false, $fn=50);
                translate([0,-6.1,0]){
                cube([6.1,12.2,height]);
                }
            }
                }
            }
    
