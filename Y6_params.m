clc;clear;
%drone parameters
Y6.m=0.716;
Y6.g=9.81;
Y6.Ix=4.4e-3;
Y6.Iy=1.6e-3;
Y6.Iz=3.1e-3;
Y6.L=0.1588;
Y6.k_T=6.3e-7;
Y6.k=0.013;

%wind force, maximum
max_wind=0.5;

%drone inidital states
states0=[42;0;0;0;0;0;0;0;0;0;0;0];

%waypoints, Pned psi
waypoints=[42  ,42  ,42   ,42   ,42   ,42   ,31   ,31   ,31   ,31   ,31   ,20   ,20   ,20   ,20   ,20   ,9    ,9    ,9    ,9    ,9    ,9 ;%Pn
           0   ,0    ,13   ,27   ,41   ,55   ,55   ,41   ,27   ,13   ,0    ,0    ,13   ,27   ,41   ,55   ,55   ,41   ,27   ,13   ,0    ,0 ;%Pe
           0   ,-5   ,-5   ,-5   ,-5   ,-5   ,-5   ,-5   ,-5   ,-5   ,-5   ,-5   ,-5   ,-5   ,-5   ,-5   ,-5   ,-5   ,-5   ,-5   ,-5   , 0;%Pd
           0   , pi/2, pi/2, pi/2, pi/2, pi/2, pi/2, pi/2, pi/2, pi/2, pi/2, pi/2, pi/2, pi/2, pi/2, pi/2, pi/2, pi/2, pi/2, pi/2, pi/2, 0];%psi

%timestamps for waypoints
timepoints=[0,30,55,80,105,130,165,190,215,240,265,300,325,350,375,400,435,460,485,510,535,570];

disp("params set/updated")