# **Battery Protection Algorithm – BMS Project**

This project focuses on modeling and testing basic battery protection features using **MATLAB/Simulink** for Battery Management Systems (BMS).

## **📁 Folder Structure**

- **Simulink_File/** – Contains the main Simulink model  
- **Test_output/** – Includes screenshots and test results

## **🔐 Protection Features**

The following protection logics are implemented:

- Overvoltage Protection  
- Undervoltage Protection  
- Overcurrent Protection  
- Overtemperature Protection  
- Undertemperature Protection 
- Low_SOC Protection
- Relay_adhesive Protection
- String_voltage_imbalance Protection


Each logic monitors cell conditions and triggers fault flags to disable charging or discharging.

## **🛠️ Tools Used**

- MATLAB/Simulink  
- Simulink Dashboard (for visualization)  
- Manual test case creation and output logging  

## **▶️ How to Run**

1. Open MATLAB and go to the `Simulink_File` folder  
2. Open the Simulink model (`.slx` file)  
3. Click **Run** to simulate  
