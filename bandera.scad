/*
Flag model by Curial Orrit - 2018
All rights reserved
*/

$INCLINA = 12;

cylinder(h=2, r=7.5, $fn=80);
cylinder(h=17, r=1.25, $fn=80);

difference() {
    union() {
        // primer aro
        difference() {
            translate([15,0,8])
            cylinder(h=16, r=16.25, $fn=80);
            translate([15,0,6])
            cylinder(h=20, r=13.75, $fn=80);
            
            translate([-5,-30,0])
            cube([50,30,30]);
            
            translate([-5,15,0])
            rotate([0,0,-45])
            cube([50,30,30]);
        }

        // segon aro
        difference() {
            translate([-10,15,8])
            cylinder(h=16, r=15.5, $fn=80);

            translate([-10,15,6])
            cylinder(h=20, r=13, $fn=80);
            
            translate([-45,12.5,0])
            rotate([0,0,-45])
            cube([60,30,30]);
            
            translate([0,19,0])
            rotate([0,0,-50])
            cube([50,30,30]);
            
            translate([-25,19,0])
            cube([50,30,30]);
        }
    } // end union
    translate([-10,0,16])
    rotate([$INCLINA,0,0])
    cube([20,20,10]);

    translate([-10,0,0])
    rotate([$INCLINA,0,0])
    cube([20,20,8]);
} // end difference
