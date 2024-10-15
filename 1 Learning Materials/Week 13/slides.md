---
footer: "![height:50px](https://www.woolorama.com.au/custom/public/images/north-metro-tafe-logo.jpg)"
marp: true
theme: nmt-theme
---

<!-- _class: lead -->

![bg](https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/afa6e72c-8df3-4d8a-aba0-d3d8c0404e28/dgeejdo-2636687f-dce2-4182-9061-f44831261ec0.jpg/v1/fill/w_922,h_866,q_70,strp/ai_gaze_by_roguedawg777_dgeejdo-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9OTYyIiwicGF0aCI6IlwvZlwvYWZhNmU3MmMtOGRmMy00ZDhhLWFiYTAtZDNkOGMwNDA0ZTI4XC9kZ2VlamRvLTI2MzY2ODdmLWRjZTItNDE4Mi05MDYxLWY0NDgzMTI2MWVjMC5qcGciLCJ3aWR0aCI6Ijw9MTAyNCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.RSVY32rSmLLuV0Vdf0MN9WCvGH6IeAqAkeZPsUrWwqk)

# Week 13: Introduction to Language Models
## Lecturer: Jordan Hill

- Understand foundational concepts of language models.
- Explore attention mechanisms in deep learning.
- Hands-on workshop on building GPT-2 from scratch.

---

## Learning Objectives

- **Grasp the fundamentals of modern language models.**
- **Introduce the core ideas of the attention mechanism step by step.**
- **Gain practical experience with GPT architectures by building GPT-2.**
- **Understand LoRA and its role in fine-tuning large language models.**
- **Discuss challenges associated with model sizes and explore solutions.**

---

## Introduction to Language Models

- **Language Models (LMs)**: Models that learn the probability of sequences of words.
- **Popular Models**: LLaMA, GPT-2, GPT-3.
- **Applications**: Text generation, translation, sentiment analysis.

Language models enable machines to understand and generate human language by predicting the next word in a sequence.

---

## The Need for Attention

- Traditional models struggle with long sequences and context.
- **Challenge**: Maintaining relevant information over long distances in text.
- **Solution**: Introduce mechanisms that allow models to focus on important parts of the input.

---

## Introducing the Attention Mechanism

### Intuition Behind Attention

- Mimics cognitive attention in humans.
- Allows models to dynamically highlight relevant information.
- Improves handling of dependencies in sequences.

---

## Core Concepts of Attention

### Step 1: Understanding Key Components

- **Query (Q)**: Represents the current word we're focusing on.
- **Key (K)**: Represents all words in the input sequence.
- **Value (V)**: Holds the information of each word.

---

### Step 2: Calculating Attention Scores

- **Attention Score**: Measures the similarity between the Query and each Key.
- Computed using dot products and scaling factors.
- **Softmax Function**: Converts scores into probabilities.

---

### Step 3: Generating the Weighted Sum

- **Weighted Sum**: Combines the Values, weighted by the attention scores.
- Emphasizes important words while diminishing less relevant ones.
- Resulting vector captures context relevant to the Query.

---

## Types of Attention Mechanisms

### Self-Attention

- **Definition**: The model attends to different positions within the same sequence.
- **Purpose**: Captures dependencies between all words in the input.

### Cross-Attention

- **Definition**: The model attends to a different sequence (e.g., during translation).
- **Purpose**: Aligns and relates information from two distinct sequences.

---

## Visualization of the Attention Mechanism

