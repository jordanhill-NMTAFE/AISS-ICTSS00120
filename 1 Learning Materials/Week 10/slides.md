---
footer: "![height:50px](footer.png)"
marp: true
theme: nmt-theme
# math: mathjax
math: mathjax
# Session 10: Fundamentals in Deep Learning & Introduction to Machine Vision
---

<!-- _class: lead -->
# ICTSS00120 - <br> Artificial Intelligence Skill Set
![bg blur:1px contrast:90%](https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/afa6e72c-8df3-4d8a-aba0-d3d8c0404e28/dgeejdo-2636687f-dce2-4182-9061-f44831261ec0.jpg/v1/fill/w_922,h_866,q_70,strp/ai_gaze_by_roguedawg777_dgeejdo-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9OTYyIiwicGF0aCI6IlwvZlwvYWZhNmU3MmMtOGRmMy00ZDhhLWFiYTAtZDNkOGMwNDA0ZTI4XC9kZ2VlamRvLTI2MzY2ODdmLWRjZTItNDE4Mi05MDYxLWY0NDgzMTI2MWVjMC5qcGciLCJ3aWR0aCI6Ijw9MTAyNCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.RSVY32rSmLLuV0Vdf0MN9WCvGH6IeAqAkeZPsUrWwqk)

## Session 10: Fundamentals in Deep Learning & Introduction to Machine Vision

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

- Understand the basics of linear algebra and tensors for deep learning.
- Explore computing tensors, GPU vs CPU.
- Learn feature engineering and data preprocessing techniques for deep learning.
- Understand activation functions and their roles.
- Delve deeper into Convolutional Neural Networks (CNNs) and their applications in machine vision.

---

