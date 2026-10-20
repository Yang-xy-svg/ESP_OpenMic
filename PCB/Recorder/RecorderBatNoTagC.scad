// Generated case design for Recorder/Recorder.kicad_pcb
// By https://codeberg.org/RevK/PCBCase
// Generated 2026-07-23 12:17:27
// title:	OpenMic
// company:	Adrian Kennard, Andrews & Arnold Ltd
//

// Globals
margin=0.200000;
lip=3.000000;
lipa=0;
lipt=2;
casewall=3.000000;
casebottom=7.500000;
module casebottomscad(){};
casetop=7.000000;
module casetopscad(){};
casetopbump=0.000000;
bottomthickness=0.000000;
topthickness=0.000000;
fit=0.000000;
snap=0.150000;
edge=2.000000;
pcbthickness=1.200000;
function pcbthickness()=1.200000;
nohull=false;
hullcap=1.000000;
hulledge=1.000000;
useredge=true;
dateh=3.000000;
date="2026-07-23";
datex=5.000000;
datey=2.500000;
datet=0.500000;
datea=0;
datef="OCRB";
urlh=3.000000;
url="shop.revk.uk";
urlx=5.000000;
urly=-2.500000;
urlt=0.500000;
urla=0;
urlf="OCRB";
logoh=10.000000;
logo="A";
logox=15.000000;
logoy=0.000000;
logot=0.500000;
logoa=90;
logof="AJK";
nameh=0.000000;
spacing=65.000000;
pcbwidth=49.000000;
function pcbwidth()=49.000000;
pcblength=25.000000;
function pcblength()=25.000000;
originx=100.500000;
originy=100.000000;

module outline(h=pcbthickness,r=0){linear_extrude(height=h)offset(r=r)polygon(points=[[-15.500000,10.000000],[-15.500000,-10.000000],[-13.000000,-12.500000],[23.500000,-12.500000],[23.882684,-12.423880],[24.207107,-12.207107],[24.423880,-11.882684],[24.500000,-11.500000],[24.500000,11.500000],[24.423880,11.882684],[24.207107,12.207107],[23.882684,12.423880],[23.500000,12.500000],[-13.000000,12.500000]],paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13]]);}

