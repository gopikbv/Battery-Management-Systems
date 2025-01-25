clc
clear

%% cell constant parameters
T_amb= 293.15;                              % Ambient Temperature in Kelvin
Capacity=31.000;                             % cell initial capacity in mAh
cell_length=0.227;                          % cell length in meters
cell_width=0.226;                           % cell width in meters
cell_thickness=0.0078;                      % cell thickness in meters 
A_cell=cell_length*cell_width;              % cell surface area in m^2
cell_volume=A_cell*cell_thickness;          % cell volume in m^3
M_cell=0.72;                                % mass of cell in kg
Cp_cell=810.5328;                           % cell specific heat capacity in Joule/(KgK)
H_cell=5;                                   % convective heat transfer coefficient in W/m^2/k


%% Look_Up table data taken from testing results
SOC_LUT=[0; 0.1; 0.25; 0.5; 0.75; 0.9; 1.0];                        %SOC look up table data
OCV_LUT=[3.49; 3.55; 3.62; 3.71; 3.91; 4.17; 4.19];                 %OCV look up table data
R_int_LUT=[0.0085; 0.0085; 0.0087; 0.0082; 0.0083; 0.0085; 0.0085]; %Internal resistance look up table

%% setting the model runtime
set_param('Estimation_of_Rint_Model_Parameters','StopTime','3600')


%% Model simulation
sim 'Estimation_of_Rint_Model_Parameters'



%% Results

figure(1)
plot(ans.SOC(:,1),ans.SOC(:,2))
xlabel('time (s)')
ylabel('State of charge (%)')
grid on

figure(2)
plot(ans.OCV(:,1),ans.OCV(:,2))
xlabel('time (s)')
ylabel('Open circuit voltage (V)')
grid on


figure(3)
plot(ans.Cell_Temp(:,1),ans.Cell_Temp(:,2))
xlabel('time (s)')
ylabel('Temperature (K)')
grid on


figure(4)
plot(ans.Ploss(:,1),ans.Ploss(:,2))
xlabel('time (s)')
ylabel('Power loss (W)')
grid on


figure(5)
plot(ans.Rint(:,1),ans.Rint(:,2))
xlabel('time (s)')
ylabel('Internal resistance (ohms)')
grid on

figure(6)
plot(ans.Vt(:,1),ans.Vt(:,2))
xlabel('time (s)')
ylabel('Terminal Voltage (V)')
grid on


