# ECE 2102: Analog Electronics II Lab — Conceptual Quiz Master Guide

---

## 📌 Module 1: Op-Amp Fundamentals & Operational Physics

### 1. The Virtual Ground & Virtual Short Concepts
* **Virtual Short:** Under negative feedback with very high open-loop gain ($A_{OL} \to \infty$), the differential voltage $V_d = V_+ - V_- = \frac{V_o}{A_{OL}} \approx 0 \implies V_+ \approx V_-$. The two input terminals are virtually shorted together in potential, but **no physical current flows between them** ($I_{in} \approx 0$ due to $R_{in} \to \infty$).
* **Virtual Ground:** When the non-inverting terminal ($V_+$) is connected to physical ground ($0\text{ V}$), the virtual short forces the inverting terminal ($V_-$) to sit at $0\text{ V}$ as well. It acts as a ground point for potential calculations, though no current actually flows into the op-amp terminal itself.

### 2. Key Op-Amp Parameters & Lab Significance
* **Open-Loop Gain ($A_{OL}$):** Voltage gain without feedback ($\sim 10^5$ or $100\text{ dB}$). Enables high precision when controlled by negative feedback.
* **Input Bias Current ($I_B$) & Input Offset Current ($I_{io}$):** $I_B = \frac{I_{B1} + I_{B2}}{2}$, $I_{io} = |I_{B1} - I_{B2}|$. $I_B$ flows through input resistors causing unwanted DC offset voltage at output.
  * *Compensation Rule:* To minimize $I_B$ offset errors, connect a resistor $R_{comp} = R_1 \parallel R_F$ to the non-inverting terminal.
* **Input Offset Voltage ($V_{io}$):** Differential DC voltage required between inputs to force $V_o = 0\text{ V}$. Nullified using a potentiometer across Pins 1 & 5 (Offset Null).
* **Slew Rate ($SR = \left.\frac{dV_o}{dt}\right|_{max}$):** The maximum rate of output voltage change ($\approx 0.5\text{ V}/\mu\text{s}$ for IC 741). Limits maximum undistorted signal frequency for a given peak output amplitude ($f_{max} = \frac{SR}{2\pi V_p}$).
* **CMRR (Common-Mode Rejection Ratio):** $\text{CMRR} = \frac{A_d}{A_{cm}}$. Measures the ability to reject noise common to both input terminals.

---

## 📌 Module 2: Inverting Amplifier & Frequency Response Concepts

### 1. Operation & Resistor Ratios
* **Inverting Configuration:** Input signal applied to inverting input via $R_1$; non-inverting input grounded. Negative feedback provided via $R_F$.
* **Gain Derivation via Node Current Balance:**
  $$\frac{V_{in} - 0}{R_1} + \frac{V_o - 0}{R_F} = 0 \implies A_v = \frac{V_o}{V_{in}} = -\frac{R_F}{R_1}$$
* **Phase Relation:** Output is strictly **$180^\circ$ out-of-phase** relative to input.
* **Input Impedance:** $Z_{in} = R_1$ (because the inverting terminal is at virtual ground).

### 2. Gain-Bandwidth Product (GBW) & Frequency Response
* **Gain-Bandwidth Constant:** $\text{GBW} = |A_v| \times BW = \text{Constant}$.
* **Conceptual Impact of Resistor Ratio ($R_F/R_1$):**
  * **Increasing $R_F/R_1$:** Increases closed-loop gain $|A_v|$, but **decreases bandwidth** (lowers upper $3\text{dB}$ cutoff frequency $f_H$).
  * **Decreasing $R_F/R_1$:** Decreases closed-loop gain $|A_v|$, but **broadens bandwidth** (increases $f_H$).
* **Cutoff Frequency ($f_{3dB}$):** Frequency at which voltage gain drops to $\frac{1}{\sqrt{2}} \approx 70.7\%$ of mid-band gain ($A_{v,mid} - 3\text{ dB}$).

---

## 📌 Module 3: Summing Amplifier Configurations (Design Ratios & Derivations)

### 1. General Summing Node Equation
By Kirchhoff's Current Law (KCL) at the virtual ground inverting node:
$$I_1 + I_2 + \dots + I_N + I_F = 0 \implies \frac{V_1}{R_1} + \frac{V_2}{R_2} + \dots + \frac{V_N}{R_N} + \frac{V_o}{R_F} = 0$$
$$V_o = -\left( \frac{R_F}{R_1} V_1 + \frac{R_F}{R_2} V_2 + \dots + \frac{R_F}{R_N} V_N \right)$$

### 2. Resistor Ratio Design Rules Table

