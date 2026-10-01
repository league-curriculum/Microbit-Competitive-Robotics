---
title: "Course Outline"
weight: 10
---

# Competitive Robotics — Course Outline

This is a list of the things we talk about in Competitive Robotics, grouped by
when a student is ready to hear them. It is not a week-by-week lesson plan.

<!--more-->

## How the class works

- Every student builds and programs their own robot, and students move at
  different speeds. At any moment the room has students on several different
  parts of this outline.
- Each numbered item below is one **talk**: something the instructor explains
  and demonstrates to the student or group that has just reached it.
- The **stages** (1 to 4) happen in order, because each one needs the robot
  from the one before.
- The **workshops** (building) and the **motion and control** talks are
  separate from the stages. Give them when a group is ready or when a robot
  needs them.

**Hardware.** A BBC micro:bit V2 on an ElecFreaks Nezha board: the Nezha Pro
or the Nezha2 Pro (formally the Nezha Breakout Board V2). Two drive motors, a
line sensor, a color sensor, and a joystick:bit remote.

**Two ways to program.** MakeCode blocks, or TypeScript in VS Code. Both run
the same robot code, and a class usually has students on each.

| Part | What happens | When |
|---|---|---|
| Stage 1 | Build a simple robot and drive it from the joystick | First couple of weeks |
| Stage 2 | Line sensor and color sensor, mixed with joystick driving | After the robot drives |
| Stage 3 | Move to the Nezha robot template (the new code) | After the sensor work |
| Stage 4 | Robot console and calibration | As soon as the robot runs the new code |
| Workshops | 3D printing, Tinkercad, wheels | Any time |
| Motion and control | Acceleration, velocity profiles, PID | Later |

---

## Stage 1 — Build and drive

The first couple of weeks. The goal is a robot the student built, driving
under joystick control with a program the student wrote.

### 1.1 Build a simple robot
- The parts: micro:bit V2, Nezha board, two motors, wheels, battery.
- Which motor port is the left wheel and which is the right.
- A chassis that is simple and solid. Students rebuild it later, so it does
  not need to be clever yet.

### 1.2 Drive from the joystick
- How the joystick:bit sends commands to the robot over radio.
- Program the robot to respond to joystick commands.
- First drive: forward, back, turn.

### 1.3 Mixing the joystick: adding and subtracting
The main idea of Stage 1.

- The joystick gives two numbers: Y (forward and back) and X (left and right).
  The robot needs two different numbers: left wheel speed and right wheel
  speed.
- **The Tie Fighter diagrams.** Draw the robot from above. The two wings are
  the wheels and the center circle is the body. Draw an arrow on each wing
  for that wheel's speed.
  - Going forward: both arrows point forward, same length.
  - Turning in place: the arrows point opposite ways, same length.
- Forward motion and turning are **linearly composable**. Any motion of the
  robot is some amount of "forward" plus some amount of "turn", so you can
  add the two diagrams arrow by arrow.
- That gives the equation that converts joystick to wheel speeds:
  - left = Y + X
  - right = Y − X
- Students write the mix in their own program and drive with it.

---

## Stage 2 — Sensors

Students program the robot to respond to what it senses. Most of the work
here is combining joystick commands with sensor-driven behavior.

### 2.1 The line sensor
- What the sensor reports and how to read it in a program.
- Detecting a line, then following one.

### 2.2 The color sensor
- Reading a color and making the robot respond to it.
- Optional. Not every group gets here.

### 2.3 Joystick and sensors together
- The student drives with the joystick and the robot takes over on the line,
  or the sensor changes what the joystick does.
- Deciding in the program which one is in control at each moment.

---

## Stage 3 — The new code: the Nezha robot template

A different way to structure the robot program. The work in this stage is
getting the robot running again, doing what it already did, on the new code.

### 3.1 What changes
- The template (`nezha-robot-template`) and the DiffDrive extension
  (`pxt-nezha-diffdrive`).
- The robot now measures its wheels with encoders and corrects itself, so
  straight means straight and a distance is a real distance.
- Programs use real units: centimeters, centimeters per second, degrees.
- The robot keeps track of where it is: x, y and heading.

### 3.2 Getting set up
Two tracks. Each student picks one.

- **MakeCode.** Import the template into MakeCode. DiffDrive shows up as a
  block category.
- **VS Code.** Clone the template, build, and flash from the laptop.