![bg](https://i1.wp.com/thecleverprogrammer.com/wp-content/uploads/2020/09/un-83.png?fit=1280%2C720&ssl=1)

---

## Linear Algebra for Machine Learning

### Scalars, Vectors, and Tensors

- **Scalar**: A single number.
  - Example: $a = 1$
- **Vector**: An array of numbers.
  - Example: $\mathbf{v} = [1, 2, 3]$
- **Matrix**: A 2D array of numbers.
  - Example: $\mathbf{M} = \begin{bmatrix}1 & 2 \\ 3 & 4\end{bmatrix}$
- **Tensor**: An n-dimensional array of numbers.
  - Example: $\mathbf{T}$ could be a 3D array, a 4D array, etc.


---

## Computing Tensors: GPU vs CPU

- **Central Processing Unit (CPU)**: General-purpose processor.
  - Best for tasks with lower parallelism.
- **Graphics Processing Unit (GPU)**: Specialized for highly parallel tasks.
  - Crucial for deep learning, handling large tensors efficiently.

![bg right:40%](https://images.fastcompany.com/image/upload/f_webp,c_fit,w_1920,q_auto/wp-cms/uploads/2023/06/p-1-90909537-amd-aims-to-dethrone-nvidia-in-the-ai-chip-wars.jpg)

---
## Computing Tensors: TPU vs NPU

- **NPU (Neural Processing Unit)**:
  - **Architecture**: Specialized for neural network computations.
  <!-- - **Peak Performance**: Higher than TPUs, handles more complex tasks efficiently.
  - **Latency and Power Consumption**: Higher than TPUs, more suitable for tasks needing high precision. -->
  - **Applications**: Real-time applications like translation, facial recognition, voice assistants.

- **TPU (Tensor Processing Unit)**: (Google)
  - **Architecture**: Optimized for TensorFlow operations.
  <!-- - **Peak Performance**: Lower than NPUs for specific tasks but optimized for large volume data processing.
  - **Latency and Power Consumption**: Lower than NPUs, faster with lower energy use. -->
  - **Applications**: Data centers, training large machine learning models, Google Cloud services.

![bg right:30% 95%](https://miro.medium.com/v2/resize:fit:1400/format:webp/1*sE0OxOQRrnb_Ifh_Ahi0Nw.jpeg)

---

## Feature Engineering and Data Preprocessing

### Techniques for Deep Learning

- **Normalization**: Scaling features to a standard range.
- **Standardization**: Transforming data to have zero mean and unit variance.
- **Data Augmentation**: Creating new training instances by modifying existing data (e.g., rotations, flips for images).

![bg right:50% fit](https://serokell.io/files/cf/cfkdnv2r.Feature__Engineering_pic1.png)

---

## Activation Functions

### Key Functions

- **ReLU (Rectified Linear Unit)**: $f(x) = \max(0, x)$
  - Benefits: Avoids vanishing gradients, computationally efficient.
- **Sigmoid**: $f(x) = \frac{1}{1 + e^{-x}}$
  - Benefits: Outputs in range (0, 1), used for probability estimation.
- **Tanh**: $f(x) = \frac{e^x - e^{-x}}{e^x + e^{-x}}$
  - Benefits: Outputs in range (-1, 1), zero-centered.
  
![bg right:45% 100%](https://qph.cf2.quoracdn.net/main-qimg-da76d702cccbca988513596d396a4718)

---

## Convolutional Neural Networks (CNNs)

### Basics and Applications

- **Structure**:
  - **Convolutional Layers**: Apply convolution operations to extract features.
  - **Pooling Layers**: Reduce the dimensionality of feature maps.
  - **Fully Connected Layers**: Perform high-level reasoning and classification.
- **Applications**:
  - Image recognition, object detection, and video analytics.

![bg right:35%](./images/nn.png)

---

## Deep Dive into CNNs

### Understanding Convolutional Layers

- **Convolutions**: Apply filters (kernels) to the input image to create feature maps.
- **Filters**: Small matrices that slide over the input to detect patterns (e.g., edges, textures).

![height:13em width:45em](https://miro.medium.com/v2/resize:fit:1400/1*vkQ0hXDaQv57sALXAJquxA.jpeg)

---

## Deep Dive into CNNs

### Pooling Layers

- **Max Pooling**: Takes the maximum value in a window (e.g., 2x2) to down-sample the feature map.
- **Average Pooling**: Takes the average value in a window to down-sample.

![bg right:40% fit](https://miro.medium.com/v2/resize:fit:1400/1*fXxDBsJ96FKEtMOa9vNgjA.gif)

---

## Practical Applications of CNNs

### Image Recognition and Beyond

- **Image Classification**: Recognizing objects in images (e.g., cats, dogs, cars).
  - Example: AlexNet winning the ImageNet competition.
- **Object Detection**: Identifying and locating objects within images.
  - Example: YOLO (You Only Look Once) detecting multiple objects in real-time.
- **[Segmentation](https://ai.meta.com/sam2/)**: Dividing an image into meaningful regions.
  - Example: U-Net for medical image segmentation.

![bg right:40% fit](https://img2018.cnblogs.com/blog/1470684/201811/1470684-20181113160638851-1932898644.gif)



---
<div style="display:flex; justify-content: space-between;">
<!-- <h3> Hello </h3> -->
<video controls autoplay loop width="500"> <source src="images/soccer.mp4" type="video/mp4"> </video>
<video controls autoplay loop width="500"> <source src="images/sam.mp4" type="video/mp4"> </video>

</div>

---

## Lab: Building a Simple CNN for Image Classification

*Let's look at CNN and Machine vision more closely*

### [Lab Sheet](https://miro.medium.com/max/2000/1*8DxFaX4qCqLXuS8UVOAqew.png)

---

## Summary and Q&A

### Summary:
- Learned about basics of linear algebra and tensors.
- Explored GPU vs CPU for computing tensors.
- Learned feature engineering and data preprocessing techniques.
- Understood key activation functions.
- Delved deeper into CNNs and their applications.

### Q&A:
- Any questions about today's topics?

Contact: jordan.hill@nmtafe.wa.edu.au

---

## Homework

**Next Week**:
- Introduction to Recurrent Neural Networks (RNNs).
- Explore RNNs and their applications in sequence prediction.

### Tasks:
1. Review key concepts covered today.
2. Read about RNNs and their applications.
3. Watch related videos on deep learning and CNNs.

![bg blur:1px contrast:90%](https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/afa6e72c-8df3-4d8a-aba0-d3d8c0404e28/dgeejdo-2636687f-dce2-4182-9061-f44831261ec0.jpg/v1/fill/w_922,h_866,q_70,strp/ai_gaze_by_roguedawg777_dgeejdo-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9OTYyIiwicGF0aCI6IlwvZlwvYWZhNmU3MmMtOGRmMy00ZDhhLWFiYTAtZDNkOGMwNDA0ZTI4XC9kZ2VlamRvLTI2MzY2ODdmLWRjZTItNDE4Mi05MDYxLWY0NDgzMTI2MWVjMC5qcGciLCJ3aWR0aCI6Ijw9MTAyNCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.RSVY32rSmLLuV0Vdf0MN9WCvGH6IeAqAkeZPsUrWwqk)