| Configuration Mode | Required Resistor Ratios | Resulting Output Equation | Conceptual Explanation |
| :--- | :--- | :--- | :--- |
| **Summing Inverting Adder** | $R_1 = R_2 = \dots = R_N = R_F$<br>$\implies \frac{R_F}{R_i} = 1$ | $V_o = -(V_1 + V_2 + \dots + V_N)$ | Every input voltage is weighted equally with unity gain ($1$), output is the negative sum of inputs. |
| **Averaging Amplifier** | $R_1 = R_2 = \dots = R_N = R$, and<br>$R_F = \frac{R}{N} \implies \frac{R_F}{R_i} = \frac{1}{N}$ | $V_o = -\left( \frac{V_1 + V_2 + \dots + V_N}{N} \right)$ | Gain for each channel is set to $\frac{1}{N}$ ($N$ = number of inputs), yielding the inverted arithmetic mean. |
| **Scaling / Weighted Summer** | $\frac{R_F}{R_1} = K_1, \ \frac{R_F}{R_2} = K_2, \ \dots$ | $V_o = -(K_1 V_1 + K_2 V_2 + \dots + K_N V_N)$ | Each input channel is assigned a custom weight factor $K_i$ determined by the ratio $R_F / R_i$. |

---

## 📌 Module 4: Comparators, Zero-Crossing & Window Comparators

### 1. Voltage Comparator Concept
* **Operating State:** Operates in **open-loop** (no negative feedback).
* **Behavior:** Because $A_{OL} \approx 10^5$, any small differential voltage $V_d = V_+ - V_-$ forces the output to saturate at either $+V_{sat}$ or $-V_{sat}$ ($\approx \pm V_{supply}$).
  * If $V_+ > V_- \implies V_o = +V_{sat}$
  * If $V_+ < V_- \implies V_o = -V_{sat}$

### 2. Zero-Crossing Detector (ZCD)
* **Configuration:** Input signal $V_{in}$ applied to non-inverting terminal ($V_+$), inverting terminal ($V_-$) connected to $0\text{ V}$ (ground).
* **Function:** Converts sinusoidal input waveforms into square waves of identical frequency. Switches state precisely as $V_{in}$ crosses $0\text{ V}$.

### 3. Non-Zero Reference Comparator
* **Configuration:** Reference voltage $V_{ref}$ applied to one input terminal, signal $V_{in}$ to the other.
* **Function:** Detects when $V_{in}$ exceeds or drops below $V_{ref}$.

### 4. Window Comparator
* **Concept:** Uses two op-amp comparators to monitor whether an input voltage $V_{in}$ lies **inside** or **outside** a defined range bounded by Lower Threshold Point (LTP) and Upper Threshold Point (UTP).
* **Circuit Topology & Threshold Logic:**
  * **Top Comparator:** Non-inverting input tied to LTP, inverting input tied to $V_{in}$.
    * If $V_{in} < \text{LTP} \implies$ Top Comparator output = HIGH ($+V_{sat}$).
  * **Bottom Comparator:** Inverting input tied to UTP, non-inverting input tied to $V_{in}$.
    * If $V_{in} > \text{UTP} \implies$ Bottom Comparator output = HIGH ($+V_{sat}$).

#### Window Comparator Truth Table

| Input Voltage Condition | Top Comparator Output ($V_{in} < \text{LTP}$) | Bottom Comparator Output ($V_{in} > \text{UTP}$) | Output State / LED Behavior | Conceptual Meaning |
| :--- | :---: | :---: | :---: | :--- |
| **$V_{in} < \text{LTP}$** | HIGH | LOW | **HIGH / Active** | $V_{in}$ is below the valid window. |
| **$\text{LTP} \le V_{in} \le \text{UTP}$** | LOW | LOW | **LOW / Inactive (LEDs OFF)** | $V_{in}$ is **inside** the valid window. |
| **$V_{in} > \text{UTP}$** | LOW | HIGH | **HIGH / Active** | $V_{in}$ is above the valid window. |

---

## 📌 Module 5: Multivibrator Circuits (Transistor & 555 Timer Physics)

### 1. Transistor Astable Multivibrator
* **Operational Nature:** Free-running square wave generator with **zero stable states** (two quasi-stable states).
* **Switching Mechanism:** Cross-coupled collector-to-base $RC$ timing networks ($R_{B1} C_1$ and $R_{B2} C_2$). When one transistor is ON (saturated), the opposite capacitor holds the second transistor OFF (cutoff) until it charges through $R_B$ to the base conduction voltage ($\approx 0.7\text{V}$).
* **Timing Equations:**
  * Charging time for $C_1$ through $R_{B1}$: $t_1 = \ln(2) R_{B1} C_1 \approx 0.693 R_{B1} C_1$.
  * Charging time for $C_2$ through $R_{B2}$: $t_2 = \ln(2) R_{B2} C_2 \approx 0.693 R_{B2} C_2$.
  * Total Period: $T = t_1 + t_2 = 0.693 (R_{B1} C_1 + R_{B2} C_2)$.
  * Frequency: $f = \frac{1}{T} = \frac{1}{1.386 R_B C} \approx \frac{0.72}{R_B C}$ (for symmetric $R_{B1}=R_{B2}=R_B, C_1=C_2=C$).
  * Duty Cycle = $50\%$ when components are perfectly matched/symmetrical.

### 2. IC 555 Timer Astable Multivibrator
* **Internal Threshold Blocks:**
  * Internal 3-resistor potential divider sets reference levels: **UTP = $\frac{2}{3} V_{CC}$** (Pin 6 Threshold) and **LTP = $\frac{1}{3} V_{CC}$** (Pin 2 Trigger).
  * Discharge Transistor (Pin 7) connects internally to ground when Flip-Flop is reset.