module pcb(h=pcbthickness,r=0){linear_extrude(height=h)offset(r=r)polygon(points=[[-24.500000,5.000000],[-24.500000,-5.000000],[-24.449107,-5.711574],[-24.297465,-6.408663],[-24.048160,-7.077075],[-23.706268,-7.703204],[-23.278748,-8.274304],[-22.774304,-8.778748],[-22.203204,-9.206268],[-21.577075,-9.548160],[-20.908663,-9.797465],[-20.211574,-9.949107],[-19.500000,-10.000000],[-15.500000,-10.000000],[-13.000000,-12.500000],[17.700000,-12.500000],[17.700000,-11.000000],[17.734074,-10.741181],[17.833974,-10.500000],[17.992893,-10.292893],[18.200000,-10.133974],[18.441181,-10.034074],[18.700000,-10.000000],[20.700000,-10.000000],[20.958819,-10.034074],[21.200000,-10.133974],[21.407107,-10.292893],[21.566026,-10.500000],[21.665926,-10.741181],[21.700000,-11.000000],[21.700000,-12.500000],[23.500000,-12.500000],[23.882684,-12.423880],[24.207107,-12.207107],[24.423880,-11.882684],[24.500000,-11.500000],[24.500000,11.500000],[24.423880,11.882684],[24.207107,12.207107],[23.882684,12.423880],[23.500000,12.500000],[-13.000000,12.500000],[-15.500000,10.000000],[-19.500000,10.000000],[-20.211574,9.949107],[-20.908663,9.797465],[-21.577075,9.548160],[-22.203204,9.206268],[-22.774304,8.778748],[-23.278748,8.274304],[-23.706268,7.703204],[-24.048160,7.077075],[-24.297465,6.408663],[-24.449107,5.711574],[-21.500000,5.000000],[-21.500000,-5.000000],[-21.431852,-5.517638],[-21.232051,-6.000000],[-20.914214,-6.414214],[-20.500000,-6.732051],[-20.017638,-6.931852],[-19.500000,-7.000000],[-17.500000,-7.000000],[-16.982362,-6.931852],[-16.500000,-6.732051],[-16.085786,-6.414214],[-15.767949,-6.000000],[-15.568148,-5.517638],[-15.500000,-5.000000],[-15.500000,5.000000],[-15.568148,5.517638],[-15.767949,6.000000],[-16.085786,6.414214],[-16.500000,6.732051],[-16.982362,6.931852],[-17.500000,7.000000],[-19.500000,7.000000],[-20.017638,6.931852],[-20.500000,6.732051],[-20.914214,6.414214],[-21.232051,6.000000],[-21.431852,5.517638]],paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53],[54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81]]);}
module D15(){translate([-8.500000,-10.800000,1.200000])rotate([0,0,90.000000])children();}
module part_D15(part=true,hole=false,block=false,punch=false)
{
translate([-8.500000,-10.800000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,punch,casetop); // D15
};
module D10(){translate([1.500000,-10.800000,1.200000])rotate([0,0,90.000000])children();}
module part_D10(part=true,hole=false,block=false,punch=false)
{
translate([1.500000,-10.800000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,punch,casetop); // D15
};
module C19(){translate([5.450000,-9.200000,1.200000])rotate([0,0,90.000000])children();}
module part_C19(part=true,hole=false,block=false,punch=false)
{
translate([5.450000,-9.200000,1.200000])rotate([0,0,90.000000])m1(part,hole,block,punch,casetop); // C19
};
module R10(){translate([-6.450000,-9.200000,1.200000])rotate([0,0,90.000000])children();}
module part_R10(part=true,hole=false,block=false,punch=false)
{
translate([-6.450000,-9.200000,1.200000])rotate([0,0,90.000000])m2(part,hole,block,punch,casetop); // R10
};
module D6(){translate([5.500000,-10.800000,1.200000])rotate([0,0,90.000000])children();}
module part_D6(part=true,hole=false,block=false,punch=false)
{
translate([5.500000,-10.800000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,punch,casetop); // D15
};
module Q1(){translate([13.800000,-1.700000,1.200000])rotate([0,0,180.000000])children();}
module part_Q1(part=true,hole=false,block=false,punch=false)
{
translate([13.800000,-1.700000,1.200000])rotate([0,0,180.000000])m3(part,hole,block,punch,casetop); // Q1
};
module C17(){translate([3.750000,-9.200000,1.200000])rotate([0,0,90.000000])children();}
module part_C17(part=true,hole=false,block=false,punch=false)
{
translate([3.750000,-9.200000,1.200000])rotate([0,0,90.000000])m1(part,hole,block,punch,casetop); // C19
};
module R11(){translate([15.925000,5.900000,1.200000])rotate([0,0,180.000000])children();}
module part_R11(part=true,hole=false,block=false,punch=false)
{
translate([15.925000,5.900000,1.200000])rotate([0,0,180.000000])m2(part,hole,block,punch,casetop); // R10
};
module U3(){translate([10.200000,-1.700000,1.200000])children();}
module part_U3(part=true,hole=false,block=false,punch=false)
{
translate([10.200000,-1.700000,1.200000])m4(part,hole,block,punch,casetop); // U3
};
module R12(){translate([19.725000,2.000000,1.200000])rotate([0,0,180.000000])children();}
module part_R12(part=true,hole=false,block=false,punch=false)
{
translate([19.725000,2.000000,1.200000])rotate([0,0,180.000000])m2(part,hole,block,punch,casetop); // R10
};
module R13(){translate([19.600000,11.800000,1.200000])children();}
module part_R13(part=true,hole=false,block=false,punch=false)
{
translate([19.600000,11.800000,1.200000])m2(part,hole,block,punch,casetop); // R10
};
module D8(){translate([3.500000,-10.800000,1.200000])rotate([0,0,90.000000])children();}
module part_D8(part=true,hole=false,block=false,punch=false)
{
translate([3.500000,-10.800000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,punch,casetop); // D15
};
module D12(){translate([-2.500000,-10.800000,1.200000])rotate([0,0,90.000000])children();}
module part_D12(part=true,hole=false,block=false,punch=false)
{
translate([-2.500000,-10.800000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,punch,casetop); // D15
};
module D5(){translate([7.500000,-10.800000,1.200000])rotate([0,0,90.000000])children();}
module part_D5(part=true,hole=false,block=false,punch=false)
{
translate([7.500000,-10.800000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,punch,casetop); // D15
};
module C16(){translate([2.050000,-9.200000,1.200000])rotate([0,0,90.000000])children();}
module part_C16(part=true,hole=false,block=false,punch=false)
{
translate([2.050000,-9.200000,1.200000])rotate([0,0,90.000000])m1(part,hole,block,punch,casetop); // C19
};
module D7(){translate([-13.500000,-7.000000,1.200000])rotate([0,0,-90.000000])children();}
module part_D7(part=true,hole=false,block=false,punch=false)
{
translate([-13.500000,-7.000000,1.200000])rotate([0,0,-90.000000])m0(part,hole,block,punch,casetop); // D15
};
module V1(){translate([-0.500000,12.500000,1.200000])children();}
module part_V1(part=true,hole=false,block=false,punch=false)
{
};
module TP1(){translate([-9.700000,0.900000,1.200000])rotate([0,0,180.000000])children();}
module part_TP1(part=true,hole=false,block=false,punch=false)
{
};
module R16(){translate([8.350000,-6.425000,1.200000])rotate([0,0,90.000000])children();}
module part_R16(part=true,hole=false,block=false,punch=false)
{
translate([8.350000,-6.425000,1.200000])rotate([0,0,90.000000])m2(part,hole,block,punch,casetop); // R10
};
module C20(){translate([6.300000,-9.200000,1.200000])rotate([0,0,90.000000])children();}
module part_C20(part=true,hole=false,block=false,punch=false)
{
translate([6.300000,-9.200000,1.200000])rotate([0,0,90.000000])m1(part,hole,block,punch,casetop); // C19
};
module SW3(){translate([12.200000,6.162500,1.200000])rotate([0,0,180.000000])children();}
module part_SW3(part=true,hole=false,block=false,punch=false)
{
translate([12.200000,6.162500,1.200000])rotate([0,0,180.000000])m5(part,hole,block,punch,casetop); // SW3
};
module R3(){translate([-1.350000,-9.200000,1.200000])rotate([0,0,90.000000])children();}
module part_R3(part=true,hole=false,block=false,punch=false)
{
translate([-1.350000,-9.200000,1.200000])rotate([0,0,90.000000])m2(part,hole,block,punch,casetop); // R10
};
module R2(){translate([8.500000,6.600000,1.200000])rotate([0,0,90.000000])children();}
module part_R2(part=true,hole=false,block=false,punch=false)
{
translate([8.500000,6.600000,1.200000])rotate([0,0,90.000000])m2(part,hole,block,punch,casetop); // R10
};
module C11(){translate([-11.900000,4.800000,1.200000])rotate([0,0,90.000000])children();}
module part_C11(part=true,hole=false,block=false,punch=false)
{
translate([-11.900000,4.800000,1.200000])rotate([0,0,90.000000])m1(part,hole,block,punch,casetop); // C19
};
module U4(){translate([12.275000,2.625000,1.200000])rotate([0,0,90.000000])children();}
module part_U4(part=true,hole=false,block=false,punch=false)
{
translate([12.275000,2.625000,1.200000])rotate([0,0,90.000000])m4(part,hole,block,punch,casetop); // U3 (back)
};
module U2(){translate([9.300000,4.500000,1.200000])rotate([0,0,-90.000000])children();}
module part_U2(part=true,hole=false,block=false,punch=false)
{
translate([9.300000,4.500000,1.200000])rotate([0,0,-90.000000])m6(part,hole,block,punch,casetop); // U2
};
module R4(){translate([-2.200000,-9.200000,1.200000])rotate([0,0,90.000000])children();}
module part_R4(part=true,hole=false,block=false,punch=false)
{
translate([-2.200000,-9.200000,1.200000])rotate([0,0,90.000000])m2(part,hole,block,punch,casetop); // R10
};
module D4(){translate([9.500000,-10.800000,1.200000])rotate([0,0,90.000000])children();}
module part_D4(part=true,hole=false,block=false,punch=false)
{
translate([9.500000,-10.800000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,punch,casetop); // D15
};
module J5(){translate([19.000000,7.000000,1.200000])rotate([0,0,90.000000])children();}
module part_J5(part=true,hole=false,block=false,punch=false)
{
translate([19.000000,7.000000,1.200000])rotate([0,0,90.000000])translate([0.000000,-1.900000,0.000000])rotate([90.000000,0.000000,0.000000])m7(part,hole,block,punch,casetop); // RevK:USB-C-Socket-H CSP-USC16-TR (back)
};
module C18(){translate([4.600000,-9.200000,1.200000])rotate([0,0,90.000000])children();}
module part_C18(part=true,hole=false,block=false,punch=false)
{
translate([4.600000,-9.200000,1.200000])rotate([0,0,90.000000])m1(part,hole,block,punch,casetop); // C19
};
module D11(){translate([-0.500000,-10.800000,1.200000])rotate([0,0,90.000000])children();}
module part_D11(part=true,hole=false,block=false,punch=false)
{
translate([-0.500000,-10.800000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,punch,casetop); // D15
};
module D9(){translate([-13.500000,7.000000,1.200000])rotate([0,0,-90.000000])children();}
module part_D9(part=true,hole=false,block=false,punch=false)
{
translate([-13.500000,7.000000,1.200000])rotate([0,0,-90.000000])m0(part,hole,block,punch,casetop); // D15
};
module R1(){translate([11.200000,-3.600000,1.200000])rotate([0,0,180.000000])children();}
module part_R1(part=true,hole=false,block=false,punch=false)
{
translate([11.200000,-3.600000,1.200000])rotate([0,0,180.000000])m2(part,hole,block,punch,casetop); // R10
};
module D1(){translate([12.275000,4.850000,1.200000])children();}
module part_D1(part=true,hole=false,block=false,punch=false)
{
translate([12.275000,4.850000,1.200000])m8(part,hole,block,punch,casetop); // RevK:D_0402 DFN1006-2L (back)
};
module C12(){translate([-7.300000,-9.200000,1.200000])rotate([0,0,90.000000])children();}
module part_C12(part=true,hole=false,block=false,punch=false)
{
translate([-7.300000,-9.200000,1.200000])rotate([0,0,90.000000])m1(part,hole,block,punch,casetop); // C19
};
module D13(){translate([-4.500000,-10.800000,1.200000])rotate([0,0,90.000000])children();}
module part_D13(part=true,hole=false,block=false,punch=false)
{
translate([-4.500000,-10.800000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,punch,casetop); // D15
};
module C9(){translate([17.900000,-1.700000,1.200000])rotate([0,0,90.000000])children();}
module part_C9(part=true,hole=false,block=false,punch=false)
{
translate([17.900000,-1.700000,1.200000])rotate([0,0,90.000000])m9(part,hole,block,punch,casetop); // C9
};
module D3(){translate([14.725000,2.125000,1.200000])rotate([0,0,90.000000])children();}
module part_D3(part=true,hole=false,block=false,punch=false)
{
translate([14.725000,2.125000,1.200000])rotate([0,0,90.000000])m10(part,hole,block,punch,casetop); // D3
};
module D2(){translate([21.600000,-4.600000,1.200000])rotate([0,0,180.000000])children();}
module part_D2(part=true,hole=false,block=false,punch=false)
{
translate([21.600000,-4.600000,1.200000])rotate([0,0,180.000000])m8(part,hole,block,punch,casetop); // RevK:D_0402 DFN1006-2L
};
module C15(){translate([1.200000,-9.200000,1.200000])rotate([0,0,90.000000])children();}
module part_C15(part=true,hole=false,block=false,punch=false)
{
translate([1.200000,-9.200000,1.200000])rotate([0,0,90.000000])m1(part,hole,block,punch,casetop); // C19
};
module PCB1(){translate([-0.500000,0.000000,1.200000])children();}
module part_PCB1(part=true,hole=false,block=false,punch=false)
{
};
module R7(){translate([-4.750000,-9.200000,1.200000])rotate([0,0,90.000000])children();}
module part_R7(part=true,hole=false,block=false,punch=false)
{
translate([-4.750000,-9.200000,1.200000])rotate([0,0,90.000000])m2(part,hole,block,punch,casetop); // R10
};
module C3(){translate([15.125000,-3.875000,1.200000])children();}
module part_C3(part=true,hole=false,block=false,punch=false)
{
translate([15.125000,-3.875000,1.200000])m11(part,hole,block,punch,casetop); // C3
};
module TP2(){translate([-9.700000,3.100000,1.200000])rotate([0,0,180.000000])children();}
module part_TP2(part=true,hole=false,block=false,punch=false)
{
};
module C8(){translate([-0.500000,-9.200000,1.200000])rotate([0,0,90.000000])children();}
module part_C8(part=true,hole=false,block=false,punch=false)
{
translate([-0.500000,-9.200000,1.200000])rotate([0,0,90.000000])m1(part,hole,block,punch,casetop); // C19
};
module R5(){translate([-3.050000,-9.200000,1.200000])rotate([0,0,90.000000])children();}
module part_R5(part=true,hole=false,block=false,punch=false)
{
translate([-3.050000,-9.200000,1.200000])rotate([0,0,90.000000])m2(part,hole,block,punch,casetop); // R10
};
module R15(){translate([8.900000,-6.425000,1.200000])rotate([0,0,-90.000000])children();}
module part_R15(part=true,hole=false,block=false,punch=false)
{
translate([8.900000,-6.425000,1.200000])rotate([0,0,-90.000000])m2(part,hole,block,punch,casetop); // R10
};
module U1(){translate([-0.500000,-0.500000,1.200000])children();}
module part_U1(part=true,hole=false,block=false,punch=false)
{
translate([-0.500000,-0.500000,1.200000])m12(part,hole,block,punch,casetop); // U1
};
module C2(){translate([8.500000,7.600000,1.200000])rotate([0,0,90.000000])children();}
module part_C2(part=true,hole=false,block=false,punch=false)
{
translate([8.500000,7.600000,1.200000])rotate([0,0,90.000000])m1(part,hole,block,punch,casetop); // C19
};
module C4(){translate([-9.900000,6.400000,1.200000])rotate([0,0,180.000000])children();}
module part_C4(part=true,hole=false,block=false,punch=false)
{
translate([-9.900000,6.400000,1.200000])rotate([0,0,180.000000])m1(part,hole,block,punch,casetop); // C19
};
module R6(){translate([-3.900000,-9.200000,1.200000])rotate([0,0,90.000000])children();}
module part_R6(part=true,hole=false,block=false,punch=false)
{
translate([-3.900000,-9.200000,1.200000])rotate([0,0,90.000000])m2(part,hole,block,punch,casetop); // R10
};
module C10(){translate([-12.000000,-5.600000,1.200000])rotate([0,0,-90.000000])children();}
module part_C10(part=true,hole=false,block=false,punch=false)
{
translate([-12.000000,-5.600000,1.200000])rotate([0,0,-90.000000])m1(part,hole,block,punch,casetop); // C19
};
module C13(){translate([2.900000,-9.200000,1.200000])rotate([0,0,90.000000])children();}
module part_C13(part=true,hole=false,block=false,punch=false)
{
translate([2.900000,-9.200000,1.200000])rotate([0,0,90.000000])m1(part,hole,block,punch,casetop); // C19
};
module D14(){translate([-6.500000,-10.800000,1.200000])rotate([0,0,90.000000])children();}
module part_D14(part=true,hole=false,block=false,punch=false)
{
translate([-6.500000,-10.800000,1.200000])rotate([0,0,90.000000])m0(part,hole,block,punch,casetop); // D15
};
module J6(){translate([19.700000,-6.000000,1.200000])rotate([0,0,180.000000])children();}
module part_J6(part=true,hole=false,block=false,punch=false)
{
translate([19.700000,-6.000000,1.200000])rotate([0,0,180.000000])translate([0.000000,1.200000,0.000000])rotate([-0.000000,-0.000000,180.000000])m13(part,hole,block,punch,casetop); // RevK:1.25T-2PWT (Molex 532610271) Molex_PicoBlade_53261-0271_1x02-1MP_P1.25mm_Horizontal (back)
};
module C6(){translate([12.237500,-8.962500,1.200000])rotate([0,0,90.000000])children();}
module part_C6(part=true,hole=false,block=false,punch=false)
{
translate([12.237500,-8.962500,1.200000])rotate([0,0,90.000000])m14(part,hole,block,punch,casetop); // C6
};
module R9(){translate([-5.600000,-9.200000,1.200000])rotate([0,0,90.000000])children();}
module part_R9(part=true,hole=false,block=false,punch=false)
{
translate([-5.600000,-9.200000,1.200000])rotate([0,0,90.000000])m2(part,hole,block,punch,casetop); // R10
};
module R14(){translate([9.450000,-6.425000,1.200000])rotate([0,0,90.000000])children();}
module part_R14(part=true,hole=false,block=false,punch=false)
{
translate([9.450000,-6.425000,1.200000])rotate([0,0,90.000000])m2(part,hole,block,punch,casetop); // R10
};
module C5(){translate([8.800000,0.700000,1.200000])children();}
module part_C5(part=true,hole=false,block=false,punch=false)
{
translate([8.800000,0.700000,1.200000])m11(part,hole,block,punch,casetop); // C3
};
module R8(){translate([11.200000,0.200000,1.200000])children();}
module part_R8(part=true,hole=false,block=false,punch=false)
{
translate([11.200000,0.200000,1.200000])m2(part,hole,block,punch,casetop); // R10
};
module C14(){translate([0.350000,-9.200000,1.200000])rotate([0,0,90.000000])children();}
module part_C14(part=true,hole=false,block=false,punch=false)
{
translate([0.350000,-9.200000,1.200000])rotate([0,0,90.000000])m1(part,hole,block,punch,casetop); // C19
};
module C1(){translate([8.800000,-4.100000,1.200000])children();}
module part_C1(part=true,hole=false,block=false,punch=false)
{
translate([8.800000,-4.100000,1.200000])m11(part,hole,block,punch,casetop); // C3
};
module C7(){translate([15.800000,5.200000,1.200000])rotate([0,0,180.000000])children();}
module part_C7(part=true,hole=false,block=false,punch=false)
{
translate([15.800000,5.200000,1.200000])rotate([0,0,180.000000])m15(part,hole,block,punch,casetop); // C7
};
// Parts to go on PCB (top)
module parts_top(part=false,hole=false,block=false,punch=false){
part_D15(part,hole,block,punch);
part_D10(part,hole,block,punch);
part_C19(part,hole,block,punch);
part_R10(part,hole,block,punch);
part_D6(part,hole,block,punch);
part_Q1(part,hole,block,punch);
part_C17(part,hole,block,punch);
part_R11(part,hole,block,punch);
part_U3(part,hole,block,punch);
part_R12(part,hole,block,punch);
part_R13(part,hole,block,punch);
part_D8(part,hole,block,punch);
part_D12(part,hole,block,punch);
part_D5(part,hole,block,punch);
part_C16(part,hole,block,punch);
part_D7(part,hole,block,punch);
part_V1(part,hole,block,punch);
part_TP1(part,hole,block,punch);
part_R16(part,hole,block,punch);
part_C20(part,hole,block,punch);
part_SW3(part,hole,block,punch);
part_R3(part,hole,block,punch);
part_R2(part,hole,block,punch);
part_C11(part,hole,block,punch);
part_U4(part,hole,block,punch);
part_U2(part,hole,block,punch);
part_R4(part,hole,block,punch);
part_D4(part,hole,block,punch);
part_J5(part,hole,block,punch);
part_C18(part,hole,block,punch);
part_D11(part,hole,block,punch);
part_D9(part,hole,block,punch);
part_R1(part,hole,block,punch);
part_D1(part,hole,block,punch);
part_C12(part,hole,block,punch);
part_D13(part,hole,block,punch);
part_C9(part,hole,block,punch);
part_D3(part,hole,block,punch);
part_D2(part,hole,block,punch);
part_C15(part,hole,block,punch);
part_PCB1(part,hole,block,punch);
part_R7(part,hole,block,punch);
part_C3(part,hole,block,punch);
part_TP2(part,hole,block,punch);
part_C8(part,hole,block,punch);
part_R5(part,hole,block,punch);
part_R15(part,hole,block,punch);
part_U1(part,hole,block,punch);
part_C2(part,hole,block,punch);
part_C4(part,hole,block,punch);
part_R6(part,hole,block,punch);
part_C10(part,hole,block,punch);
part_C13(part,hole,block,punch);
part_D14(part,hole,block,punch);
part_J6(part,hole,block,punch);
part_C6(part,hole,block,punch);
part_R9(part,hole,block,punch);
part_R14(part,hole,block,punch);
part_C5(part,hole,block,punch);
part_R8(part,hole,block,punch);
part_C14(part,hole,block,punch);
part_C1(part,hole,block,punch);
part_C7(part,hole,block,punch);
}

parts_top=59;
module J4(){translate([-1.950000,-2.850000,0.000000])rotate([0,0,180.000000])rotate([180,0,0])children();}
module part_J4(part=true,hole=false,block=false,punch=false)
{
translate([-1.950000,-2.850000,0.000000])rotate([0,0,180.000000])rotate([180,0,0])m16(part,hole,block,punch,casebottom); // J4 (back)
};
module D16(){translate([-8.469614,-10.909604,0.000000])rotate([0,0,180.000000])rotate([180,0,0])children();}
module part_D16(part=true,hole=false,block=false,punch=false)
{
translate([-8.469614,-10.909604,0.000000])rotate([0,0,180.000000])rotate([180,0,0])m0(part,hole,block,punch,casebottom); // D15 (back)
};
module V2(){translate([-0.500000,-12.500000,0.000000])rotate([180,0,0])children();}
module part_V2(part=true,hole=false,block=false,punch=false)
{
};
module J3(){translate([12.000000,-8.984000,0.000000])rotate([180,0,0])children();}
module part_J3(part=true,hole=false,block=false,punch=false)
{
};
module BT1(){translate([5.500000,0.000000,0.000000])rotate([0,0,180.000000])rotate([180,0,0])children();}
module part_BT1(part=true,hole=false,block=false,punch=false)
{
translate([5.500000,0.000000,0.000000])rotate([0,0,180.000000])rotate([180,0,0])m17(part,hole,block,punch,casebottom); // BT1 (back)
};
module U5(){translate([-11.900000,8.900000,0.000000])rotate([0,0,-45.000000])rotate([180,0,0])children();}
module part_U5(part=true,hole=false,block=false,punch=false)
{
translate([-11.900000,8.900000,0.000000])rotate([0,0,-45.000000])rotate([180,0,0])m18(part,hole,block,punch,casebottom); // U5 (back)
};
module J1(){translate([19.690000,-6.200000,0.000000])rotate([0,0,180.000000])rotate([180,0,0])children();}
module part_J1(part=true,hole=false,block=false,punch=false)
{
};
module U6(){translate([-11.900000,-8.900000,0.000000])rotate([0,0,45.000000])rotate([180,0,0])children();}
module part_U6(part=true,hole=false,block=false,punch=false)
{
translate([-11.900000,-8.900000,0.000000])rotate([0,0,45.000000])rotate([180,0,0])m18(part,hole,block,punch,casebottom); // U5 (back)
};
// Parts to go on PCB (bottom)
module parts_bottom(part=false,hole=false,block=false,punch=false){
part_J4(part,hole,block,punch);
part_D16(part,hole,block,punch);
part_V2(part,hole,block,punch);
part_J3(part,hole,block,punch);
part_BT1(part,hole,block,punch);
part_U5(part,hole,block,punch);
part_J1(part,hole,block,punch);
part_U6(part,hole,block,punch);
}

parts_bottom=5;
module b(cx,cy,z,w,l,h){translate([cx-w/2,cy-l/2,z])cube([w,l,h]);}
module m0(part=false,hole=false,block=false,punch=false,height)
{ // D15
// 1.6x1.5mm LED
if(part)
{

        b(0,0,0,1.5,1.6,0.28);
        b(0,0,0,1.5,1,0.6);
}
if(hole)
{
        hull()
        {
                b(0,0,0.1,1.5,1.6,0.1);
                translate([0,0,height-0.5])cylinder(d=1.001,h=0.001,$fn=16);
        }
}
if(block)
{
        hull()
        {
                b(0,0,0.1,3.5,3.6,0.1);
                translate([0,0,height-0.5])cylinder(d=2,h=1,$fn=16);
        }
}
}

module m1(part=false,hole=false,block=false,punch=false,height)
{ // C19
// 0402 Capacitor
if(part)
{
        b(0,0,0,1.1,0.4,0.2); // Pad size
        b(0,0,0,0.6,0.3,0.3); // Chip
}
}

module m2(part=false,hole=false,block=false,punch=false,height)
{ // R10
// 0402 Resistor
if(part)
{
	b(0,0,0,1.1,0.4,0.2); // Pad size
	b(0,0,0,0.6,0.3,0.3); // Chip
}
}

module m3(part=false,hole=false,block=false,punch=false,height)
{ // Q1
// SOT-23
if(part)
{
	b(0,0,0,1.4,3.0,1.1); // Body
	b(-0.9375,-0.95,0,1.475,0.6,0.5); // Pad
	b(-0.9375,0.95,0,1.475,0.6,0.5); // Pad
	b(0.9375,0,0,1.475,0.6,0.5); // Pad
}
}

module m4(part=false,hole=false,block=false,punch=false,height)
{ // U3
// SOT-23-5
if(part)
{
	b(0,0,0,1.726,3.026,1.2); // Part
	b(0,0,0,3.6,2.5,0.5); // Pins (well, one extra)
}
}

module m5(part=false,hole=false,block=false,punch=false,height)
{ // SW3
if(part)
{
translate([0,-3.55,0])
{
 translate([-5.8/2,-5.2/2,0])cube([5.8,5.2,5.8]);
 translate([0,-0.95,-2.3+0.5])
 {
    sphere(d=1);
    cylinder(d=1,h=2.5);
 }
 for(x=[-2,0,2])
 translate([x-0.6/2,3.55-0.3/2,-2])
 {
  cube([0.6,0.3,2.8]);
  translate([0,-1+0.3/2,2.8-0.3/2])cube([0.6,1,0.3]);
  translate([0,0.3/2,2.8])rotate([0,90,0])cylinder(d=0.3,h=0.6);
 }
 translate([-3.5/2,-2.9-2.3,2.9-2.9/2])cube([3.5,5,2.9]);
 translate([-2.45/2,-2.9-10+5.2,2.9-2/2])cube([2.45,5,2]);    
}
}
}

module m6(part=false,hole=false,block=false,punch=false,height)
{ // U2
if(part)
{
	b(0,0,0,0.78,0.78,0.5);
}
}

module m7(part=false,hole=false,block=false,punch=false,height)
{ // RevK:USB-C-Socket-H CSP-USC16-TR
// USB connector
rotate([-90,0,0])translate([0,1.9,0])
{
	if(part)
	{
        b(0,1.57,0,7,1.14,0.2); // Pads

		translate([0,1.76-7.55,1.63])
		rotate([-90,0,0])
		hull()
		{
			translate([(8.94-3.26)/2,0,0])
			cylinder(d=3.26,h=7.55,$fn=24);
			translate([-(8.94-3.26)/2,0,0])
			cylinder(d=3.26,h=7.55,$fn=24);
		}
		translate([-8.94/2,0.99-1.1/2,0])cube([8.94,1.1,1.6301]);
		translate([-8.94/2,-3.2-1.6/2,0])cube([8.94,1.6,1.6301]);
	}
	if(hole)
		translate([0,-5.79,1.63])
		rotate([-90,0,0])
	{
		// Plug
		hull()
		{
			translate([(8.34-2.5)/2,0,-23+1])
			cylinder(d=2.5,h=23,$fn=24);
			translate([-(8.34-2.5)/2,0,-23+1])
			cylinder(d=2.5,h=23,$fn=24);
		}
		hull()
		{
            translate([(12-7)/2,0,-21-1])
			cylinder(d=7,h=21,$fn=24);
            translate([-(12-7)/2,0,-21-1])
			cylinder(d=7,h=21,$fn=24);
		}
		translate([0,0,-100-10])
			cylinder(d=5,h=100,$fn=24);
	}
}
}

module m8(part=false,hole=false,block=false,punch=false,height)
{ // RevK:D_0402 DFN1006-2L
// DFN1006-2L
if(part)
{
	b(0,0,0,1.0,0.6,0.45); // Chip
}
}

module m9(part=false,hole=false,block=false,punch=false,height)
{ // C9
// 0805 Capacitor
if(part)
{
	b(0,0,0,2,1.2,1); // Chip
	b(0,0,0,2,1.45,0.2); // Pad size
}
}

module m10(part=false,hole=false,block=false,punch=false,height)
{ // D3
// SOD-123 Diode
if(part)
{
	b(0,0,0,2.85,1.8,1.35); // part
	b(0,0,0,4.2,1.2,0.7); // pads
}
}

module m11(part=false,hole=false,block=false,punch=false,height)
{ // C3
// 0603 Capacitor
if(part)
{
	b(0,0,0,1.6,0.8,1); // Chip
	b(0,0,0,1.6,0.95,0.2); // Pad size
}
}

module m12(part=false,hole=false,block=false,punch=false,height)
{ // U1
// ESP32-S3-MINI-1
translate([-15.4/2,-15.45/2,0])
{
	if(part)
	{
		cube([15.4,20.5,0.8]);
		translate([0.7,0.5,0])cube([14,13.55,2.4]);
		cube([15.4,20.5,0.8]);
	}
}
}

module m13(part=false,hole=false,block=false,punch=false,height)
{ // RevK:1.25T-2PWT (Molex 532610271) Molex_PicoBlade_53261-0271_1x02-1MP_P1.25mm_Horizontal
if(part)
{
	b(0,-0.5,0,7,2.8,2);	// Tags
	b(0,-1.1,0,4,5.5,3.5);	// Socket
	b(0,-0.2,0,2,6,1);	// Lead
}
if(hole)
{
	translate([0,-4,-pcbthickness-2])cylinder(d=4,h=pcbthickness+2+3);
}
}

module m14(part=false,hole=false,block=false,punch=false,height)
{ // C6
if(part)
{
	b(0,0,0,3.5,2.8,1.9);
}
}

module m15(part=false,hole=false,block=false,punch=false,height)
{ // C7
// 0402 Capacitor
if(part)
{
	b(0,0,0,1.0,0.5,1); // Chip
	b(0,0,0,1.5,0.65,0.2); // Pad size
}
}

module m16(part=false,hole=false,block=false,punch=false,height)
{ // J4
if(part)
{
	b(0,0.1,0,14.85,14.5,2); // Main case
	b(-7.75,6.85,0,1.2,1.5,0.2); // Tab
	b(-7.75,-2.75,0,1.2,2.2,0.2); // Tab
	b(7.75,-2.75,0,1.2,2.2,0.2); // Tab
	for(i=[0:8])b(2.25-i*1.1,7.85,0,0.7,1.6,0.4); // Pins
	b(-0.95,-2.15,0.25,11,15,1.5);	// Card (inserted)
}
if(hole)
{
    hull()
    {
        b(-0.95,-8.47-1,0.25,11,1,1.5);	// Card
        b(-0.95,-8.47-1-25,0.25-10,11+20,1,1.5+20);	// Card
    }
}
}

module m17(part=false,hole=false,block=false,punch=false,height)
{ // BT1
if(hole)
{
	b(0,0,0,36,25,5.5);
}

}

module m18(part=false,hole=false,block=false,punch=false,height)
{ // U5
h=(casetop>casebottom?casetop:casebottom)+1;
if(part)
{
	b(0,0,0,3.5,2.65,0.23);
	b(0,0,0,3.2,2.35,0.98);
}
if(punch)translate([0.71,0,-pcbthickness])hull(){sphere(d=1);translate([-h,0,-h])sphere(d=0.75);}
if(block)translate([0.71,0,-pcbthickness])hull(){sphere(d=3);translate([-h,0,-h])sphere(d=2.5);}
}

// Generate PCB casework

height=casebottom+pcbthickness+casetop;
$fn=48;

module pyramid()
{ // A pyramid
 polyhedron(points=[[0,0,0],[-height,-height,height],[-height,height,height],[height,height,height],[height,-height,height]],faces=[[0,1,2],[0,2,3],[0,3,4],[0,4,1],[4,3,2,1]]);
}


module pcb_hulled(h=pcbthickness,r=0)
{ // PCB shape for case
	if(useredge)outline(h,r);
	else hull()outline(h,r);
}

module solid_case(d=0)
{ // The case wall
	hull()
        {
                translate([0,0,-casebottom])pcb_hulled(height,casewall-edge);
                translate([0,0,edge-casebottom])pcb_hulled(height-edge*2,casewall);
        }
}

module top_bump()
{ // Bump on top of case
	if(casetopbump)minkowski()
	{
		translate([0,0,casetop+pcbthickness-edge])bump(casetopbump,casewall-edge);
	        cylinder(r1=edge,r2=0,h=edge);
	}
}

module preview()
{
	pcb();
	color("#0f0")parts_top(part=true);
	color("#0f0")parts_bottom(part=true);
	color("#f00")parts_top(hole=true,punch=true);
	color("#f00")parts_bottom(hole=true,punch=true);
	color("#00f8")parts_top(block=true);
	color("#00f8")parts_bottom(block=true);
}

module top_half(fit=0)
{
	difference()
	{
		translate([-casebottom-100,-casewall-100,pcbthickness+0.01]) cube([pcbwidth+casewall*2+200,pcblength+casewall*2+200,height]);
		translate([0,0,pcbthickness])
        	{
			snape=lip/5;
			snaph=(lip-snape*2)/3;
			if(lipt==1)rotate(lipa)hull()
			{
				translate([0,-pcblength,lip/2])cube([0.001,pcblength*2,0.001]);
				translate([-lip/2,-pcblength,0])cube([lip,pcblength*2,0.001]);
			} else if(lipt==2)for(a=[0,90,180,270])rotate(a+lipa)hull()
			{
				translate([0,-pcblength-pcbwidth,lip/2])cube([0.001,pcblength*2+pcbwidth*2,0.001]);
				translate([-lip/2,-pcblength-pcbwidth,0])cube([lip,pcblength*2+pcbwidth*2,0.001]);
			}
            		difference()
            		{
                		pcb_hulled(lip,casewall+1);
				if(snap)
                        	{
					hull()
					{
						pcb_hulled(0.1,casewall/2-snap/2+fit);
						translate([0,0,snape])pcb_hulled(snaph,casewall/2+snap/2+fit);
						translate([0,0,lip-snape-snaph])pcb_hulled(0.1,casewall/2-snap/2+fit);
					}
					translate([0,0,lip-snape-snaph])pcb_hulled(snaph,casewall/2-snap/2+fit);
					hull()
					{
						translate([0,0,lip-snape])pcb_hulled(0.1,casewall/2-snap/2+fit);
						translate([0,0,lip])pcb_hulled(0.1,casewall/2+snap/2+fit);
					}
                        	}
				else pcb_hulled(lip,casewall/2+fit);
				if(lipt==0)translate([-pcbwidth,-pcblength,0])cube([pcbwidth*2,pcblength*2,lip]);
				else if(lipt==1) rotate(lipa)translate([0,-pcblength,0])hull()
				{
					translate([lip/2,0,0])cube([pcbwidth,pcblength*2,lip]);
					translate([-lip/2,0,lip])cube([pcbwidth,pcblength*2,lip]);
				}
				else if(lipt==2)for(a=[0,180])rotate(a+lipa)hull()
                		{
                            		translate([lip/2,lip/2,0])cube([pcbwidth+pcblength,pcbwidth+pcblength,lip]);
                            		translate([-lip/2,-lip/2,lip])cube([pcbwidth+pcblength,pcbwidth+pcblength,lip]);
                		}
            		}
            		difference()
            		{
				if(snap)
                        	{
					hull()
					{
						translate([0,0,-0.1])pcb_hulled(0.1,casewall/2+snap/2-fit);
						translate([0,0,snape-0.1])pcb_hulled(0.1,casewall/2-snap/2-fit);
					}
					translate([0,0,snape])pcb_hulled(snaph,casewall/2-snap/2-fit);
					hull()
					{
						translate([0,0,snape+snaph])pcb_hulled(0.1,casewall/2-snap/2-fit);
						translate([0,0,lip-snape-snaph])pcb_hulled(snaph,casewall/2+snap/2-fit);
						translate([0,0,lip-0.1])pcb_hulled(0.1,casewall/2-snap/2-fit);
					}
                        	}
				else pcb_hulled(lip,casewall/2-fit);
				if(lipt==1)rotate(lipa+180)translate([0,-pcblength,0])hull()
				{
					translate([lip/2,0,0])cube([pcbwidth,pcblength*2,lip+0.1]);
					translate([-lip/2,0,lip])cube([pcbwidth,pcblength*2,lip+0.1]);
				}
				else if(lipt==2)for(a=[90,270])rotate(a+lipa)hull()
                		{
                            		translate([lip/2,lip/2,0])cube([pcbwidth+pcblength,pcbwidth+pcblength,lip]);
                            		translate([-lip/2,-lip/2,lip])cube([pcbwidth+pcblength,pcbwidth+pcblength,lip]);
                		}
			}
            	}
		minkowski()
                {
                	union()
                	{
                		parts_top(part=true,hole=true);
                		parts_bottom(part=true,hole=true);
                	}
                	translate([-0.01,-0.01,-height])cube([0.02,0.02,height]);
                }
        }
	minkowski()
        {
        	union()
                {
                	parts_top(part=true,hole=true);
                	parts_bottom(part=true,hole=true);
                }
                translate([-0.01,-0.01,0])cube([0.02,0.02,height]);
        }
}

module case_wall()
{
	difference()
	{
		solid_case();
		translate([0,0,-height])pcb_hulled(height*2,0.02);
	}
}

module top_side_hole()
{
	intersection()
	{
		union()
		{
			parts_top(hole=true,punch=false);
			pcb();
		}
		case_wall();
	}
}

module bottom_side_hole()
{
	intersection()
	{
		union()
		{
			parts_bottom(hole=true,punch=false);
			pcb();
		}
		case_wall();
	}
}

module parts_space()
{
	minkowski()
	{
		union()
		{
			parts_top(part=true,hole=true,punch=true);
			parts_bottom(part=true,hole=true,punch=true);
		}
		sphere(r=margin+0.03,$fn=6);
	}
}

module top_cut(fit=0)
{
	difference()
	{
		top_half(fit);
		if(parts_top)difference()
		{
			minkowski()
			{ // Penetrating side holes
				top_side_hole();
				rotate([180,0,0])
				pyramid();
			}
			minkowski()
			{
				top_side_hole();
				rotate([0,0,45])cylinder(r=margin,h=height,$fn=4);
			}
		}
	}
	if(parts_bottom)difference()
	{
		minkowski()
		{ // Penetrating side holes
			bottom_side_hole();
			pyramid();
		}
		minkowski()
		{
			bottom_side_hole();
			rotate([0,0,45])translate([0,0,-height])cylinder(r=margin,h=height,$fn=4);
		}
	}
}

module bottom_cut()
{
	difference()
	{
		 translate([-casebottom-50,-casewall-50,-height]) cube([pcbwidth+casewall*2+100,pcblength+casewall*2+100,height*2]);
		 top_cut(-fit);
	}
}

module top_body()
{
	difference()
	{
		intersection()
		{
			solid_case();
			pcb_hulled(casetop+pcbthickness,0.03);
		}
		if(parts_top||topthickness)minkowski()
		{
			union()
			{
				if(nohull)parts_top(part=true);
				else hull(){parts_top(part=true);pcb_hulled();}
				if(topthickness)pcb_hulled(casetop+pcbthickness-topthickness,0);
			}
			translate([0,0,margin-height])cylinder(r=margin,h=height,$fn=8);
		}
	}
	intersection()
	{
		pcb_hulled(casetop+pcbthickness,0.03);
		union()
		{
			parts_top(block=true);
			parts_bottom(block=true);
		}
	}
}

module top_edge()
{
	intersection()
	{
		case_wall();
		top_cut();
	}
}

module top_pos()
{ // Position for plotting bottom
	translate([0,0,pcbthickness+casetop+casetopbump])rotate([180,0,0])children();
}

module pcb_pos()
{	// Position PCB relative to base 
		translate([0,0,pcbthickness-height])children();
}

module top()
{
	top_pos()
	{
		difference()
		{
			union()
			{
				top_body();
				top_edge();
			}
			parts_space();
			pcb_pos()pcb(height,r=margin);
			top_text();
		}
		difference()
		{
			casetopscad();
			top_text();
		}
		if(casetopbump)difference()
		{
			top_bump();
                        parts_space();
                        top_text(casetopbump);
		}
	}
}

module bottom_body()
{ // Position for plotting top
	difference()
	{
		intersection()
		{
			solid_case();
			translate([0,0,-casebottom])pcb_hulled(casebottom+pcbthickness,0.03);
		}
		if(parts_bottom||bottomthickness)minkowski()
		{
			union()
			{
				if(nohull)parts_bottom(part=true);
				else hull()parts_bottom(part=true);
				if(bottomthickness)translate([0,0,bottomthickness-casebottom])pcb_hulled(casebottom+pcbthickness-bottomthickness,0);
			}
			translate([0,0,-margin])cylinder(r=margin,h=height,$fn=8);
		}
	}
	intersection()
	{
		translate([0,0,-casebottom])pcb_hulled(casebottom+pcbthickness,0.03);
		union()
		{
			parts_top(block=true);
			parts_bottom(block=true);
		}
	}
}

module bottom_edge()
{
	intersection()
	{
		case_wall();
		bottom_cut();
	}
}

module bottom_pos()
{
	translate([0,0,casebottom])children();
}

module bottom()
{
	bottom_pos()
	{
		difference()
		{
			union()
			{
        			bottom_body();
        			bottom_edge();
			}
			parts_space();
			pcb(height,r=margin);
			bottom_text();
		}
		difference()
		{
			casebottomscad();
			bottom_text();
		}
	}
}


module bottom_text(offset=0)
{
	if(dateh)minkowski()
	{
		translate([datex,datey,-casebottom-offset-1])rotate(datea)scale([-1,1])linear_extrude(1)text(date,size=dateh,halign="center",valign="center",font=datef);
		cylinder(d1=datet,d2=0,h=datet,$fn=6);
	}
	if(urlh)minkowski()
	{
		translate([urlx,urly,-casebottom-offset-1])rotate(urla)scale([-1,1])linear_extrude(1)text(url,size=urlh,halign="center",valign="center",font=urlf);
		cylinder(d1=urlt,d2=0,h=urlt,$fn=6);
	}
}

module top_text(offset=0)
{
	if(logoh)minkowski()
	{
		translate([logox,logoy,pcbthickness+casetop+offset-datet])rotate(logoa)linear_extrude(1)text(logo,size=logoh,halign="center",valign="center",font=logof);
		cylinder(d1=0,d2=logot,h=logot,$fn=6);
	}
	if(nameh)minkowski()
	{
		translate([namex,namey,pcbthickness+casetop+offset-datet])rotate(namea)linear_extrude(1)text(name,size=nameh,halign="center",valign="center",font=namef);
		cylinder(d1=0,d2=namet,h=namet,$fn=6);
	}
}
translate([0,0,casebottom+casetop+casetopbump+pcbthickness+0.1])rotate([180,0,0])top();bottom();