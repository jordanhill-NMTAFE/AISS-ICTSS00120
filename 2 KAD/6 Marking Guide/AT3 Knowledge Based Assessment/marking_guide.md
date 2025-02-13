### Marking Guide: AT3 Knowledge-Based Assessment - Understanding AI, ML, and DL (Weeks 8-13)

---

#### Question 1: Functions and Features of Machine Training Datasets (501.KE4)
*Describe the functions and features of machine training datasets and their relevance in the automation of work tasks. Explain how these characteristics enable the effective application of machine learning principles to improve organizational productivity and provide examples of automation scenarios that benefit from well-structured training datasets.*

```
Example Response:
Machine training datasets are essential for developing and validating machine learning models. Features of training datasets include labeled data, diverse samples, and balanced classes. These characteristics ensure that models can learn generalizable patterns and perform well on new data. For example, in automating customer support through chatbots, a well-structured dataset with diverse customer queries allows the model to respond accurately to various inquiries, thereby improving response time and customer satisfaction.
```
---
*Students should describe the key features of machine training datasets, their relevance to automation, and provide examples illustrating their importance.*

---

#### Question 2: Importance of Parameters in Machine Learning (502.KE2 - Default and non-default parameters)
*Discuss the significance of default and non-default parameters in the context of machine learning models. Explain how adjusting these parameters can affect a model's learning process and performance. Provide examples of common parameters that are tuned during the hyperparameter optimization process.*

```
Example Response:
Default parameters are pre-set values provided by machine learning frameworks, while non-default parameters are manually specified by the user. Adjusting parameters, such as learning rate, number of layers, and batch size, can significantly affect model training and performance. For example, tuning the learning rate is crucial for ensuring the model converges effectively without overshooting the optimal solution. Hyperparameter optimization techniques like Grid Search and Random Search help identify the best parameter values.
```
---
*Students should explain the significance of default and non-default parameters, how adjustments can impact a model, and provide examples of common parameters tuned during optimization.*

---

#### Question 3: Significance of Evaluation Metrics in Machine Learning (502.KE2 - Metrics)
*Detail the role of various evaluation metrics in machine learning and how they guide the model refinement process. Explain how selection of the appropriate metric or metrics aligns with the prediction task at hand, and give examples of different types of metrics applied in specific machine learning scenarios.*

```
Example Response:
Evaluation metrics are critical for assessing the performance of machine learning models. Common metrics include accuracy, precision, recall, and F1-score. The choice of metric depends on the prediction task. For instance, in a medical diagnosis application, recall may be prioritized to ensure all positive cases are identified, even at the cost of more false positives. Metrics guide the refinement process by highlighting areas where the model performs well and where it needs improvement.
```
---
*Students should detail various evaluation metrics, their importance in refinement, and provide examples of metric selection based on specific tasks.*

---

#### Question 4: Training, Validation, and Test Data in Machine Learning Model Development (502 KE2)
*Explain the difference between training data, validation data, and test data in the context of a machine learning model's development life cycle. Discuss the crucial role each data type plays and why it's important to have distinct sets for developing robust AI models.*

```
Example Response:
Training data is used to fit the model’s parameters, validation data is used to tune hyperparameters and prevent overfitting, and test data evaluates the final model performance on unseen data. Each set plays a crucial role in developing robust models. Training data teaches the model, validation data provides feedback for tuning, and test data serves as an unbiased performance measure, ensuring the model generalizes well to new data.
```
---
*Students should clearly explain the roles and importance of training, validation, and test data in the model development life cycle.*

---

#### Question 5: Determining Predictive Accuracy of ML Models (502 KE5 & KE6)
*Explain the importance of determining the predictive accuracy of machine learning models using target data. Describe the methods used to do so and discuss how this accuracy measurement contributes to the overall evaluation and efficacy of a model in production environments. Provide examples of how predictive accuracy affects decision-making in real-world applications.*

```
Example Response:
Predictive accuracy measures how well a model's predictions match actual outcomes and is essential for evaluating model effectiveness. Common methods include train-test split and cross-validation. High predictive accuracy ensures reliable model performance in production, influencing key decisions. For example, in financial forecasting, accurate models enable better investment strategies, mitigating risk and optimizing returns.
```
---
*Students should explain the importance of predictive accuracy, describe evaluation methods, and provide examples of its impact on decision-making.*

---

#### Question 6: Documenting Machine Learning Model Evaluations (502.KE8)
*Discuss the variety of formats and best practices for documenting the evaluation of machine learning models within an organization. How does proper documentation aid in the interpretation, reproducibility, and communication of model performance to stakeholders? Provide guidance on what to include in such documentation and any tools or platforms that might be used.*

