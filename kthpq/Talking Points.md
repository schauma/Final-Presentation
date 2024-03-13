# Talking Points for Master Thesis presentation



## Slide Title

Hello and Welcome everybody to my master thesis presentation on Spiking neural networks


## Slide Table of Contents
To give a small overview of my talk, firstly I will start with a small Introduction and Motivation  
Afterwards, I will start with a brief discussion of the Simulation, Control and Learning of Dynamics Systems using Spiking Neural networks  
Afterwards, I will go into the combination of all Three steps in 1 system for control of Dynamics Systems and Lastly I will be giving a small conclusion

## Slide Introduction
So let's get started with the Introduction

## Slide Goal Motivation
SNNs can already perform various cognitive and complex tasks, be it Memorization, visual problems or Basic Logic but also the simulation and control of dynamic systems. However these tasks are built with various levels of biologic plausibility. This can include but is not limited to the network topology, neuron model, learning rule and more.  
My goal was to build a SNN controller of dynamic systems which is based on a higher level of biologic plausibility. This mostly concerns the choice of learning rule, network architecture.  
We furthermore want to try to build this controller as a black box device, such that it can be applied on a broad range of problems without the tuning of hyperparameters.

## Slide What are we talking about
So to briefly introduce the principal components of the the thesis we frist briefly mention dynamics systems. For the scope of my thesis, we limit ourselves to Linear Time Invariant LTI systems. This means we have a system matrix $A$, and input output matrices $B$ and $C$. For the most part in this talk I will not further mention the output y except where it requires special treatment.  
We also only consider stable systems, as to my knowledge it is not yet possible to stabilize dynamic systems similar to pole placement or alike.  
 
## Slide What are we talking about 2
The second component of course is the SNN. SNNs are often dubbed the third generation of NN after the Perceptron model in 1958 and the emergence of performant training algorithms like Backprop.  
Instead of working of continuous gradients seen in conventional ANNs, The information transfer is entirely based on discrete spikes. This also entails problems for training, as the discrete nature rules out almost all gradient based optimization algorithms.  
Lastly, SNNs or are inherently fit for temporal data compared to Feed-Forward networks which are static.  
In the picture you can see the 3 parts of a spiking neural network. The network itself is a collection of spiking neurons that are connected with other. Left and right to the network are the en- and decoder, which transform the potentially continuous input signal into spikes. This transform can be very diverse, such as linear maps, nonlinear maps or other means 
## Slide Method
I separated my problem into 4 steps. At first I started to build a SNN that was capable of simulating a given LTI system.  
Next, I set up a second network that was responsible to control the previous network to follow a given trajectory.
These networks were then set up to learn the networks' dynamics.  
Lastly, all three previous steps are combined to build one controller.  


## Slide Simulation
So, to begin with the simulation part



## Slide Simulation of Linear systems
- The network is based on an autoencoder.
- We feed it the external input $c$ and the network, consisting of a group of LIF neurons, itself is tracking reconstructing the state $\hat{x}$. 
- The Encoder and Decoder are linear maps from the firing rate and are transpose to each other. 
- The neuron's voltage can be interpreted as the projection error of 1 particular neurons "field of view"
- We are working on 2 different time scales, slow and fast and that is what we will be learning
- There is the equation and there is also noise



## Slide Example Simulation
- Explain the picture
- Right: Time is orthogonal to the projection plane sticking out 
- The error is traversing in the bounded area
- Whenever a neuron threshold is reached, a spike is fired
- This plot is without noise

## Slide Control
Continuing with the control scheme

## Slide Control Concept
the network architecture for the control is very similar to the previous one
This networks is put infront the dynamical system





