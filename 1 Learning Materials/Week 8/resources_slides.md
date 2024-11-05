---
footer: "![height:50px](https://www.woolorama.com.au/custom/public/images/north-metro-tafe-logo.jpg)"
marp: true
theme: nmt-theme
# Session 8: Homework Resources Introduction & Key Concepts

---

<!-- _class: lead -->
# ICTSS00120 - <br> Artificial Intelligence Skill Set
![bg blur:1px contrast:90%](https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/afa6e72c-8df3-4d8a-aba0-d3d8c0404e28/dgeejdo-2636687f-dce2-4182-9061-f44831261ec0.jpg/v1/fill/w_922,h_866,q_70,strp/ai_gaze_by_roguedawg777_dgeejdo-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9OTYyIiwicGF0aCI6IlwvZlwvYWZhNmU3MmMtOGRmMy00ZDhhLWFiYTAtZDNkOGMwNDA0ZTI4XC9kZ2VlamRvLTI2MzY2ODdmLWRjZTItNDE4Mi05MDYxLWY0NDgzMTI2MWVjMC5qcGciLCJ3aWR0aCI6Ijw9MTAyNCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.RSVY32rSmLLuV0Vdf0MN9WCvGH6IeAqAkeZPsUrWwqk)

## Week 8: Homework Resources Introduction & Key Concepts

Lecturer: Jordan Hill

<style scoped>
p {
  padding:0.25em;
  padding-right:1em;
  text-align: right;
}
</style>

---

## Learning Objectives

- Introduction to key resources for understanding machine learning concepts.
- Detailed explanation of Backpropagation of Error.
- Understanding Gradient Descent.
- Introduction to Gradient Boosting.
- Utilize specific video resources to reinforce learning.

---

## Resources Introduction

