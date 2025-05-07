---
footer: "![height:50px](footer.png)"
marp: true
theme: nmt-theme
# title: Session 12: Introduction to Transformers and Hugging Face
---

<!-- _class: lead -->
# ICTSS00120 - <br> Artificial Intelligence Skill Set
![bg blur:1px contrast:90%](https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/afa6e72c-8df3-4d8a-aba0-d3d8c0404e28/dgeejdo-2636687f-dce2-4182-9061-f44831261ec0.jpg/v1/fill/w_922,h_866,q_70,strp/ai_gaze_by_roguedawg777_dgeejdo-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9OTYyIiwicGF0aCI6IlwvZlwvYWZhNmU3MmMtOGRmMy00ZDhhLWFiYTAtZDNkOGMwNDA0ZTI4XC9kZ2VlamRvLTI2MzY2ODdmLWRjZTItNDE4Mi05MDYxLWY0NDgzMTI2MWVjMC5qcGciLCJ3aWR0aCI6Ijw9MTAyNCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.RSVY32rSmLLuV0Vdf0MN9WCvGH6IeAqAkeZPsUrWwqk)

## Session 12: Introduction to Transformers and Hugging Face

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


# That is an encoder-decoder transformer

![bg right:40% fit](https://miro.medium.com/v2/resize:fit:1400/1*BHzGVskWGS_3jEcYYi6miQ.png)


---

## Most LLMs use self-attention 

# This is to say Decoder-only

### What??

![bg right:30% 60%](https://i.sstatic.net/bWnx0.png)


Reference: this [stackexchange response](https://ai.stackexchange.com/questions/40179/how-does-the-decoder-only-transformer-architecture-work) is actually really good summary!

We'll talk more about this attention stuff next week...

---

![bg right:65% fit](https://i.sstatic.net/bWnx0.png)

![bg 95%](https://i.sstatic.net/wH0ra.png)

This is a **Decoder-Only** model.

<br>

These simply pass all the information one way through multiple blocks (Attention & FNN)

You just start with the input sequence (tokenized/embedded) and get the next token out the other end.

---

Back to the encoder-decoder...

These 'pay attention' to the input and another sequence and uses the other sequence (Output embedding) to influence **the logits** / Next token.

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

<table>
  <tr>
    <th>Domain</th>
    <th>Applications</th>
  </tr>
  <tr>
    <td><strong>Natural Language Processing (NLP)</strong></td>
    <td>• Machine Translation<br>• Text Summarization<br>• Question Answering<br>• Sentiment Analysis</td>
  </tr>
  <tr>
    <td><strong>New Domains</strong></td>
    <td>• Protein Folding (AlphaFold) — This is a really big deal!<br>• Image Recognition (Vision Transformers - ViTs)<br>• DNA Sequence Analysis</td>
    
  </tr>
</table>


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


## Exploring Hugging Face

### First Stop [The Documentation](https://huggingface.co/docs)

A huge ecosystem of opensource client libraries! 
(Hint: the source code is a massive resource for learning more)

### Next [Huggingface Learn](https://huggingface.co/learn)

### Next Stop [MODELS!](https://huggingface.co/models)

### Finally, [Datasets](https://huggingface.co/datasets) <br> ...also [Datasets (the client library)](https://huggingface.co/docs/datasets/main/en/index)

![bg right:40% 90%](https://huggingface.co/front/assets/huggingface_logo-noborder.svg)

---


## More than utility

#### Huggingface has more than directly useful resources—it has a community!

### [Daily Papers](https://huggingface.co/papers)

### [Blog Articles & News](https://huggingface.co/blog)

### A new feature is also [Spaces](https://huggingface.co/spaces) 
### Check out this example [app](https://huggingface.co/spaces/Qwen/Qwen3-Demo)

![bg right:40% 90%](https://huggingface.co/front/assets/huggingface_logo-noborder.svg)

---

## Getting Started with Hugging Face

### The Transformers library gives us access to a huge library of open source model architectures

 **Install the Transformers Library (pre-installed on Kaggle)**:
   ```bash
   pip install transformers
   ```

### It makes it really easy to work with models locally

---
## Let's Start with a simple one

   ```python
   from transformers import pipeline

   # Load a pre-trained model for sentiment analysis
   classifier = pipeline("sentiment-analysis")
   ```

**Make Predictions**:
   ```python
   result = classifier("I love using the Hugging Face library!")
   print(result)
   ```

---

## A bit more fun

   ```python
      import torch
      from transformers import pipeline

      model_id = "meta-llama/Llama-3.2-1B"

      pipe = pipeline(
         "text-generation", 
         model=model_id, 
         torch_dtype=torch.bfloat16, 
         device_map="auto"
      )

      pipe("What is the meaning of life?")
   ```

### What does your model say is the meaning of life?


---

# Break

## Let's take a break before we dive into Training using the transformers library

<!-- _class: lead -->


---

## Intro to Transformers

### Getting Started:

### [1. Huggingface Transformers Quicktour](https://huggingface.co/docs/transformers/quicktour)

### There are only really two kinds of things we might do with a pre-trained model:

### Either **Inference** or **Training**

<br>

**The Trainer API makes it really easy to train LLMs** 

*But it also hides a lot of complexity from you!*


---

## Fine-tuning a pretrained model

### Pre training is incredibly expensive and it is unlikely you will get the opportunity to do any pre-training on LLMs unless you work for one of the BIG AI labs.

### **Post-training is different though...**

#### We are going to work through [chapter 3](https://huggingface.co/learn/llm-course/chapter3/1?fw=pt) of the [LLM course](https://huggingface.co/learn/llm-course/chapter1/1) on Huggingface 

---

## Let's not forget **[TRL](https://huggingface.co/docs/trl/en/index)**

### The Trainer API makes it so easy to do Supervised Fine-tuning!

```python
   from datasets import load_dataset
   from trl import SFTConfig, SFTTrainer

   dataset = load_dataset("stanfordnlp/imdb", split="train")

   training_args = SFTConfig(
      max_length=512,
      output_dir="/tmp",
   )
   trainer = SFTTrainer(
      "facebook/opt-350m",
      train_dataset=dataset,
      args=training_args,
   )
   trainer.train()

```

---

## Extension: TRL PPO with GPT-2 — Huh what is that?


### Example: Look — copy — check
[Lets look at this example notebook:](https://github.com/huggingface/trl/blob/main/examples/notebooks/gpt2-sentiment-control.ipynb)


<div style="text-align: center;">
  <img height="400px" src="https://camo.githubusercontent.com/e7a0a7d6aae554ba96bd89145ff4e1736148e70b583aebeefe16f926dffcf714/68747470733a2f2f68756767696e67666163652e636f2f64617461736574732f74726c2d696e7465726e616c2d74657374696e672f6578616d706c652d696d616765732f7265736f6c76652f6d61696e2f696d616765732f677074322d6374726c2d747261696e696e672d73657475702e706e67" />
</div>

---


We will use it to 

3. **Fine-Tune the Model (using PPO!)**:
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

![bg blur:1px contrast:90%](https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/afa6e72c-8df3-4d8a-aba0-d3d8c0404e28/dgeejdo-2636687f-dce2-4182-9061-f44831261ec0.jpg/v1/fill/w_922,h_866,q_70,strp/ai_gaze_by_roguedawg777_dgeejdo-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9OTYyIiwicGF0aCI6IlwvZlwvYWZhNmU3MmMtOGRmMy00ZDhhLWFiYTAtZDNkOGMwNDA0ZTI4XC9kZ2VlamRvLTI2MzY2ODdmLWRjZTItNDE4Mi05MDYxLWY0NDgzMTI2MWVjMC5qcGciLCJ3aWR0aCI6Ijw9MTAyNCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.RSVY32rSmLLuV0Vdf0MN9WCvGH6IeAqAkeZPsUrWwqk)

---

## Homework

**Next Week**: Cover the CRISP-DM process for machine learning projects.

### Tasks:
1. Review the key concepts covered today.
2. Explore the Hugging Face Model Hub and try loading different models.
3. Watch related videos on Transformers and their applications.
4. Prepare questions for the guest lecture by Philipp Bayer.

![bg blur:1px contrast:90%](https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/afa6e72c-8df3-4d8a-aba0-d3d8c0404e28/dgeejdo-2636687f-dce2-4182-9061-f44831261ec0.jpg/v1/fill/w_922,h_866,q_70,strp/ai_gaze_by_roguedawg777_dgeejdo-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9OTYyIiwicGF0aCI6IlwvZlwvYWZhNmU3MmMtOGRmMy00ZDhhLWFiYTAtZDNkOGMwNDA0ZTI4XC9kZ2VlamRvLTI2MzY2ODdmLWRjZTItNDE4Mi05MDYxLWY0NDgzMTI2MWVjMC5qcGciLCJ3aWR0aCI6Ijw9MTAyNCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.RSVY32rSmLLuV0Vdf0MN9WCvGH6IeAqAkeZPsUrWwqk)