![height:20em width:45em](https://www.comet.com/site/wp-content/uploads/2023/07/1.gif)
<!-- 
- **Visual Aid**: Diagrams help illustrate how attention weights are distributed.
- Shows how each word in a sentence influences the encoding of other words.
 -->

---
<div style="display:flex; justify-content: center;">
<iframe width="100%" height="580" src="https://www.youtube.com/embed/eMlx5fFNoYc" title="Attention Mechanism" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
</div>

<!-- 
- **Video Content**: Deep dive into how attention mechanisms work.
- **Recommendation**: Watch to reinforce the concepts introduced. 
-->

---

## Benefits of the Attention Mechanism

- **Improved Context Understanding**: Models can focus on relevant parts of the input.
- **Handling Long Sequences**: Effectively manages dependencies over long distances.
- **Parallelization**: Allows for more efficient training compared to recurrent models.

---

## Applications of Attention

- **Natural Language Processing**: Machine translation, text summarization.
- **Computer Vision**: Image captioning, visual question answering.
- **Speech Recognition**: Focuses on relevant segments of audio input.

---


<div style="display:flex; justify-content: center;">
<iframe width="100%" height="580" src="https://www.youtube.com/embed/kCc8FmEb1nY" title="Building GPT-2 from Scratch" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
</div>
<!-- 
- **Demo code and materials provided**: Follow along with the resources to implement GPT-2.
-->

---

## Activities

1. **Introduction to GPT-2 Architecture**

   - Understand how transformers utilize attention mechanisms.
   - Explore the structure of GPT-2 and its components.

2. **Code-Along Session**

   - Follow along with the coding demonstration.
   - Build the model step by step.

3. **Experimentation**

   - Generate text samples.
   - Adjust parameters to see their effects.

---

## Key Concepts of GPT-2

- **Transformer Architecture**: Relies heavily on self-attention mechanisms.
- **Layer Stacking**: Multiple layers allow for capturing complex patterns.
- **Fine-Tuning**: Customize the model for specific tasks or styles.

By constructing GPT-2, you'll gain hands-on experience with attention mechanisms in practice.

---
## Introducing LoRA: Low-Rank Adaptation

- **What is LoRA?**: A technique for efficient fine-tuning of large language models.
- **Purpose**: Reduces computational requirements by adapting only a subset of parameters.
- **Benefits**:
  - Faster training times.
  - Lower memory consumption.
  - Enables fine-tuning on smaller datasets.

LoRA allows us to fine-tune large models like GPT-2 with minimal resources by updating low-rank matrices instead of the entire model.
[Example Hugging Face](https://github.com/huggingface/huggingface-llama-recipes/blob/main/fine_tune/peft_finetuning.py)

---
## Fine-tuning Large Language Models

- **Why Fine-tune?**: Tailor pre-trained models to specific tasks or domains.
- **Methods**:
  - Full model fine-tuning.
  - **LoRA**: Fine-tune with low-rank adaptations.
  - Parameter-efficient tuning techniques.
- **Considerations**:
  - Data availability and quality.
  - Computational resources.
  - Overfitting risks.

Fine-tuning enhances model performance on specific tasks by adapting it with relevant data.

---
## Model Sizes

- **[Model Scale](https://github.com/huggingface/huggingface-llama-recipes?tab=readme-ov-file#local-inference)**:
  - Small, Medium, Large, and Extra-Large models.

---

## Challenges & Solutions

- **Challenges**:
  - **Computational Resources**: Larger models require more memory and processing power.
  - **Training Time**: Increased time for training and fine-tuning.
  - **Deployment**: Difficulties in deploying large models on standard hardware.
  - **Energy Consumption**: Higher energy costs and environmental impact.
- **Solutions**:
  - **Model Compression**: Techniques like pruning and quantization.
  - **Efficient Fine-tuning**: Methods like LoRA and Adapter Layers.
  - **Distributed Computing**: Leveraging multiple machines or cloud resources.

Understanding the trade-offs of model sizes helps in making informed decisions for practical applications.

---

## Summary and Q&A

### Today we covered:

- Fundamentals of language models.
- Core ideas of the attention mechanism.
- Practical implementation of GPT-2.

**Reflection Questions**:

- How does the attention mechanism improve language model performance?
- What are the potential challenges when implementing attention-based models?

Contact: Jordan.Hill@nmtafe.wa.edu.au

---

## Looking Ahead

- **Next Topic**: On the Horizon: Vision Transformers (ViT)
- **Preparation**: Explore how transformers are applied in computer vision.

Continue expanding your knowledge by seeing how attention mechanisms revolutionize different domains.