```
Example Response:
Model evaluation documentation formats include technical reports, dashboards, and presentations. Proper documentation ensures that model performance is interpretable, reproducible, and communicable. Key components include model architecture, evaluation metrics, data descriptions, and hyperparameter settings. Tools like Jupyter Notebooks and platforms such as TensorBoard facilitate comprehensive documentation and visualization.
```
---
*Students should discuss the importance and formats of documentation, best practices, and mention tools that aid in documentation.*

---

#### Question 7: Comparison of Supervised and Unsupervised Learning Techniques (ICTAII502 KE3)
*Explain the primary differences between supervised and unsupervised learning techniques and discuss the unique features of each. Provide one real-world application example for both supervised and unsupervised learning that illustrates their typical use cases. Additionally, discuss how the choice between these two techniques might affect the way data is prepared and the outcomes expected from the machine learning model.*

```
Example Response:
Supervised learning uses labeled data to train models while unsupervised learning uses unlabeled data to find patterns. Supervised learning's unique feature is its reliance on labeled datasets, exemplified by email spam detection. Unsupervised learning identifies inherent structures in data, such as customer segmentation using clustering. Supervised learning requires labeled data, resulting in clear predictions, while unsupervised learning leads to discovering hidden patterns without explicit labels.
```
---
*Students should explain differences, unique features, provide real-world examples, and discuss impacts on data preparation and expected outcomes.*

---

#### Question 8: Exploring ML Learning Paradigms (ICTAII501 KE11)
*Provide a comparison of semi-supervised, supervised, unsupervised, and reinforcement learning. For each learning paradigm, discuss the underlying principles, typical use cases, and the contexts in which each would be the most effective. Also, provide examples of specific applications or projects where each learning type has been successfully implemented.*

```
Example Response:
- **Supervised Learning**: Trains on labeled data (e.g., image classification). Effective when labeled data is abundant.
- **Unsupervised Learning**: Trains on unlabeled data (e.g., clustering). Effective for discovering patterns where labels are unavailable.
- **Semi-Supervised Learning**: Uses a mix of labeled and unlabeled data (e.g., text classification with limited annotations). Effective in limited labeling contexts.
- **Reinforcement Learning**: Learns via environment interaction and feedback (e.g., game-playing AI). Effective in sequential decision-making tasks.
Examples: 
- Supervised: Handwriting recognition.
- Unsupervised: Market basket analysis.
- Semi-Supervised: Medical image analysis.
- Reinforcement: Robotics navigation.
```
---
*Students should compare the learning paradigms, discuss principles and use cases, and provide application examples for each.*

---

#### Question 9: Characteristics of Key Logic in Algorithms (ICTAII501 KE14)
*Describe the characteristics of the key logic in neural network algorithms. Discuss how these characteristics influence their potential applications.*

```
Example Response:
Neural network algorithms are inspired by the structure and function of the human brain. Key characteristics include layers of interconnected nodes (neurons) organized into an input layer, one or more hidden layers, and an output layer. Each neuron processes input data using activation functions and passes the result to the next layer. Neural networks learn by adjusting the weights of the connections between neurons through a learning process called backpropagation, aiming to minimize the difference between predicted and actual outputs. This allows them to model complex, non-linear relationships in data. For example, neural networks are used in image recognition to identify objects within pictures by learning intricate patterns and features from pixel data.
```
---
*Students should describe the key logic of neural networks, discuss its influence on decision-making, and provide real-world examples of their application.*

---

#### Question 10: Methods to Compare Expected and Actual ML Outputs (ICTAII501 KE15)
*Explain the methods used to compare expected and actual outputs in machine learning models, focusing on classification algorithms.*

```
Example Response:
Methods to compare expected and actual outputs in classification algorithms include using a confusion matrix, which provides insights into true positives, false positives, true negatives, and false negatives. Accuracy metrics, such as precision and recall, further evaluate model performance. For instance, in spam detection, these methods help identify misclassified emails, guiding improvements in the model's filtering capabilities.
```
---
*Students should explain methods for comparing outputs in classification algorithms, describe relevant techniques, and provide real-world examples of their application.*

---

#### Question 11: Understanding Feature Engineering in Machine Learning (ICTAII502 KE2 - Feature Engineering)
*Explain the role of feature engineering in the machine learning process. Describe the techniques and approaches used in feature engineering to improve model accuracy and efficiency.*

