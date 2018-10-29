$fn = 300;

module round_part(){
translate([0,0,1.8]) cylinder(h = 1.2, d = 34.3);
translate([0,0,1.2])difference(){
    cylinder(h = 2.4,d = 34.3, center=true);
    translate([0,0,-11.7])sphere(d = 34.3);
}
}
module complete_round_part(){
difference() {
    round_part();
translate([0,0,-16.5]){difference(){
    cube([40,40,40], center=true);
    sphere(d = 49.35);}}
}
difference(){
    cylinder(h=1.2, d=34.3);
    cylinder(h=1.2, d=33);
}
}

module round_part_with_cube(){
    complete_round_part();
    difference(){
    translate([0,0,1.2/2]) {cube([34.5, 23.7,1.2], center=true);}
    cylinder(h=2.4, d=34.3);
    
    
    }
}

module part_with_straps() {
    difference(){
        round_part_with_cube();
        translate([15,9.6,0]){cylinder(h = 5, d=1.6);}
        translate([-15,-9.6,0]){cylinder(h = 5, d=1.6);}
        translate([15,-9.6,0]){cylinder(h = 5, d=1.6);}
        translate([-15,9,0]){cylinder(h = 5, d=1.6);}   
        translate([12.5,7.1,1.2]){cube([8,6,3]);}
        translate([12.5,-7.1-6,1.2]){cube([8,6,3]);}
        translate([-12.5-8,7.1,1.2]){cube([8,6,3]);}
        translate([-12.5-8,-7.1-6,1.2]){cube([8,6,3]);}
    }
    translate([34.5/2 - 2.3,-14.2/2, 1.2]){cube([2.3,14.2,1.8-1.2]);}
    
    
    translate([-34.5/2,-14.2/2, 1.2]){cube([2.3,14.2,1.8-1.2]);}
    
}
module final_part() {
    difference() {
        part_with_straps();
        translate([34.5/2 - 2.3,-14.2/2, 1.6]){cube([2.3,30,10]);}
        translate([-34.5/2,-14.2/2, 1.6]){cube([2.3,30,10]);}
        }
    }

final_part();