# Sound-Recognition-and-Visualization-MATLAB

This project implements a **Sound Recognition and Visualization tool** using MATLAB.  
It allows users to record audio, visualize it in both time and frequency domains, and extract useful signal features such as energy, power spectrum, and statistical properties.  
The project was developed as part of the **CEN320 / BME320 course** at Abu Dhabi University.

---

## 🎯 Features
- Record audio directly from the system microphone.
- Display **time-domain waveform** of the recorded signal.
- Compute and plot the **Fourier Transform** of the signal.
- Plot the **Power Spectrum** to show signal energy distribution.
- Calculate key parameters:
  - Energy
  - Maximum frequency component
  - Mean, Variance, Standard Deviation, Mode, Median
- Plot histogram of the signal.
- Intuitive **Graphical User Interface (GUI)** built using MATLAB App Designer.

---

## 🖼️ GUI Preview
The GUI includes:
- Control panel for recording audio with a custom duration.  
- Real-time plotting of:
  - Time-domain signal
  - Frequency-domain signal
  - Power spectrum  
- Display of calculated statistical values.  

---

## 📂 Project Structure
- `Project_GUI.mlapp` → MATLAB App Designer file (GUI).
- `Project_signals.m` → MATLAB script for recording and analyzing audio.
- `CEN320_Project_Report.pdf` → Full report with design, results, and analysis.
- `CEN320_BME320_Project_Description_Fall_23_24.docx` → Original project description.

---

## 🚀 Getting Started

### Prerequisites
- MATLAB (R2022a or later recommended).  
- No additional toolboxes required (uses base MATLAB functions).

### Running the Project
1. Open MATLAB.  
2. Run the script:
   ```matlab
   Project_signals.m

