CleanUp1D;

clc
clear all
close all


model     = 'BuckLev';
test_name = 'Compound';
u_IC      =@(x)  0.95*(x<0.5) +0.1*(x>=0.5);

bnd_l     = 0.0;  
bnd_r     = 1.5;
mesh_pert = 0.1;
bc_cond   = {'N',0.0,'N',0.0};
FinalTime = 0.4;
CFL       = 0.4;
K     = 150;
N         = 2;
RK        = 'LS54';


Indicator = 'NONE'; TVBM=1;
nn_model       = 'MLP_v1';	
Limiter    = 'NONE';

nn_visc_model = 'MLP_visc';
Visc_model='EV'; c_E=1; c_max=0.5;


plot_iter  = 10;
save_iter  = 1;
save_soln  = true;
save_ind   = true;
save_visc  = true;
save_plot  = true;
ref_avail  = true;
ref_fname  = 'ref_soln.dat';
rk_comb    = true;
var_ran    = [0,1.4];


% Call code driver
ScalarDriver1D; 




