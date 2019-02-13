//  Raspberry Pi Zero Case Mount Bracket
//  MVS


include<../opn-Utilities/helpers.scad>;


//  ======================================================
//  ConicalBracket  Generic bracket for flat surfaces
//  ------------------------------------------------------
GB_THICKNESS = 2.0;
GB_OD_MAX = 20.0;
GB_OD_MIN = 10;
GB_ID_MAX = GB_OD_MAX - 2*GB_THICKNESS;
GB_ID_MIN = GB_OD_MIN - 2*GB_THICKNESS;
GB_HEIGHT = 25.4;
GB_BASE_WID = 25.4;

module ConicalBracket() {
  difference() {
    union() {
      T([0,0,GB_THICKNESS/2]) { cube(size=[GB_BASE_WID, GB_BASE_WID, GB_THICKNESS], center=true); };
      T([0,0,GB_HEIGHT/2]) {
        cylinder(d1=GB_OD_MAX, d2=GB_OD_MIN, h=GB_HEIGHT, center=true); };
    };
    T([0,0,GB_HEIGHT/2-2*GB_THICKNESS]) {
      cylinder(d1=GB_ID_MAX, d2=GB_ID_MIN, h=GB_HEIGHT-GB_THICKNESS, center=true); };
    cylinder(d=3, h=100, center=true);        
  };
};
//  ======================================================



//  ======================================================
//  RightAngleBracket   Right angle bracket
//  ------------------------------------------------------
RAB_THICKNESS = 3.0;
RAB_DEPTH = 25.4;
RAB_HEI = 35 + 30;
RAB_HOLE_ID = 14;
RAB_HOLE_OFFSET = 7;
RAB_WID = 25.4 + RAB_HOLE_ID;

module RightAngleBracket() {
  difference() {
    union() {
      cube(size=[RAB_WID, RAB_THICKNESS, RAB_HEI+2*RAB_HOLE_ID]);
      R([0,0,90]) {
        cube(size=[RAB_WID, RAB_THICKNESS, RAB_HEI+2*RAB_HOLE_ID]);
      };
    };
    T([0,-1,-1]) {
      cube(size=[RAB_WID+2, RAB_THICKNESS+2, RAB_HEI+1]);
    };
    TR([RAB_WID/2+RAB_HOLE_OFFSET,-1,RAB_HEI+RAB_HOLE_ID],[-90,0,0]) {
      cylinder(d=RAB_HOLE_ID, h=RAB_THICKNESS+2);
    };
  };
};
//  ======================================================



//  ======================================================
//  UNIT TESTING
//  ------------------------------------------------------
$fa=1;
$fs=0.5;
//ConicalBracket();
//RightAngleBracket();
//  ======================================================