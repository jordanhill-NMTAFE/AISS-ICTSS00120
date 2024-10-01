---
footer: "![height:50px](images/footer.png)"
marp: true
theme: nmt-theme
---

<!-- _class: lead -->
# ICTSS00120 - <br> Artificial Intelligence Skill Set
![bg blur:1px contrast:90%](images/ai-gaze.jpg)

## Week 11: Introduction to Transformers and Hugging Face

Lecturer: Jordan Hill
Guest Lecturer: Philipp Bayer

<style scoped>
p {
  text-align: right;
}
</style>

---

## Learning Objectives

- Understand the basic concepts of Transformer models.
- Explore the architecture and applications of Transformers.
- Introduction to Hugging Face and its tools.
- Learn how to get started with Transformers using Hugging Face.

---

## What is a Transformer?



![bg](https://substackcdn.com/image/fetch/w_1456,c_limit,f_webp,q_auto:good,fl_progressive:steep/https%3A%2F%2Fbucketeer-e05bbc84-baa3-437e-9518-adb32be77984.s3.amazonaws.com%2Fpublic%2Fimages%2F7485933d-06de-47d1-a3f1-734b0d379df4_1200x630.jpeg)

---

## What is a Transformer?




### Overview

- **Transformer**: A deep learning model designed for handling sequential data, introduced in the paper *"Attention is All You Need"* by Vaswani et al.
- **Core Component**: Attention mechanism which allows the model to focus on different parts of the input sequence.


![bg right:40% fit](https://miro.medium.com/v2/resize:fit:1400/1*BHzGVskWGS_3jEcYYi6miQ.png)

---

## Transformer Architecture

### Key Components

- **Encoder-Decoder Structure**:
  - **Encoder**: Processes the input data and generates a representation.
  - **Decoder**: Uses the representation from the encoder to generate the output.

- **Attention Mechanisms**:
  - **Self-Attention**: Allows the model to weigh the importance of different words in a sentence relative to each other.
  - **Multi-Head Attention**: Multiple attention mechanisms run in parallel to capture different aspects of the data.

![bg fit](https://substackcdn.com/image/fetch/w_1456,c_limit,f_webp,q_auto:good,fl_progressive:steep/https%3A%2F%2Fbucketeer-e05bbc84-baa3-437e-9518-adb32be77984.s3.amazonaws.com%2Fpublic%2Fimages%2F7485933d-06de-47d1-a3f1-734b0d379df4_1200x630.jpeg)

---

<div style="display:flex; justify-content: center;">
<iframe width="100%" height="580" src="https://www.youtube.com/embed/wjZofJX0v4M" title="But what is a GPT?  Visual intro to transformers | Chapter 5, Deep Learning" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
</div>

---


## Applications of Transformers

### Real-World Use Cases

- **Natural Language Processing (NLP)**:
  - Machine Translation
  - Text Summarization
  - Question Answering
  - Sentiment Analysis

- **Other Domains**:
  - Protein Folding
  - Image Recognition (Vision Transformers - ViTs)
  - DNA Sequence Analysis


---

## Hugging Face!

![bg right:40% 90%](https://huggingface.co/front/assets/huggingface_logo-noborder.svg)

### Overview

- **Hugging Face**: An open-source AI research organization known for its NLP library called Transformers.
- **Transformers Library**: Provides pre-trained models and tools to easily integrate transformers into various applications.

---

## Introduction to Hugging Face

### Key Features

- **Model Hub**: Repository of pre-trained models.
- **Datasets**: Access to a wide range of datasets for different tasks.
- **Inference API**: Easily deploy models for prediction.

![bg right:40% 90%](https://huggingface.co/front/assets/huggingface_logo-noborder.svg)


---

## Getting Started with Hugging Face

### Step-by-Step Guide

1. **Install the Transformers Library**:
   ```bash
   pip install transformers
   ```

2. **Import and Load a Pre-trained Model**:
   ```python
   from transformers import pipeline

   # Load a pre-trained model for sentiment analysis
   classifier = pipeline("sentiment-analysis")
   ```
---
## Getting Started with Hugging Face


3. **Make Predictions**:
   ```python
   result = classifier("I love using the Hugging Face library!")
   print(result)
   ```

4. **Explore the Model Hub**:
   - Visit [Hugging Face Model Hub](https://huggingface.co/models) to find models for different tasks.


---

## Lab: Hands-On with Hugging Face

### Objectives

- **Explore the Hugging Face Model Hub**.
- **Load and Fine-tune a Pre-trained Transformer Model**.
- **Evaluate the Model on a Custom Dataset**.

---
## Lab: Hands-On with Hugging Face


### Steps

1. **Explore the Model Hub**:
   - Find a model suitable for your task.

2. **Load the Model and Tokenizer**:
   ```python
   from transformers import AutoTokenizer, AutoModelForSequenceClassification

   model_name = "bert-base-uncased"
   tokenizer = AutoTokenizer.from_pretrained(model_name)
   model = AutoModelForSequenceClassification.from_pretrained(model_name)
   ```

---
## Lab: Hands-On with Hugging Face


3. **Fine-Tune the Model**:
   - Use the `Trainer` API to fine-tune the model on your dataset.

4. **Evaluate the Model**:
   - Use the evaluation metrics to assess model performance.


---

## Summary and Q&A

### Summary:
- Introduction to Transformer models and their architecture.
- Overview of Hugging Face and its tools.
- Hands-on guide to getting started with Transformers using Hugging Face.
- Application examples in NLP and other domains like DNA analysis in marine biology.

### Q&A:
- Any questions about today's topics?

Contact: jordan.hill@nmtafe.wa.edu.au

![bg blur:1px contrast:90%](images/ai-gaze.jpg)

---

## Homework

**Next Week**: Cover the CRISP-DM process for machine learning projects.

### Tasks:
1. Review the key concepts covered today.
2. Explore the Hugging Face Model Hub and try loading different models.
3. Watch related videos on Transformers and their applications.
4. Prepare questions for the guest lecture by Philipp Bayer.

![bg blur:1px contrast:90%](images/ai-gaze.jpg)