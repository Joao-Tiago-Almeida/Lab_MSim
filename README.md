# Modelling and Simulation course's Practical Exercises

This project was coded by me and [my colleague](https://github.com/gambas) during Modelling and Simulation classes, and it contains four different exercises.
Modelling and Simulation is the frist optional course we chose during our studies in IST, and it's taught by investigators who work in the [Institute for Systems and Robotics](https://welcome.isr.tecnico.ulisboa.pt) in [IST](https://tecnico.ulisboa.pt/pt/). This choice represents my passion about systems interconnection and all that comes with it.
During Modelling and Simulation classes I learnt how to deal with simple problems such as:
- Describing non linear systems' in their matricial form (one or more dimensions);
- State space modeling, model linearization and dynamic behavior analysis;
- Stability of Nonlinear Systems envolving Lyapunov's stability theory;
- Estimating of the parameters of a dynamic system using least squares' method;
- Markov chain problems regarding discrete event systems;
- Interconnection of Inertial's and Body's references frame for modeling Autonomous Vehicles.

# [Introduction to MATLAB / SIMULINK programming](./Introduction%20to%20MATLAB%20:%20SIMULINK%20programming)
How can we digitally (discrete time) study natural problems (continuous problems)?

This exercise simulates nonlinear systems in SIMULINK such as car movement, symbiosis predator/prey relationship or Double pendulum' movement. With MATLAB software it was possible to manage simulations and evalute results.

# [Optimization of a hard disk's servomechanism](./Optimization%20of%20a%20hard%20disk's%20servomechanism)
How does servomechanism behave?

Based on state-space transformation, this exercise involves the behaviour of a servomechanism and his responses to multiple stimuli.

# [Dynamics of a basic metronome](./Dynamics%20of%20a%20basic%20metronome)

How can we predict the response of and non linear systems, during his steady-state?

Here it's worked with state-space which represents model linearization of a steady-state such as a metronome oscillating around a steady point.

# [Detection of WiFi hotspots](./Detection%20of%20WiFi%20hotspots)
What is the behavior of a chain based on his transition states probability?
Is it possible to locate an antenna based on various receivers' information?

Here is simulated the time evolution of a graph based on Markov Chain model with probabilistic methods and Monte Carlo Method.



## Useful Git Commands
- [font](https://confluence.atlassian.com/bitbucketserver/basic-git-commands-776639767.html)
```
$ git checkout master

$ git branch <branchname>
$ git checkout <branchname>
ou
$ git checkout -b <branchname>

$ git push origin <branchname>

# ...develop some code...

$ git add –A
$ git commit –m "Some commit message"
ou
$ git commit –am "Some commit message"

$ git checkout master
$ git merge new-branch
```
