---
title: "Device Programs"
weight: 10
description: "The ready-to-flash MakeCode programs for the robot and joystick, plus bulk flashing."
---

The robots and joysticks ship **pre-flashed** with these programs. In class students
edit the **receiver** (the robot's behavior); the joystick **transmitter** is left
alone so pairing never breaks.

## Programs

| Device | Program | Source |
|--------|---------|--------|
| **Joystick 🔴** | [Open in MakeCode](https://makecode.microbit.org/S29867-07006-10286-26715) | [Remote-Joystick repo](https://github.com/League-Microbit/Remote-Joystick) |
| **Cutebot 🔵** | [Open in MakeCode](https://makecode.microbit.org/S02656-80574-03454-98135) | [remote-cutebot repo](https://github.com/League-Microbit/remote-cutebot) |
| **Joystick (student) 🔴** | [Open in MakeCode](https://makecode.microbit.org/_Cu5Xm8foUUe3) | [Remote-Joystick-Student repo](https://github.com/League-Microbit/Remote-Joystick-Student) |

**For most cases, use the first Joystick program. The second joystick program is for students who want to edit the transmitter and receiver code together, and is not pre-flashed on the joysticks.**

## Bulk Flashing

To flash a whole classroom set at once, use the **`microbit-loader`** utility in the
course repository — it loads the stock transmitter/receiver hex onto many devices in
one pass.
