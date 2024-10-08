---
footer: "![height:50px](https://www.woolorama.com.au/custom/public/images/north-metro-tafe-logo.jpg)"
marp: true
theme: nmt-theme
---

<!-- _class: lead -->
# ICTSS00120 - <br> Artificial Intelligence Skill Set
## Week 9: Deep Learning Foundations - Introduction to Neural Networks

Lecturer: Jordan Hill

<style scoped>
  p {
    text-align: right;
}
</style>

![bg blur:1px contrast:90%](https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/afa6e72c-8df3-4d8a-aba0-d3d8c0404e28/dgeejdo-2636687f-dce2-4182-9061-f44831261ec0.jpg/v1/fill/w_922,h_866,q_70,strp/ai_gaze_by_roguedawg777_dgeejdo-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9OTYyIiwicGF0aCI6IlwvZlwvYWZhNmU3MmMtOGRmMy00ZDhhLWFiYTAtZDNkOGMwNDA0ZTI4XC9kZ2VlamRvLTI2MzY2ODdmLWRjZTItNDE4Mi05MDYxLWY0NDgzMTI2MWVjMC5qcGciLCJ3aWR0aCI6Ijw9MTAyNCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.RSVY32rSmLLuV0Vdf0MN9WCvGH6IeAqAkeZPsUrWwqk)

---

## Learning Objectives

- Understand the basics of neural networks.
- Explore the concept of hidden layers in neural networks.
- Learn about training, test, and validation loops for deep learning.
- Understand the Stochastic Gradient Descent (SGD) and Backpropagation algorithms.
- Introduction to Feed Forward Neural Networks (FNN) and Convolutional Neural Networks (CNN).

---

## Introduction to Neural Networks

### What is a Neural Network?

- A neural network is a computational model inspired by the way biological neural networks in the human brain process information.
- Composed of interconnected nodes, or neurons, that work together to solve specific problems.
- Typically organized into layers: input layer, hidden layers, and output layer.

---

## Hidden Layers

### Concept of Hidden Layers

- **Hidden Layers**: These are layers between the input and output layers where computation is performed.
- Each hidden layer applies transformations to the input data to extract features and patterns.

**Key Points**:
- More hidden layers can represent more complex functions, but may also require more computational power and data to train effectively.
- Typically use activation functions like ReLU to introduce non-linearity.

---

## Training, Test, and Validation Loops

### Training, Validation, and Testing in Deep Learning

1. **Training Loop**:
   - Model learns from the training data.
   - Updates weights using backpropagation and optimization algorithms like Stochastic Gradient Descent (SGD).

2. **Validation Loop**:
   - Evaluates the model's performance on validation data not seen during training.
   - Helps in tuning hyperparameters and preventing overfitting.

3. **Test Loop**:
   - Assess the final model performance on completely unseen data.
   - Provides an unbiased evaluation of the model's effectiveness.

---

## Stochastic Gradient Descent (SGD)

### Introduction to SGD

- **SGD**: An optimization algorithm used to minimize the cost function in neural networks.
- **Process**:
  1. Start with initial weights.
  2. Calculate the gradient of the cost function.
  3. Update weights in the opposite direction of the gradient.
  4. Repeat until convergence.

**Key Advantages**:
- Computationally efficient.
- Capable of handling large datasets effectively.

---

## Backpropagation

### Backpropagation of Error

- **Backpropagation**: Algorithm used for training neural networks by propagating the error backward through the network.
- **Process**:
  1. Forward Pass: Compute the output and loss.
  2. Backward Pass: Compute the gradients of the loss with respect to each weight using the chain rule.
  3. Update Weights: Adjust the weights using the gradient descent algorithm.

**Benefits**:
- Helps in minimizing the loss function.
- Efficiently optimizes neural network parameters.

---

## Feed Forward Neural Networks (FNN)

### Introduction to FNN

- **FNN**: Simplest type of artificial neural network where connections between nodes do not form cycles.
- **Structure**:
  - Composed of an input layer, multiple hidden layers, and an output layer.
  - Each neuron in one layer is fully connected to neurons in the next layer.

**Applications**:
- Mainly used for tasks requiring pattern recognition, such as image and speech recognition.

---

## Convolutional Neural Networks (CNN)

### Introduction to CNN

- **CNN**: Specialized neural network designed for processing structured grid data like images.
- **Components**:
  - **Convolutional Layers**: Apply convolution operations to extract features.
  - **Pooling Layers**: Reduce the dimensionality of feature maps.
  - **Fully Connected Layers**: Perform high-level reasoning and classification.

**Advantages**:
- Highly effective at capturing spatial hierarchies in data.
- Significantly reduces the number of parameters compared to traditional FNNs.

---

## Summary and Q&A

### Summary:

- Introduced the basic concepts of neural networks and their components.
- Explained hidden layers, training, validation, and testing loops.
- Covered key algorithms like Stochastic Gradient Descent and Backpropagation.
- Introduced types of neural networks: Feed Forward Neural Networks (FNN) and Convolutional Neural Networks (CNN).

### Q&A:

- Any questions about today's topics?
- How would you apply these concepts in different real-world scenarios?

Contact: jordan.hill@nmtafe.wa.edu.au

---

## Homework

**Next Week**: 
- Explore advanced neural network architectures.
- Delve deeper into CNNs and Recurrent Neural Networks (RNNs).

### Tasks:
1. Review the key concepts covered today.
2. Read about the applications of CNNs in image recognition.
3. Watch the linked videos on neural networks and backpropagation.
