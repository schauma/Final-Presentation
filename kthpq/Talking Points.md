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
