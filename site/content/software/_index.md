---
title: "Code"
url: "/code/"
weight: 20
---

# Code

The software behind the class lives in a few GitHub repositories. Students
mostly use the first one; the rest are the pieces it is built on and the
tools the instructor uses to flash and manage the robots.

<!--more-->

## For students

### nezha-robot-template

<https://github.com/League-Microbit/nezha-robot-template>

The project you start from. It is a MakeCode project, so you can open it in
the MakeCode editor or in VS Code, and it already includes the DiffDrive
extension and a few example programs (drive in a circle or a square,
calibrate the wheels, calibrate turning). Each release on its Releases page
is a ready-to-flash hex of the calibration program.

### pxt-nezha-diffdrive

<https://github.com/League-Robotics/pxt-nezha-diffdrive>

The DiffDrive extension: the code that drives the Nezha board's motors in a
closed loop, so `move 50 cm` means 50 cm and `turn 90°` means 90°. It also
provides the radio and Wi-Fi link the robot console talks to. Add it to your
own MakeCode project as the extension
[`League-Microbit/pxt-diff-drive`](https://github.com/League-Microbit/pxt-diff-drive),
which is generated from this repository.

### Remote-Joystick-Student

<https://github.com/League-Microbit/Remote-Joystick-Student>

The program for the joystick:bit remote. The robot console installs it on a
joystick for you; this is its source, written so a student can read and
change it.

## Tools

### robot-console

<https://github.com/League-Robotics/robot-console>

The console that finds robots over USB, radio and Wi-Fi, flashes firmware,
runs the calibration wizards and drives a robot from the browser.

### microbit-radio-relay

<https://github.com/League-Robotics/microbit-radio-relay>

The firmware for the radio bridge micro:bits that let the console reach a
robot over the micro:bit radio.
