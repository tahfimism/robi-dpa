# ECE 2102 Lab Quiz Master Note: IC 741, Timers, Comparators & Active Filters

---

## 📍 Topic 1: IC 741 Op-Amp Architecture, Pinout & Electrical Specs

### 1. Pin Configuration & Nomenclature

- **Name Significance:** **`741`** indicates **7 functional pins**, **4 input-capable terminals** (Pins 1, 2, 3, 5), and **1 output pin** (Pin 6). Packaged in an 8-pin Dual In-line Package (DIP).
- **Pin Map Table:**

|Pin #|Pin Label|Function & Operational Rule|
|:-:|:--|:--|
|**1**|**Offset Null**|Connects to a potentiometer to null out small DC output offset voltages.|
|**2**|**Inverting Input ($-$)**|Signal applied here produces an output **$180^\circ$ out-of-phase** with the input.|
|**3**|**Non-Inverting Input ($+$)**|Signal applied here produces an output **in-phase ($0^\circ$ shift)** with the input.|
|**4**|**$-V_{CC} / -V_{EE}$**|Negative supply power terminal (typically $-5\text{ V}$ to $-18\text{ V}$, e.g., $-10\text{ V}$).|
|**5**|**Offset Null**|Second terminal for offset-nulling potentiometer balancing.|
|**6**|**Output ($V_O$)**|Delivers output signal; saturates to $\pm V_{sat} \approx \pm (V_{supply} - 1.5\text{ V})$ in open-loop.|
|**7**|**$+V_{CC}$**|Positive supply power terminal (typically $+5\text{ V}$ to $+18\text{ V}$, e.g., $+10\text{ V}$).|
|**8**|**NC (No Connection)**|Not connected internally; dummy lead filling void space in standard 8-pin packages.|

### 2. Datasheet Specifications & Parameter Benchmarks

| Electrical Parameter             | Benchmark Value                                                | Key Exam & Lab Quiz Fact                                                               |
| :------------------------------- | :------------------------------------------------------------- | :------------------------------------------------------------------------------------- |
| **Manufacturer & Origin**        | Fairchild Semiconductor (1963 / 1968)                          | First monolithic operational amplifier.                                                |
| **Open-Loop Gain ($A_{OL}$)**  | $\approx \mathbf{10^5 \ (100\text{ dB / } 200\text{ V/mV})}$ | Extremely high gain causes rapid saturation without negative feedback.                 |
| **Input Impedance ($R_{in}$)** | $\approx \mathbf{2\text{ M}\Omega}$                          | Very high; prevents signal source loading ($I_{in} \approx 0\text{ A}$).             |
| **Output Impedance ($R_o$)**   | $\approx \mathbf{75\ \Omega}$                                | Very low; allows driving low-resistance loads effectively.                             |
| **Recommended Load ($R_L$)**   | $\mathbf{> 2\text{ k}\Omega}$                                | Minimum recommended load impedance to prevent output distortion/clipping.              |
| **Max Output Current**           | $\mathbf{20\text{ mA}}$                                      | Maximum safe current Pin 6 can sink or source ($200\text{ mA}$ is false).            |
| **Slew Rate ($SR$)**           | $\mathbf{0.5\text{ V}/\mu\text{s}}$                          | Maximum rate of change of output voltage; limits high-frequency large-signal response. |
| **Gain-Bandwidth Product**       | $\approx \mathbf{1\text{ MHz}}$                              | Product of closed-loop gain and upper bandwidth is constant ($GBP = A_v \times BW$). |
| **Historical Application**       | Analog Computers                                               | Originally engineered to perform mathematical operations in analog systems.            |

---

## 📍 Topic 2: Inverting Amplifier & Gain-Bandwidth Dynamics

- **Phase Shift:** A strict **$180^\circ$ phase shift** exists between input and output.
- **Negative Feedback Function:** Closed-loop negative feedback stabilizes the op-amp, preventing rapid output saturation.
- **Closed-Loop Voltage Gain Formula:** $A_v = -\frac{R_F}{R_1}$
- **Feedback Factor ($\beta$):** Ratio of feedback voltage to output voltage: $\beta = \frac{V_F}{V_O} = \frac{R_1}{R_1 + R_F}$
- **Gain-Bandwidth Product (GBP) Trade-off:**
    - **Increasing $R_F$:** **Increases gain** ($|A_v| \uparrow$) and **decreases bandwidth** ($BW \downarrow$).
    - **Decreasing $R_F$:** **Decreases gain** ($|A_v| \downarrow$) and **increases bandwidth** ($BW \uparrow$, wider frequency response).

