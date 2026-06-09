design_assignment_Abhinav1/
│
├── day1/
│   ├── BCD_Adder/
│   │   ├── DESIGN/
│   │   ├── tb/
│   │   └── bcd.md
│   │
│   └── Ripple_Carry_Adder/
│       ├── design/
│       ├── rca/              ← design_rcv.v
│       ├── tb/
│       ├── tb_rcv/
│       └── rca.md
│
└── day2/
    ├── 2x4Decoder/
    │   ├── design/
    │   └── tb/
    │
    ├── USR/
    │   ├── USR_design/
    │   └── usr_tb/
    │
    ├── dff/
    │   ├── design/
    │   └── tb/
    │
    └── srff/
        ├── tb/
        └── srff_design.v
```

 MODULE OVERVIEW      

Day 1
ModuleDescriptionBCD AdderAdds two BCD digits and outputs a valid BCD resultRipple Carry AdderMulti-bit binary adder using cascaded full adder stages

Day 2
ModuleDescription2x4 DecoderDecodes a 2-bit input to one of four active output linesUSRUniversal Shift Register — supports load, left/right shift, and holdDFFD Flip-Flop — basic edge-triggered storage elementSRFFSR Flip-Flop — Set-Reset latch with standard behavior
