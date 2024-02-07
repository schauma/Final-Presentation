# Final presentation content summary


This is a collection of information I want to present in the final presentation. The presentation is likely aimed at 30 minutes.  
Therefore we want to make proper outline on what we want to present.



--- 
### Slide 1 Title slide 
- Name
- Title of Project
- KTH Logo etc...


---
### Slide  Table of Contents
 - Done Automatically


---
### Slide Introduction
- What are we taking about:
  - Spiking neural networks
  - Control of Linear systems
  - Biologically plausibility
- This is all more or less a copy of the introduction
  - 3rd Generation of neural networks
  - Working on Spikes instead of gradients
  - Temporal data and current ANN bad

---
### Slide Elaborate on what the project is about
 - What is our goal
   - Use SNN to Control a linear system
   - Limit ourselves to biologically feasible methods
     - Local learning rules
     - Recurrency
     - Noise pertinent
     - Robustness
     - Better than rate encoding
   - Try to be a black box and applicable for any type of linear system 
   - Try to be a Black box as much as possible without parameter tuning by hand
   - Optimality?
  
 - Copy the Content of the Method section
     - Set up in 4 stages
       - 1 Network for simulating the dynamics
       - 1 network for creating the Control signal
       - Learn the dynamics of the simulating netowrk
       - Combine the 2 previous networks to build the controller
       - Use the learned network parameters
  
### Slide The network for simulation
- Interpretation as an autoencoder
- Show the voltage equation
- Copy a bit from the Christian Machens Talk
- Show the geometric interpretation
  - Explain the Threshold, Projection, Regularization costs
- Plot of the sim result very basic
- Plot of large network
- Conclusion
  - Works as advertised
  - Dependence on $\Gamma$
  - Proven robustness and noise 

---
### Slide The control network
- Show schematic of control network idea with the 2 network in series
- Show Voltage equation
  - Explain differences and the necessity of ```iDec```
  - Discuss that the control is mainly based around $\mathbf{c} = \mathbf{\dot{x}} - \mathbf{Ax}$
- Explain it is basically an open loop controller with all its drawbacks
- Show plots with exact dynamics. Works nicely
- Show plots with network as dynamics with and without noise. Bad...
- Necessary condition for Control
  - Explain the rank problem that rows in $\mathbf{B}^T\mathbf{C}^T$ are zero.
- Conclusion
  - Results are acceptable in ideal conditions
  - Rank condition is limiting
  - Noise of simulatin network is invisible to the network
  - The definition of $ \mathbf{c}$ is kind of cheating
  
---
### Slide Learning
- Explain learning rule for $\mathbf{W}^s$
- Explain learning rule for $\mathbf{W}^f$ with and without the quadratic cost
- Show plot of learning over time
- Show that measures are not really working and only the network error may be considered
- Explain that the $\mathbf{W}^s$ influences $\mathbf{W}^f$. How?
- Explain why the input sequences are random gaussian noise
  - To have variety and quick events, given large error aiding the network training. At least for $\mathbf{W}^s$
- Maybe one more thing... But what?
- Submitting the whole state trajectory even though the network output might not be all states is kind of useless
  - Might also be implausible. Ask arvind



  ---
### Slide Results on Control using learned matrices
  - It does not work
    - $\mathbf{W}^s$ introduces to much error
    - With analytical matrices it works better. Show plot
    - There is no feedback for noise or training errors
    - Adding feedback gives limited success
  - Merging to networks
    - How it is build
    - Copying $\mathbf{c}$
    - Limit on $\mathbf{B} = \mathbf{I}$
    - With $\mathbf{B} \neq \mathbf{I}$ bad results even with orthonormal basis requirement
    - Same problem that with $\mathbf{B}^T\mathbf{B}$ it may happen that rows are zero that cannot be sufficiently controlled using the network dynamics.
    - 
---
### Slide Conclusion
- It doenst work
- Too limited applicability
- $\mathbf{W}^s$ brings too much error
- So either no input matrix or no learning 
- Also definition of $\mathbf{c}$ might be cheating and implausible
- Results translate somehow in some form to LSMs or NEF. Ask Arvind exactly how.
- In the end not useable
  - But it is theoretically possible (Only theoretical interest)
  - Potentially impressive accuracy under the right circumstances

---
### In case there is space and time : Future Work
- Nonlinear
- Dale's Law
- Better control
- More