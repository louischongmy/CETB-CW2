clc;clear;
%drone parameters
Y6.m=0.896;
Y6.g=9.81;
Y6.Ix=0.01156;
Y6.Iy=0.05076;
Y6.Iz=0.007709;
Y6.L=0.1588;
Y6.k_T=1.26e-5;
Y6.k=8.12e-4;

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
timepoints=[0,35,60,85,110,135,170,195,220,245,270,305,330,355,380,405,440,465,490,515,540,575];

disp("params set/updated")