---

## 📍 Topic 3: Op-Amp Summing Amplifier Configurations

General Inverting Summer Equation: $e_o = -\left( \frac{R_F}{R_1} e_{i1} + \frac{R_F}{R_2} e_{i2} + \dots \right)$

|Configuration|Resistor Design Ratio|Output Equation ($e_o$)|Operational Function|
|:--|:-:|:--|:--|
|**Unity-Gain Adder**|$R_F = R_1 = R_2 = R$|$e_o = -(e_{i1} + e_{i2})$|Directly adds incoming input voltages with phase inversion.|
|**Averaging Amplifier**|$\mathbf{\frac{R_F}{R_i} = \frac{1}{N} = 0.5}$ (for $N=2$)|$e_o = -\frac{e_{i1} + e_{i2}}{2}$|Outputs the exact algebraic average of $N$ input channels.|
|**Scaling / Weighted Summer**|$\frac{R_F}{R_i} = K_i$|$e_o = -\sum (K_i \cdot e_{i})$|Scales each input channel independently by factor $K_i$.|

---

## 📍 Topic 4: Voltage Comparators, Zero-Crossing Detectors & Window Detectors

### 1. Voltage Comparator Principles

- **Open-Loop Operation:** Comparators operate without negative feedback. Output is non-linear and always saturates to $\mathbf{\pm V_{sat}}$ ($\approx \pm 10\text{ V}$ for $\pm 10\text{ V}$ supply).
- **Switching Rule:**
    - If $V(+) > V(-) \implies V_o = +V_{sat}$ (HIGH).
    - If $V(-) > V(+) \implies V_o = -V_{sat}$ (LOW).

### 2. Specific Comparator Topologies

|Comparator Type|Configuration Details|Output Waveform / Behavior|
|:--|:--|:--|
|**Zero Crossing Detector**|Reference voltage set to zero ($V_{ref} = 0\text{ V}$). Input sine wave applied.|Converts input **sine wave into a square wave** at $\pm V_{sat}$.|
|**Non-Zero Reference**|$V_{ref} = +5\text{ V}$ connected to reference terminal.|Output switches state whenever signal crosses $+5\text{ V}$ threshold.|
|**Window Comparator**|Uses **two op-amps at minimum** with Upper Threshold (UTP) and Lower Threshold (LTP).|Detects if $V_{in}$ is **within a specific voltage window/range** ($\text{LTP} \le V_{in} \le \text{UTP}$).|
|**Schmitt Trigger (Hysteresis)**|Uses **positive feedback** to the non-inverting ($+$) input terminal.|Creates a small threshold dead-band to **prevent false switching/chatter from noise**.|

---

## 📍 Topic 5: Multivibrators (Transistor & IC 555 Timer Astable)

### 1. General Principles

- **Astable Definition:** **Free-running multivibrator** with zero stable states. It oscillates continuously between two quasi-stable states without requiring an external trigger.

### 2. Transistor vs. 555 Timer Astable Comparison

|Parameter|Transistor Astable Multivibrator|IC 555 Timer Astable Multivibrator|
|:--|:--|:--|
|**Active Components**|**Two NPN Transistors (e.g., 2N3904)** alternating between saturation and cutoff.|**IC 555 Timer** (2 internal comparators, flip-flop, discharge transistor).|
|**Timing Mechanism**|Cross-coupled $RC$ networks ($C_1 R_2$ and $C_2 R_3$).|Single timing capacitor $C$ with resistors $R_1$ ($R_A$) and $R_2$ ($R_B$).|
|**Half-Cycle / Charge Time**|$t_1 = 0.693 \cdot R_2 C_1$|$t_c = \mathbf{0.693(R_1 + R_2) C}$ _(Charges via $R_1 + R_2$)_|
|**Half-Cycle / Discharge Time**|$t_2 = 0.693 \cdot R_3 C_2$|$t_d = \mathbf{0.693 \cdot R_2 C}$ _(Discharges via $R_2$ into Pin 7)_|
|**Total Period ($T$)**|$T = 0.693(R_2 C_1 + R_3 C_2)$|$T = t_c + t_d = 0.693(R_1 + 2R_2) C$|
|**Frequency ($f = 1/T$)**|$f \approx \mathbf{\frac{1}{1.386 \cdot RC} = \frac{0.72}{RC}}$ _(for $R_2=R_3=R, C_1=C_2=C$)_|$f = \frac{1.44}{(R_1 + 2R_2) C}$|
|**Duty Cycle Equation**|$\text{Duty Cycle} = \left( \frac{\text{Pulse Width}}{\text{Pulse Period}} \right) \times 100\%$|$\text{Duty Cycle} = \frac{R_1 + R_2}{R_1 + 2R_2} \times 100\% \quad \mathbf{(Always > 50\%)}$|
|**50% Duty Cycle Fix**|Equal $RC$ time constants produce a **symmetrical square wave ($50\%$)**.|Connect a **steering diode in parallel across $R_2$** and set $R_1 = R_2$.|

