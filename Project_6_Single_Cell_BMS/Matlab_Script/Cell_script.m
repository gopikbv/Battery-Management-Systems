%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% Cell Dynamic characteristics & properties %%%%

Current=readmatrix('Ather 450 MNEDC Battery Current.xlsx');


%%%%%%%%%%%
% Cell type - Highpowered NMC (SLPB78216216H)
% Discharge rate - 5C
% Energy density of cell 168 wh/Kg
% Cell Capacity - 31 Ah


%%%%%%%%%
%%%% Specification of cell %%%%

T_amb =20;                                 %%%%%% Ambient temp in degree celcius
Q_init=31000;                              %%%%%% Capacity in Mah
Cell_length = 0.227;                       %%%% length in m 
Cell_thickness= 0.0078;                    %%%% thickness in m
Cell_width = 0.226;                       %%%% width in m
Cell_area= Cell_length*Cell_width;         %%%% Cell area in m
Cell_volume = Cell_area*Cell_thickness;    %%%% Cell volume in m^3
Cell_mass = 0.720;                         %%%% Mass of cell in Kg
Cell_cp=810.5328;                          %%%% Cell specific heat  Kj/(Kg.K)
H_con=5;                                   %%%% Convective heattranfer coefficicent of cell  W/(m^2.K)
Amp_s_conv=3600;

T_init=293.15;                             %%%% Ambient temp in kelvin

%% 


%%%%%%%%% Lookup data %%%%%%%%
SOC_LUT= [0;0.1;0.25;0.5;0.75;0.9;1];
Temp_LUT=[278.15,293.15,313.15];

Em_LUT=[3.49,3.51,3.52;3.55,3.56,3.56;
        3.62,3.64,3.64;3.71,3.71,3.72;
        3.91,3.93,3.94;4.07,4.08,4.08;
        4.19,4.19,4.19];

Ro_LUT=[0.0117,0.0085,0.0090;
       0.0110,0.0085,0.009;
       0.0114,0.0087,0.0092;
       0.0107,0.0082,0.0088;
       0.0107,0.0082,0.0088;
       0.0107,0.0083,0.0091;
       0.0116,0.0085,0.0089];

R1_LUT=[0.0109,0.0029,0.0013;
       0.0069,0.0024,0.0012;
       0.0047,0.0026,0.0013;
       0.0034,0.0016,0.0010;
       0.0033,0.0023,0.0014;
       0.0033,0.0018,0.0011;
       0.0028,0.0017,0.0011];


C1_LUT=[1913.6,12447,30609;
       4625.7,18872,32995;
       23306,40764,47535;
       10736,18721,26325;
       18036,33630,48274;
       12251,18360,26839;
       9022.9,23394,30606];


%% 
Capacity_LUT=[28.01,27.63,27.64];

%%%%% section -2 %%%%%%%
%%% plots
%%%%%%%%%%%%%%%%%%%%%%%%

figure(1)%%%%%%%% R0_LUT
surf(Temp_LUT,SOC_LUT,Ro_LUT);
title('Internal resistance(SOC,Temp)plot');
xlabel('Temperature in Kelvin');
ylabel('SOC');
zlabel('Internal resistance (ohms)');

figure(2) %%%%%%%% R1_LUT
surf(Temp_LUT,SOC_LUT,R1_LUT);
title('Resistance R1(SOC,Temp)plot');
xlabel('Temperature in Kelvin');
ylabel('SOC');
zlabel('Resistance R1 (ohms)');

figure(3) %%%%%%%% C1_LUT
surf(Temp_LUT,SOC_LUT,C1_LUT);
title('Capacitance C1(SOC,Temp)plot');
xlabel('Temperature in Kelvin');
ylabel('SOC');
zlabel('Capacitance C1 (mF)');

figure(4) %%%%%%%% C1_LUT
surf(Temp_LUT,SOC_LUT,C1_LUT);
title('Em_LUT(SOC,Temp)plot');
xlabel('Temperature in Kelvin');
ylabel('SOC');
zlabel('EM(volts)');

% Tmax=333;
% Tmin=253;
% Current_lim=310;
% U_volt=2.7;
% O_volt=4.2;
% U_current_lim=62;
% N_volt=3.7;
% Capacity=31;
% Tmax_o=313.15;
% Tmin_o=273.15;
% Hun=100;