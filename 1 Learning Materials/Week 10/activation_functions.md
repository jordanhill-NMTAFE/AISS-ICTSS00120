# Activation Functions in Machine Learning

Activation functions in machine learning and artificial intelligence are mathematical equations that determine the output of a neural network model's node (or "neuron"). They are important because they provide non-linear properties to the network, allowing it to learn complex data representations. Here is a list of commonly used activation functions:

1. **Linear or Identity Function:**
   - Equation: $$f(x) = x$$
   - Characteristics: The output is proportional to the input.

2. **Binary Step Function:**
   - Equation: $$f(x) = \begin{cases} 
   1 & \text{if } x \ge 0 \\
   0 & \text{otherwise} 
   \end{cases}$$
   - Characteristics: The neuron is activated if the input is above a certain threshold and not activated otherwise.

3. **Sigmoid or Logistic Function:**
   - Equation: $$f(x) = \frac{1}{1 + e^{-x}}$$
   - Characteristics: The output is in the range (0, 1). It's a smooth S-shaped curve.

4. **Hyperbolic Tangent (tanh) Function:**
   - Equation: $$f(x) = \frac{e^x - e^{-x}}{e^x + e^{-x}}$$ or $$\left(\frac{2}{1 + e^{-2x}}\right) - 1$$
   - Characteristics: Outputs range from (-1,1), which is zero-centered.

5. **Rectified Linear Unit (ReLU) Function:**
   - Equation: $$f(x) = \max(0, x)$$
   - Characteristics: It gives an output of x if x is positive and 0 otherwise. It has become one of the most widely used due to its computational efficiency.

   ![relu](https://developers.google.com/static/machine-learning/glossary/images/relu.svg)

6. **Leaky Rectified Linear Unit (Leaky ReLU):**
   - Equation: $$f(x) = \begin{cases} 
   x & \text{if } x > 0 \\
   \alpha x & \text{otherwise} 
   \end{cases}$$ (where α is a small constant)
   - Characteristics: Similar to ReLU but allows a small, non-zero gradient when the unit is not active.

7. **Parametric Rectified Linear Unit (PReLU):**
   - Equation: $$f(x) = \begin{cases} 
   x & \text{if } x > 0 \\
   \alpha x & \text{otherwise} 
   \end{cases}$$ (where α is a learned parameter)
   - Characteristics: Like Leaky ReLU, but the coefficient of leakage is learned during training.

8. **Exponential Linear Unit (ELU):**
   - Equation: $$f(x) = \begin{cases} 
   x & \text{if } x \geq 0 \\
   \alpha(e^x - 1) & \text{otherwise} 
   \end{cases}$$ (where α is a hyperparameter)
   - Characteristics: Similar to ReLUs, but the negative values can also contribute to the activation, which can help mitigate the vanishing gradient problem.

9. **Scaled Exponential Linear Units (SELU):**
   - Equation: $$f(x) = \begin{cases} 
   \lambda x & \text{if } x > 0 \\
   \lambda \alpha(e^x - 1) & \text{otherwise} 
   \end{cases}$$ (where λ and α are predefined constants)
   - Characteristics: Self-normalizing property leading to a mean of 0 and variance of 1.

10. **Softmax Function:**
    - Equation: $$f(x_i) = \frac{e^{x_i}}{\sum_{j=1}^{n} e^{x_j}}$$
    - Characteristics: The outputs are normalized to a probability distribution over predicted output classes, useful for multi-class classification.

11. **Softsign Function:**
    - Equation: $$f(x) = \frac{x}{1 + |x|}$$
    - Characteristics: Similar to the tanh function, but softer transitions.

12. **Swish Function:**
    - Equation: $$f(x) = x \cdot \text{sigmoid}(\beta x)$$ (where β is a learnable parameter or a fixed value)
    - Characteristics: An alternative to ReLU, providing a smoother function with non-monotonicity.

13. **Hard Sigmoid:**
    - Equation: $$f(x) = \text{clip}(0.2x + 0.5, 0, 1)$$
    - Characteristics: A piecewise-linear approximation of the sigmoid function.