```
Example Response:
Feature engineering transforms raw data into meaningful features, enhancing model accuracy. Techniques include normalization, encoding categorical variables, and creating interaction terms. For example, in predictive maintenance, transforming timestamp data into cyclical features improves the model's ability to predict equipment failures.
```
---
*Students should explain the role of feature engineering, describe techniques, and provide practical examples of its impact on model performance.*

---

#### Question 12: Application of CRISP-DM and Software Development Methodologies in ML Deployment (ICTAII501 KE17 & ICTAII502 KE4)
*Discuss how the Cross-Industry Standard Process for Data Mining (CRISP-DM) and software development methodologies can be applied to determine machine learning deployment requirements for end users.*

```
Example Response:
CRISP-DM provides a structured approach for data mining projects, including phases such as business understanding, data preparation, modeling, and deployment. Agile software development methodologies emphasize iterative progress and stakeholder collaboration. Together, they ensure ML models meet user needs. For example, using CRISP-DM for a credit scoring model ensures thorough data analysis, while Agile's iterative approach allows continuous improvement based on feedback.
```
---
*Students should discuss CRISP-DM and agile methodologies, describe their application in ML deployment, and provide examples of effective deployment.*

---

#### Question 13: Understanding Organizational Policies and Legislative Requirements in ML Projects (ICTAII502 KE9)
*Explain the importance of adhering to organizational policies and legislative requirements when conducting machine learning projects.*

```
Example Response:
Adhering to policies and legislative requirements ensures ethical and legal compliance in ML projects. Policies such as data privacy (GDPR) and organizational guidelines on data handling impact model deployment. For example, GDPR mandates data protection measures, affecting how personal data is used in training and deploying ML models.
```
---
*Students should explain the importance of policies and legislation, provide examples of specific guidelines, and discuss their impact on ML deployment.*

---

#### Question 14: Importance of Model Sizes in Machine Learning (ICTAII502 KE2 - Model Sizes)
*Discuss the significance of model size in the development and performance of machine learning models, particularly language models. Finally, calculate in GB roughly how much VRAM would be needed to load an 80 Billion parameter model (neural network) as bfloat16 and again as int8.*

```
Example Response:
Model size impacts computational requirements and performance. Large models capture complex patterns but require substantial resources. For an 80 Billion parameter model:
- bfloat16 (16 bits/parameter): 80B * 16 bits = 1,280,000,000,000 bits = 160 GB
- int8 (8 bits/parameter): 80B * 8 bits = 640,000,000,000 bits = 80 GB
```
---
*Students should discuss the significance of model size, compute VRAM requirements for bfloat16 and int8, and provide calculations.*

---

#### Question 15: Evaluating Industry-Recognized Machine Learning Models (ICTAII502 KE14 & KE7)
*Identify and discuss several industry-recognized machine learning models. Provide two examples of Transformer models of different sizes and briefly summarize how the size of each model might impact how you could apply it to real-world use-cases.*

```
Example Response:
- **BERT (Base)**: 110M parameters, suited for tasks with limited computational resources like text classification.
- **GPT-3**: 175B parameters, applicable to complex, large-scale tasks like text generation and conversational AI.
Model size affects resource requirements and application feasibility. Larger models offer higher performance but require more computational power.
```
---
*Students should identify recognized models, provide Transformer examples of varying sizes, and discuss how size impacts application.*

---

#### Question 16: Understanding Vision Transformers (ViT) and Their Applications (ICTAII502 KE7)
*Discuss the concept of Vision Transformers (ViT) and explain how they adapt transformer architectures for vision-related tasks (an in-depth explanation is not required). Describe in general the key features and functionalities of ViT, and provide examples of specific applications where Vision Transformers have proven effective.*

```
Example Response:
Vision Transformers (ViT) apply transformer architectures to image data by dividing images into patches and processing them similarly to tokenized text. Key features include multi-head self-attention and positional encoding. ViTs excel in tasks like image classification and object detection, with applications in autonomous driving and healthcare imaging.
```
---
*Students should explain the concept of ViT, describe key features and functionalities, and provide examples of effective applications.*

---

### Marking Checklist

#### Question Completion:
- Student provided satisfactory responses to all questions.
- Responses include examples, explanations, and references to course materials.

---

#### Marking Criteria:

- **Satisfactory (S)**
- **Not Yet Satisfactory (NYS)**

---

### Additional Feedback

Provide constructive feedback detailing strengths and areas for improvement in each question, encouraging the student to reflect on their understanding and application of AI, ML, and DL concepts.
