//  Raspberry Pi Zero Case Mount Bracket
//  MVS


include<../opn-Utilities/helpers.scad>;


//  ======================================================
//  GenericBracket  Generic bracket for flat surfaces
//  ------------------------------------------------------
module GenericBracket() {
    difference() {
        union() {
            T([0,0,1.5]) { cube(size=[25.4, 25.4, 3], center=true); };
            T([0,0,7.5]) {
                cylinder(d=20, h=15, center=true); };
        };
    T([0,0,4.5]) { cylinder(d=15, h=15, center=true); };
    cylinder(d=5, h=50, center=true);
    };
};
//  ======================================================



//  ======================================================
//  UNIT TESTING
//  ------------------------------------------------------
/*
GenericBracket();
*/
//  ======================================================