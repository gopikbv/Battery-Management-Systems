# Battery Management Systems Repository

This repository contains various projects and studies focused on **Battery Management Systems (BMS)**, leveraging MATLAB/Simulink for simulation and algorithm development. The goal is to design, analyze, and optimize BMS solutions for Lithium-Ion batteries, essential in electric vehicles (EVs) and energy storage systems.

---

## **Repository Structure**

The repository is organized into the following main projects:

### 1. **Lithium Ion Cell Modeling**
   - **Description:** Focused on modeling and parameter estimation for Lithium-Ion cells using Equivalent Circuit Models (ECM). This includes the Rint and Thevenin models.
   - **Subfolders:**
     - **Project1_RintModel_Using_ECM**
       - **Comparison_With_and_Without_Temperature:** Rint model performance comparison under temperature variations.
       - **Parameter_Estimation:** Estimation of Rint model parameters for lithium-ion cells.
       - **Parameter_Estimation_With_Ambient_Temperature:** Parameter estimation with additional environmental temperature data.
     - **Project2_Thevenin_Model_Using_ECM**
       - Includes modeling using the Thevenin equivalent circuit and associated parameter estimation.

### 2. **Project3_Comparison_Study**
   - **Description:** Comparative analysis of the Rint and Thevenin models to evaluate their accuracy and applicability.
   - **Files:**
     - `Model_Comparison.slx`: Simulink file for comparative simulations.
     - `Model_Comparison_Script.m`: MATLAB script for comparative data analysis.

### 3. **Project4_BMS_Protection**
     - **Description:** Simulink models and algorithms for BMS protection. Includes key features like:
     - Overvoltage/Undervoltage protection
     - Overcurrent protection
     - Thermal management
   
### 4. **Simulink_Projects:** 
    - **Description:**Contains models for auxiliary systems like aerodynamic force calculation, heater modeling, and throttle modeling.

---

## **Features**
- **Simulation-Based Modeling:** Focused on Rint and Thevenin models for accurate Lithium-Ion battery behavior representation.
- **Parameter Estimation:** Techniques for deriving key parameters from experimental data.
- **BMS Protection Algorithms:** Protection logic for safe and efficient battery operation.
- **Comparative Analysis:** Evaluation of different models to determine their suitability in real-world applications.

---

## **Technologies Used**
- MATLAB R2024a
- Simulink
- Git for version control

---

## **How to Navigate**
1. Clone the repository:
   ```bash
   git clone https://github.com/gopikbv/Battery-Management-Systems.git
   ```

## Contact

If you have any questions or suggestions, feel free to open an issue or contact me at gopinathmpt@gmail.com.

