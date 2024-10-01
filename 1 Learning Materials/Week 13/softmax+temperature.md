```python
import numpy as np
import matplotlib.pyplot as plt

# Define logits
logits = np.array([2.0, 1.0, 0.1])

# Define a function to calculate softmax with temperature scaling
def softmax(logits, temperature=1.0):
    scaled_logits = logits / temperature
    exp_scaled_logits = np.exp(scaled_logits)
    return exp_scaled_logits / np.sum(exp_scaled_logits)

# Define temperatures to visualize the effect
temperatures = [0.5, 1.0, 2.0]

# Calculate softmax probabilities for each temperature
softmax_probs = [softmax(logits, T) for T in temperatures]

# Plot the results
labels = ['Logit 1', 'Logit 2', 'Logit 3']
x = np.arange(len(labels))

fig, ax = plt.subplots()
width = 0.2  # Width of the bars

for i, T in enumerate(temperatures):
    ax.bar(x + i * width, softmax_probs[i], width, label=f'Temperature = {T}')

# Add labels, title, and legend
ax.set_ylabel('Probability')
ax.set_title('Softmax Probabilities with Different Temperatures')
ax.set_xticks(x + width / len(temperatures))
ax.set_xticklabels(labels)
ax.legend()

plt.show()
```

### Explanation of the Code

1. **Define Logits**:
    - A simple set of logits `[2.0, 1.0, 0.1]`.

2. **Softmax Function with Temperature Scaling**:
    - The `softmax` function takes logits and a temperature parameter to compute the probability distribution.

3. **Define Temperatures**:
    - We use three different temperatures for visualization: `0.5`, `1.0`, and `2.0`.

4. **Calculate Softmax Probabilities for Each Temperature**:
    - The softmax probabilities are computed for the defined temperatures.

5. **Plotting**:
    - The code uses `matplotlib` to visualize the softmax probabilities as bar charts for different temperatures.

### Visualization Output

Running this code will produce a bar chart that compares the softmax probabilities for different temperature settings. This visualization will help you see how lower temperatures sharpen the distribution, making the model more confident in its prediction, while higher temperatures flatten the distribution, indicating more uncertainty.

Here’s an example of what you should expect:

- **Lower Temperature (T = 0.5)**: Most of the probability mass is concentrated on the highest logit.
- **Medium Temperature (T = 1.0)**: A more balanced distribution where differences between logits are apparent.
- **Higher Temperature (T = 2.0)**: The probability distribution is more spread out, indicating less confidence in any particular class.