Useful resources for this week:
1. **Videos on Gradient Descent and Backpropagation**:
   - [Gradient Descent, Step-by-Step](https://www.youtube.com/watch?v=sDv4f4s2SB8)
   - [Gradient Descent, how neural networks learn](https://www.youtube.com/watch?v=IHZwWFHWa-w)
   - [Backpropagation](https://www.youtube.com/watch?v=IN2XmBhILt4&t=0s)
   - [But what is a neural network?](https://www.youtube.com/watch?v=aircAruvnKk)
   - [What is backpropagation really doing?](https://www.youtube.com/watch?v=Ilg3gGewQ5U)
---
## Gradient Descent Introduction

**Definition**:
- Gradient Descent is an optimization algorithm used to minimize the cost function in a machine learning model.

**Purpose**:
- To find the parameters (coefficients) of a model that minimize the cost function.

**Steps**:
1. Start with initial parameter values.
2. Compute the gradient (partial derivatives) of the cost function.
3. Update the parameters in the opposite direction of the gradient.
4. Repeat until convergence.

---

## Video Resource: Gradient Descent, Step-by-Step

**Video**:
[Gradient Descent, Step-by-Step](https://www.youtube.com/watch?v=sDv4f4s2SB8)

**Key Takeaways**:
- Explains gradient descent with a practical example.
- Walks through the algorithm step-by-step.
- Demonstrates how gradients are computed and used for parameter updates.

---

## Video Resource: Gradient Descent, how neural networks learn

**Video**:
[Gradient Descent, how neural networks learn](https://www.youtube.com/watch?v=IHZwWFHWa-w)

**Key Points**:
- Detailed explanation of gradient descent in the context of neural networks.
- Illustrates the learning process and parameter updates over iterations.
- Highlights the role of gradients in adjusting weights and biases.

---

## Backpropagation of Error

**Definition**:
- Backpropagation is an algorithm used for training neural networks, enabling them to learn from errors.

**Purpose**:
- To minimize the loss function by adjusting weights through gradient descent.

**Process**:
1. Forward Pass: Compute outputs and loss.
2. Backward Pass: Compute gradients of the loss with respect to weights using the chain rule.
3. Update weights using gradients.

![bg right:40% 90%](https://media.geeksforgeeks.org/wp-content/uploads/20240217152156/Frame-13.png)

---

## Video Resource: Backpropagation

**Video**:
[Backpropagation](https://www.youtube.com/watch?v=IN2XmBhILt4&t=0s)

**Key Takeaways**:
- Explanation of backpropagation algorithm.
- Shows how errors are propagated backward through the network.
- Practical examples to illustrate gradient calculation and weight updates.

---

## Video Resource: But what is a neural network?

**Video**:
[But what is a neural network?](https://www.youtube.com/watch?v=aircAruvnKk)

**Highlights**:
- Provides a conceptual overview of neural networks.
- Explains how neurons and layers work together to process inputs.
- Sets the stage for understanding backpropagation and gradient descent in deeper networks.

---

## Video Resource: What is backpropagation really doing?

**Video**:
[What is backpropagation really doing?](https://www.youtube.com/watch?v=Ilg3gGewQ5U)

**Key Points**:
- Delves into the mathematical foundation of backpropagation.
- Clarifies common misunderstandings about the algorithm.
- Provides a deeper insight into how gradients are calculated and used.

---

## Gradient Boosting

**Definition**:
- Gradient Boosting is an ensemble learning technique that builds a series of models, each correcting errors of the previous ones.

**Purpose**:
- To improve predictive accuracy by combining weak learners (usually decision trees).

**Steps**:
1. Fit a model to the data.
2. Compute the residual errors.
3. Fit a new model to the residuals.
4. Repeat the process to combine all models.

![bg right:30% fit](https://miro.medium.com/v2/resize:fit:1400/1*OZPOQUKiaVmZOEMm_-8iYA.png)

---

## Summary and Q&A

**Summary**:
- Introduced key resources and videos for understanding Gradient Descent and Backpropagation.
- Explained the concepts and algorithms of Gradient Descent and Backpropagation.
- Introduced Gradient Boosting as a powerful ensemble technique.

**Q&A**:
- Any questions about today's topics?
- How would you apply these concepts to real-world problems?

Contact: jordan.hill@nmtafe.wa.edu.au

![bg blur:1px contrast:90%](https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/afa6e72c-8df3-4d8a-aba0-d3d8c0404e28/dgeejdo-2636687f-dce2-4182-9061-f44831261ec0.jpg/v1/fill/w_922,h_866,q_70,strp/ai_gaze_by_roguedawg777_dgeejdo-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9OTYyIiwicGF0aCI6IlwvZlwvYWZhNmU3MmMtOGRmMy00ZDhhLWFiYTAtZDNkOGMwNDA0ZTI4XC9kZ2VlamRvLTI2MzY2ODdmLWRjZTItNDE4Mi05MDYxLWY0NDgzMTI2MWVjMC5qcGciLCJ3aWR0aCI6Ijw9MTAyNCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.RSVY32rSmLLuV0Vdf0MN9WCvGH6IeAqAkeZPsUrWwqk)

---

## Homework

**Next Week**: Continue exploring deep learning foundations and advanced optimization techniques.

1. Watch the linked videos thoroughly.
2. Read on the concept of Convolutional Neural Networks (CNNs) for the next session.
3. Prepare questions based on the videos and reading materials.

![bg blur:1px contrast:90%](https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/afa6e72c-8df3-4d8a-aba0-d3d8c0404e28/dgeejdo-2636687f-dce2-4182-9061-f44831261ec0.jpg/v1/fill/w_922,h_866,q_70,strp/ai_gaze_by_roguedawg777_dgeejdo-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9OTYyIiwicGF0aCI6IlwvZlwvYWZhNmU3MmMtOGRmMy00ZDhhLWFiYTAtZDNkOGMwNDA0ZTI4XC9kZ2VlamRvLTI2MzY2ODdmLWRjZTItNDE4Mi05MDYxLWY0NDgzMTI2MWVjMC5qcGciLCJ3aWR0aCI6Ijw9MTAyNCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.RSVY32rSmLLuV0Vdf0MN9WCvGH6IeAqAkeZPsUrWwqk)