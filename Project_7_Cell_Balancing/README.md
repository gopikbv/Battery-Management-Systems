# 🔋 Project 7: Cell Balancing Using Passive Method (Static Condition)

## 📌 Objective

This project implements and validates a **passive cell balancing algorithm** for a multi-cell lithium-ion battery pack under **static conditions** using **MATLAB Simulink and Stateflow**. The goal is to equalize cell voltages by discharging higher-voltage cells using resistive paths.

---

## 🧠 Project Summary

- **Balancing Method**: Passive (Resistor-based discharge)  
- **Condition**: Static (no load or charging)  
- **Core Logic**: Implemented using **Stateflow**  
- **Triggering**: Balancing activates when any cell voltage exceeds the minimum cell voltage by more than a threshold (e.g., 50 mV)

---

## 🛠️ Tools Used

| Tool        | Version   |
|-------------|-----------|
| MATLAB      | R2023b    |
| Simulink    | R2023b    |
| Stateflow   | R2023b    |

---

## 📂 Folder Structure
Project_7_Cell_Balancing/ │ ├── Simulink_File/ # Contains the .slx file with Simulink and Stateflow design │ └── Cell_Balancing_Using_Passive_Method_Static_Condition.slx │ ├── Test_Output/ # Contains the test result report and output screenshots │└── README.md # Project overview and documentation (this file)


---

## 📊 Description of Design

- **Input Block**: Simulates initial voltages of 4 cells  
- **Stateflow Logic**:  
  - `Idle`: Waiting for imbalance  
  - `Balance_CellX`: Activates discharge for over-voltage cell X  
  - `Balanced`: No imbalance; system remains idle  
- **Threshold**: Balancing is triggered if cell voltage difference > 50 mV  
- **Output**: Scope blocks show voltage convergence and switch status

---

## ⚠️ Important Note

- This project assumes **no load/charging** during balancing (static condition).  
- Balancing is performed using **passive resistive discharge**, which results in **energy loss as heat**.  
- Real-world implementations must consider **thermal effects and cell degradation** over repeated balancing cycles.

---

## 🚀 Future Enhancements

- Add dynamic conditions (with charging/discharging loads)  
- Implement temperature-aware balancing  
- Include diagnostics and fault handling logic  

---