### 3.3 Get the robot running again
- Drive a distance, turn an angle, go to a point.
- Continuous driving for joystick control, and the rule that the program has
  to keep ticking the drive loop or the robot stops.
- Rebuild the Stage 1 and Stage 2 behaviors: joystick driving, then the line
  sensor.
- Any button on the micro:bit stops a running program.

---

## Stage 4 — Robot console and calibration

A robot on the new code needs to be calibrated before its distances and turns
are right. This is a procedure every student goes through once per robot, and
again whenever they change the wheels.

Photos to come for this whole section.

### 4.1 Running the robot console
- What the console is: a program on the laptop, used through the browser, for
  finding, flashing, driving and calibrating robots.
- Starting it, and what has to be installed first.
- Finding your robot. Every robot has its own five-letter name.
- The three ways to reach a robot: USB cable, radio through a relay micro:bit,
  and WiFi. Calibration drives the robot around, so radio or WiFi is better
  than a cable.

### 4.2 What calibration measures
- **Wheel diameter**: how far the robot really travels for each turn of the
  wheel.
- **Effective track width**: the wheel spacing that makes the robot's turn
  arithmetic come out right.
- Why the numbers on the box are not good enough, and why every robot is
  different.

### 4.3 The calibration procedure
1. Put the calibration firmware on the robot, from the console.
2. **Calibrate wheels.**
   - Lay out the eye-shaped field: two lines across the robot's path, joined
     by one stripe down the middle.
   - Measure the distance between the two lines with a tape measure and type
     it into the console.
   - Stand the robot on clear white before the first line, square to it.
   - Run it. The robot drives from the first line to the second and reports
     its wheel diameter.
   - Run it several times. The console averages the runs and shows the
     spread. A spread of a few hundredths of a millimeter is good. A few
     tenths means something moved.
3. **Calibrate turns.**
   - Lay out the iron cross: eight 45° wedges, alternating black and white.
   - Stand the robot centered on it.
   - Run it. The robot spins in place and counts the wedges going past.
   - Wheels come first. The turn is measured using the wheels, so
     recalibrating the wheels means redoing the turn.
4. **Done.** The console averages what was collected and stores it on the
   robot, where it survives being switched off.
5. Paste the code the console shows into your program. Reflashing the robot
   erases the stored calibration, and the pasted code puts it back.

Both runs can also be started from the robot itself: button A picks the
program, button B runs it.

### 4.4 Measured track width and slip (optional)
- Measure across the wheel centers with a caliper and type it into the
  console.
- The difference between the measured width and the effective width is how
  much the wheels scrub sideways in a turn.
- Leads into the wheels workshop (W3).

### Photos needed
- The eye field, with its dimensions.
- The robot at the start position for the wheel run.
- The iron cross with a robot centered on it.
- The console's calibration page, before and after a run.
- A caliper across the wheel centers.

---

## Workshops — building the robot

Standalone sessions. None of them depends on the stages.

### W1 3D printing with Lego3D
- Lego3D (lego3d.jointheleague.org) is the League's version of an open-source
  program for designing 3D-printable LEGO-compatible parts.
- Design a part, export it, print it, fit it to the robot.

### W2 Making parts in Tinkercad
- For parts Lego3D cannot make.
- Design a part that has to attach to the robot.

### W3 Robot wheels
- Track width, and what it does to how the robot turns.
- Turning: where the robot pivots.
- Slip and scrub: what the wheels do sideways in a turn, and why wide or
  grippy wheels make it worse.
- Connects to calibration (4.4): this is the effect the calibration measures.

---

## Motion and control

Later topics, for students whose robots already run the new code and are
calibrated.

### M1 Acceleration and friction
- Why a robot cannot change speed instantly.
- What happens when it tries: wheel slip, tipping, lost position.

### M2 Trapezoidal velocity profiles
- Speed up, cruise, slow down: the trapezoid.
- How the profile sets how far the robot goes and how long it takes.
- What changes when the move is too short to reach cruise speed.

### M3 PID controllers
- Feedback: measure, compare with the target, correct.
- What the P, I and D terms each do.
- Where the robot already uses one: wheel speed, and line following.

---

## Still to decide

- Competitions and games: what the robots compete at, and where those
  sessions go in this outline.
- Whether the color sensor (2.2) is a required topic or stays optional.
- Session length, and how many weeks the whole course runs.