---

## 📍 Topic 6: Active Low-Pass & High-Pass Filters

### 1. Active vs. Passive Filter Comparison

- **Active Filters:** Use **active components (op-amp)** alongside passive $R$ and $C$ components.
    - **Advantages:** High input impedance, low output impedance, no insertion loss, provides signal gain, and **eliminates bulky inductors** (especially at audio frequencies).
    - **Requirement:** Requires a separate DC power supply.
- **Passive Filters:** Consist solely of $R, L, C$ passive elements; introduce loading attenuation and lack gain.

### 2. Low-Pass (LPF) vs. High-Pass (HPF) Active Filters

|Feature|Active Low-Pass Filter (LPF)|Active High-Pass Filter (HPF)|
|:--|:--|:--|
|**Capacitor Placement**|Feedback capacitor **$C_F$ placed in parallel with $R_F$**.|Input capacitor **$C_1$ placed in series with $R_1$**.|
|**Cutoff Frequency Formula**|$f_{cutoff} = \frac{1}{2\pi R_F C_F}$|$f_{cutoff} = \frac{1}{2\pi R_1 C_1}$|
|**Low-Frequency Behavior**|$X_{CF} \to \infty$ (open circuit) $\implies$ Maximum gain $A_v = -R_F/R_1$.|$X_{C1} \to \infty$ (blocks signal) $\implies$ Output attenuated ($0\text{ V}$).|
|**High-Frequency Behavior**|$X_{CF} \to 0$ (shorts $R_F$) $\implies$ Output gain drops to zero.|$X_{C1} \to 0$ (passes signal) $\implies$ Maximum gain $A_v = -R_F/R_1$.|
|**Bandwidth Modifier**|Decreasing $C_F$ shifts cutoff frequency up, **increasing bandwidth**.|Decreasing $C_1$ shifts cutoff frequency up.|
|**3dB Point Definition**|Frequency where $X_C = R$ and $V_{out} = \mathbf{0.707 \times V_{O(max)}}$ (power drops to $50\%$).|Frequency where $X_C = R$ and $V_{out} = \mathbf{0.707 \times V_{O(max)}}$.|

---

## ⚡ High-Yield Quick Fact Check for Quiz Prep

1. **Phase Shift:** Inverting amp $= 180^\circ$; Non-inverting amp $= 0^\circ$.
2. **Measuring Peak-to-Peak Voltage:** Instrument used is the **Oscilloscope**.
3. **IC 741 Output Current Limit:** Maximum output current is **$20\text{ mA}$** (not $200\text{ mA}$).
4. **Active Filter Elements:** Uses **Op-Amp + R + C only** (No inductors needed).
5. **Open-Loop Gain:** $\approx 10^5 \ (100\text{ dB})$. Cannot be used in open-loop for stable amplification.
6. **555 Charge / Discharge Paths:** Charges through $R_1 + R_2$; discharges through $R_2$ into Pin 7.
7. **Window Detector:** Detects whether an input voltage falls **within a specific voltage window**.
8. **Astable MV State Count:** Has **zero stable states** (self-triggering / free-running).
9. **Hysteresis Input:** Small positive feedback voltage fed back to the **non-inverting ($+$) input**.
10. **3dB Point Output Voltage:** $V_{out} = \mathbf{0.707 \times V_{max}}$.

---

💡 **Would you like me to generate a 10-question practice mock quiz directly based on these facts so you can test your memory before the lab test?**