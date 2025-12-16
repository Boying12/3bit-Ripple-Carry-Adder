# 3-bit Ripple Carry Adder VLSI Design

## Overview
- Designed and implemented a 3-bit ripple carry adder at the transistor level
- Performed full custom VLSI design including simulation, layout, and post-layout verification
- Evaluated timing and power characteristics before and after layout parasitic extraction

## Design Methodology
- Determined optimal transistor sizing to balance delay and power consumption
- Implemented the adder using CMOS logic and verified functionality using HSPICE
- Constructed a worst-case input vector set to analyze critical carry propagation paths

## Timing Analysis
- Exhaustively simulated all input combinations for a single full adder
- Identified worst-case propagation delay conditions for both sum and carry outputs
- Extended worst-case conditions to the 3-bit ripple carry adder
- Measured worst-case propagation delay:
  - Pre-layout: 2.08 ns
  - Post-layout (PEX): 4.23 ns

## Power Analysis
- Measured average power consumption using HSPICE
- Compared power before and after layout parasitic extraction:
  - Pre-layout: ~18.2 µW
  - Post-layout: ~54.5 µW

## Physical Design
- Completed full custom layout of the 3-bit adder
- Successfully passed Design Rule Check (DRC)
- Successfully passed Layout Versus Schematic (LVS)
- Verified post-layout functionality using extracted netlists

## Tools
- HSPICE
- Cadence Virtuoso