#### Charge & Discharge Paths
1. **Charging Cycle (Output HIGH):**
   * Path: $V_{CC} \to R_A \to R_B \to C \to \text{GND}$.
   * Capacitor charges from $\frac{1}{3} V_{CC}$ to $\frac{2}{3} V_{CC}$.
   * Charge Time: $t_c = \ln(2) (R_A + R_B) C = 0.693 (R_A + R_B) C$.
2. **Discharging Cycle (Output LOW):**
   * Path: $C \to R_B \to \text{Pin 7 (Discharge Transistor)} \to \text{GND}$.
   * Capacitor discharges from $\frac{2}{3} V_{CC}$ down to $\frac{1}{3} V_{CC}$.
   * Discharge Time: $t_d = \ln(2) R_B C = 0.693 R_B C$.

#### Duty Cycle Analysis & Modifications
* **Standard Astable Duty Cycle:**
  $$D = \frac{t_c}{t_c + t_d} = \frac{R_A + R_B}{R_A + 2 R_B} \times 100\%$$
  * *Constraint:* Since $t_c$ always involves $(R_A + R_B)$ while $t_d$ involves only $R_B$, $t_c > t_d$ always. Therefore, the **standard 555 astable duty cycle is strictly $> 50\%$**.
* **Achieving 50% Symmetry or Duty Cycles $< 50\%$:**
  * *Method:* Connect a **steering diode in parallel across $R_B$** (anode to Pin 7, cathode to Pins 2 & 6).
  * *Effect:* During charging, current flows through $R_A$ and the forward-biased diode into $C$, **bypassing $R_B$**. Thus, $t_c = 0.693 R_A C$.
  * During discharging, the diode is reverse-biased, so current discharges through $R_B$ into Pin 7. Thus, $t_d = 0.693 R_B C$.
  * *Condition for 50% Square Wave:* Set $R_A = R_B \implies t_c = t_d = 0.693 R C$.

---

## 📌 Module 6: Active Low-Pass & High-Pass Filters

### 1. Active vs. Passive Filter Concepts
* **Active Filter:** Combines passive $RC$ frequency-selective networks with an active element (Op-Amp).
* **Advantages:** Provides passband voltage gain, offers high input impedance and low output impedance (eliminating loading effects when cascading stages), and eliminates bulky inductors.

### 2. Circuit Mechanisms & Cutoff Frequency Rules

#### Active Low-Pass Filter (LPF)
* **Topology:** Feedback capacitor $C_F$ connected in parallel across feedback resistor $R_F$ ($C_F \parallel R_F$).
* **Mechanism:**
  * At **Low Frequencies ($f \to 0$):** $X_{CF} = \frac{1}{2\pi f C_F} \to \infty$ (open circuit). The feedback impedance $Z_F \approx R_F$. Maximum passband gain $A_{v0} = -\frac{R_F}{R_1}$.
  * At **High Frequencies ($f \to \infty$):** $X_{CF} \to 0$ (short circuit). $Z_F \to 0$, forcing gain $A_v \to 0$. Signals are blocked/attenuated.
* **Cutoff Frequency Equation:**
  $$f_c = \frac{1}{2\pi R_F C_F}$$

#### Active High-Pass Filter (HPF)
* **Topology:** Input capacitor $C_1$ connected in series with input resistor $R_1$.
* **Mechanism:**
  * At **Low Frequencies ($f \to 0$):** $X_{C1} = \frac{1}{2\pi f C_1} \to \infty$ (open circuit). Input impedance $Z_1 \to \infty$, blocking DC/low frequencies. Gain $A_v \to 0$.
  * At **High Frequencies ($f \to \infty$):** $X_{C1} \to 0$ (short circuit). Input impedance $Z_1 \approx R_1$. Maximum passband gain $A_{v0} = -\frac{R_F}{R_1}$.
* **Cutoff Frequency Equation:**
  $$f_c = \frac{1}{2\pi R_1 C_1}$$

#### Filter Comparison Table

| Property | Active Low-Pass Filter (LPF) | Active High-Pass Filter (HPF) |
| :--- | :--- | :--- |
| **Capacitor Location** | Feedback loop ($C_F \parallel R_F$) | Input path ($C_1$ in series with $R_1$) |
| **Passband Region** | $0 \le f < f_c$ | $f > f_c$ |
| **Stopband Region** | $f > f_c$ | $0 \le f < f_c$ |
| **Cutoff Frequency Formula** | $f_c = \frac{1}{2\pi R_F C_F}$ | $f_c = \frac{1}{2\pi R_1 C_1}$ |
| **Behavior at $f = f_c$** | Gain drops to $\frac{A_{v0}}{\sqrt{2}} = 0.707 A_{v0}$ ($-3\text{ dB}$ point); $X_C = R$. | Gain drops to $\frac{A_{v0}}{\sqrt{2}} = 0.707 A_{v0}$ ($-3\text{ dB}$ point); $X_C = R$. |
