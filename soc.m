%% Load and Define Data from EXCEL
Battery_Data  = xlsread('Battery_Parameters.xlsx',1);
SOC           = Battery_Data(:,1);
OCV           = Battery_Data(:,2);
R_Charging    = Battery_Data(:,3);
R_Discharging = Battery_Data(:,4);

%% Plotting
plot (SOC,OCV);grid ; xlabel('SOC'); ylabel('OCV [V]');
figure
plot (SOC,R_Charge);grid; xlabel('SOC'); ylabel('Charging Resistance [Ohms]');
figure
plot (SOC,R_DisCharge) ; grid; xlabel('SOC'); ylabel('Discharging Resistance [Ohms]');

%% Define Battery Parameters
I = 3.5 ;               %Current
Cn = 2.3*3600 ;              %Capacity