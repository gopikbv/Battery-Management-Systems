Single Cell Battery Management System (BMS)

Project Overview

This project focuses on developing a Battery Management System (BMS) for a single lithium-ion cell using MATLAB and Simulink. The BMS is responsible for monitoring and protecting the battery cell by implementing protection logics, state estimation algorithms, and data analysis.

Features

State-of-Charge (SoC) Estimation: Determines the remaining capacity of the battery.

Protection Mechanisms: Overvoltage, undervoltage, overcurrent, and thermal protection.

Cell Monitoring: Voltage, current, and temperature measurement.

Simulink Implementation: Developed using Simulink models and Stateflow.

Data Analysis: Includes test data and output files for validation.

Directory Structure

Project_6_Single_Cell_BMS/
│-- Matlab_Script/       # Contains MATLAB scripts for analysis and simulation
│-- Output_file/         # Stores output data and simulation results
│-- Simulink_file/       # Simulink models used for system simulation
│-- TestData/            # Test cases and validation data

Installation & Setup

Clone the repository:

git clone https://github.com/GopinathRepo/Project_6_Single_Cell_BMS.git

Open MATLAB and navigate to the project directory.

Open the Simulink model from the Simulink_file/ folder.

Run the MATLAB scripts from the Matlab_Script/ folder.

Analyze the output results in the Output_file/ directory.

Usage

Run the Simulink model to simulate the single-cell BMS.

Modify parameters in MATLAB scripts for different test cases.

Validate results using test data and adjust control algorithms if necessary.

Future Enhancements

Implement cell balancing techniques.

Integrate Kalman filtering for improved SoC estimation.

Extend the model for multi-cell battery packs.

Author

Gopinath - Embedded & BMS Engineer

License

This project is licensed under the MIT License - see the LICENSE file for details.