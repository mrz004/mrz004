// Typst port of Jake Gutierrez's LaTeX resume (MIT) — no packages needed.
#set page(paper: "us-letter", margin: 0.5in)
#set text(font: "New Computer Modern", size: 11pt)
#set par(justify: false, leading: 0.5em)

// Section heading: small caps + rule
#show heading.where(level: 1): it => block(
  above: 0.9em, below: 0.7em, width: 100%,
  stack(
    spacing: 0.35em,
    smallcaps(text(size: 12pt, weight: "regular", it.body)),
    line(length: 100%, stroke: 0.5pt),
  ),
)

// \resumeSubheading: title / date, then org / location in small italics
#let entry(title, date, sub, loc) = grid(
  columns: (1fr, auto), align: (left, right), row-gutter: 0.5em,
  strong(title), date,
  text(size: 10pt, emph(sub)), text(size: 10pt, emph(loc)),
)

// \resumeProjectHeading
#let project(what, when) = grid(
  columns: (1fr, auto), align: (left, right),
  text(size: 10pt, what), when,
)

// \resumeItemListStart/End
#let bullets(..items) = {
  set text(size: 10pt)
  set list(marker: [•], indent: 0.15in, body-indent: 0.5em, spacing: 0.6em)
  list(..items.pos())
  v(0.3em)
}

// ---------- Heading ----------
#align(center)[
  #text(size: 25pt, weight: "bold", smallcaps[Zahoorahmed Sayyad]) \
  #v(1pt)
  #text(size: 10pt)[
    +91 8767354046 | #link("mailto:zahoor.adcet@gmail.com", underline("zahoor.adcet@gmail.com")) |
    #link("https://linkedin.com/in/zahoorahmedsayyad", underline[linkedin.com/in/zahoorahmedsayyad]) |
    #link("https://github.com/mrz004", underline[github.com/mrz004])
  ]
]


// ---------- Experience ----------
= Experience
#entry[System Software Engineer][Jan 2026 -- Present][Astrome Technologies Pvt Ltd][Bangalore, India]
#bullets[Worked on products like GigaMesh, Modem and GigaSat][Implemented the Software Update Manager for OTA updates across 4--5 Astrome products: a signed bundle of 5 packages is installed sequentially, and a failed package is reported to the user while its previous version stays intact and the others are unaffected][Involved in the design of the GigaSat-2 satellite ground terminal][Worked on integration of devices like LMX2572, GPS, LCD, matrix keypad, BNO086 IMU and other peripherals in the products]

#entry[Competitive Programming Intern][Dec 2024 -- Mar 2025][HeyCoach Pvt Ltd][Bangalore, India]
#bullets[Assisted coaches as TA in live classes of 200+ learners][Assisted in creating 10+ LeetCode-style problems][Undertook 50+ one-on-one doubt-clearing sessions with learners]

// ---------- Technical Skills ----------
= Technical Skills
#pad(left: 0.15in)[
  #set text(size: 10pt)
  *Languages*: C++ (11/14/17), C, Python, Bash, ARM Assembly \
  *Embedded & Systems*: RTOS (FreeRTOS), bare-metal, Linux kernel/drivers, interrupts, DMA, #box[memory-mapped I/O], multithreading \
  *Interfaces & Protocols*: UART, SPI, I2C, CAN, USB, GPIO \
  *Platforms*: ARM Cortex-M, AArch64, STM32, ESP32, Raspberry Pi \
  *Build & Debug*: CMake, Make, GCC, GDB, OpenOCD, JTAG/SWD, spectrum analyzer, oscilloscope \
  *Tools & Testing*: Git, Docker, GoogleTest, CI (GitHub Actions)
]

// ---------- Projects ----------
= Projects

#block(breakable: false)[
#project[*GigaSat* | _C++, Python, Linux, FreeRTOS, STM32_][Apr 2026 -- Present]
Satellite ground terminal with flat panel patch antenna, auto satellite pointing and dual satellite support.
#bullets[Implemented a frame-transformation-based control feedback loop using BNO086 IMU and GNSS data at 20 Hz (matched to the slower motors) to lock antenna pointing on the satellite, designed for 1° pointing accuracy][Integrated multiple devices like GPS, LMX2572, etc.][Achieved beacon and DVB-S2 signal reception with 14 dB signal strength][Calibrated and replaced the old IMU setup with a BNO086 IMU for better performance, rewriting the IMU controller]
]

#block(breakable: false)[
#project[*GigaMesh* | _C++, Aarch64, Zynq, Buildroot, Prime_][Jan 2026 -- Present]
Dual E-band node supporting 1.2 Gbps throughput with 2x2 MIMO and 256QAM modulation.
#bullets[Implemented weighted round robin QoS and validated it with a network analyzer generating random packets, which were classified and dropped as expected][Implemented BIST (POST) that checks voltage, temperature, clocks, LMX/LMK and other key parameters against expected ranges][Implemented the software update manager and bandwidth calculation][Fixed the micro tar to support the upgraded USTAR standard, allowing 2x longer names to be stored]
]

#block(breakable: false)[
#project[*Modem* | _C++, Aarch64, Zynq, Buildroot, Prime_][Jan 2026 -- Present]
High throughput modem supporting 1.3 Gbps of data transmission.
#bullets[Integrated the matrix keypad and LCD display, including driver implementation][Integrated GPS by implementing an NMEA parser from scratch]
]

// ---------- Education ----------
= Education
#entry[Annasaheb Dange College of Engineering and Technology][Sangli, Maharashtra][Bachelor of Technology in Computer Science and Engineering][Aug 2023 -- May 2026]
#v(0.3em)
#entry[Latthe Education Society's Polytechnic][Sangli, Maharashtra][Diploma in Computer Engineering][Aug 2020 -- Jun 2023]

// ---------- Achievements ----------
= Achievements
#bullets[GATE 2025 (Computer Science): qualified, score 356/1000][IBM SkillsBuild Maharashtra State Level Hackathon 2025: Finalist][LeetCode: 300+ problems solved, contest rating 1700+ (#link("https://leetcode.com/u/mrz004/", underline[leetcode.com/u/mrz004]))]
