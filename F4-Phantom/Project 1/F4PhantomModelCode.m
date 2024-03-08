m = 0;
g = -9.81;
A_ft = 41.5;
XHV_ft = 8.5;
b_ft = 38.7;
XWHr_ft = 28.0;
bH_ft = 16.4;
X1_ft = 46.4;
bV_ft = 6.2;
yAI_ft = 8.5;
cbar_ft = 16.0;
yAO_ft = 13.5;
cbar_Aileron_ft = 2.9;
yRI_ft = 0.0;
cR_ft = 2.6;
yRF_ft = 5.1;
cWing_at_Aileron_ft = 11.9;
yV_ft = 5.2;
cr_ft = 18.0;
ZRS_ft = 7.4;
crH_ft = 7.6;
z1_ft = 6.8;
crV_ft = 16.4;
z2_ft = 6.9;
cT_ft = 4.7;
ZH_ft = 2.1;
cTH_ft = 2.2;
ZHS_ft = 3.2;
cTV_ft = 3.9;
zmax_ft = 7.0;
d_ft = 5.9;
ZW_ft = 1.9;
lb_ft = 58.9;
ZWHr_ft = 4.0;
lcg_ft = 29.8;
GammaH_deg = -27;
GammaH_rad = deg2rad(GammaH_deg);
r1_ft = 6.2;
GammaW_deg = 4.0;
GammaW_rad = deg2rad(GammaW_deg);
S_ft2 = 530;
epsilonH_deg_assumed = 2;
SBS_ft = 327.5;
epsilonW_deg_assumed = 2;
SfAVG_ft2 = 24.6;
LambdaLE_deg = 48.5;
SP_V_ft2 = 14.7;
LambdaLEH_deg = 43.0;
wmax_ft = 8.9;
LambdaLEV_deg = 63;
LambdaLEV_rad = deg2rad(LambdaLEV_deg);
XACR_ft = 15.1;
eta_H = 0.9;
eta_V = 0.9;
tau_E = 0.5;

x_AC_H = 23.6;
xbar_AC_H = 1.479;

alt = 35000;
Mach = 0.9;
q_bar_1 = 283.2;
alpha = 2.6;
Length = 63.75; %(ft)
Height = 16.5;
xbar_CG = 0.29;
qbar = 283.2;
e=.95;
%C_D_alpha should be .2322
Weight = 39000; %lbs
c_L_1 = .26;
c_D_1 = .030;
c_m_1 = 0;
c_T_X1 = .030;
c_m_T1 = 0;
alpha_rad = deg2rad(alpha);

%Homework 3



%Homework 4

%below variables are needed for the fAx Equations
c_D_u = 0;
a = 968;
u = a*Mach; %velocity?
V_P_1 = 0; %what is this 
c_D_alpha = 0; %Hw3
c_D_i = -0.10; %Given by Krishna
c_D_alphadot = 0;
c_D_q = 0;
c_D_delta_E = 0;
deltaE = 0;
i_H = 0;


Ftx = 0;
fAx = (qbar*S_ft2)*(((-(c_D_u+(2*c_D_1)))*(u/V_P_1)) + ((c_D_alpha + c_L_1)*(alpha_deg)) - c_D_alphadot*((alphaDot*cbar_ft)/(2*V_P_1)) - c_D_q*((q*cbar)/(2*V_P_1)) - (c_D_delta_E*deltaE)-(c_D_i_H*i_H));

Fty = 0;
fAy = 0;


%below variables are needed for the fAz Equations
c_L_u = 0;
c_L_alpha = 0;
c_L_alphadot = 0;
c_L_q = 0;
c_L_delta_E = 0;
c_L_i_H = 0;

fAz = (qbar*S_ft2)*(((-(c_L_u+(2*c_L_1)))*(u/V_P_1)) + ((c_L_alpha + c_D_1)*(alpha_deg)) - c_L_alphadot*((alphaDot*cbar_ft)/(2*V_P_1)) - c_L_q*((q*cbar)/(2*V_P_1)) - (c_L_delta_E*deltaE)-(c_L_i_H*i_H));
Ftz = 0;
Ft = [Ftx; Fty; Ftz];
Fa = [fAx; fAy; fAz]; 
Forces = Ft+Fa; 

theta = 0;
psi = 0;
phi = 0;
P=1;
Q=1;
W=1;
R=1;
V=1;
U=1;

u_dot=0;
v_dot=0;
w_dot=0;

velocity = 100;
t = 10;

%modelname = 'T37_SimulinkModel';
%sim(modelname)

%moments
Mx = 0;
My = 0;
Mz = 0;

M = [Mx; My; Mz];

qr = 0;
qi=0;
qj=0;
qk=0;



modelname = 'F4PhantomRemodel.slx';
sim(modelname)

% Homework 2