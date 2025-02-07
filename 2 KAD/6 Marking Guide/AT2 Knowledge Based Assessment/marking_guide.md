### Marking Guide: AT2 Knowledge-Based Assessment - Understanding AI, ML, and DL (Weeks 1–6)

---

#### Question 1: List and Describe AI/ML/DL Technology (401.KE1)
*Choose one technology from Artificial Intelligence (AI), Machine Learning (ML), or Deep Learning (DL) and provide an example. List three distinct functions and features of the selected technology. Additionally, explain how organizations utilize this technology to automate tasks and processes, and include specific use-case examples.*

```
Example Response:
**Technology: Deep Learning (DL)**
Example: Convolutional Neural Network (CNN)
Functions and Features:
1. Feature Extraction: Automatically extracts features from raw pixel data in images.
2. Image Classification: Classifies images into predefined categories.
3. Object Detection: Identifies and locates objects within images.

Organizations use CNNs to automate tasks such as quality control in manufacturing by detecting defects in products. Another use case is in healthcare, where CNNs analyze medical images to identify potential health issues such as tumors.
```
---
*Students should identify a specific technology, provide an example, list three distinct functions and features, and describe how organizations utilize this technology with specific use-case examples.*

---

#### Question 2: Describe Tasks and Processes Automated Using AI/ML/DL Technologies (501.KE1 & 401.KE2)

*Consider the various tasks and processes within an organization that may be automated.*

Consider the following applications:

-	Creating and managing email campaigns
-	Using chatbots and automated messaging platforms
-	Analyzing trends within datasets
-	Hiring and recruitment
-	Employee help desk support services
-	Generating customer support logs and tickets

Describe at least three such tasks/processes commonly automated in similar organizations.

```
Example Response:
1. **Creating and Managing Email Campaigns:**
AI can analyze customer data to create personalized email campaigns. Machine learning algorithms can segment customers based on their behavior and preferences, ensuring targeted marketing.

2. **Using Chatbots and Automated Messaging Platforms:**
Chatbots powered by AI use NLP to understand and respond to customer queries, providing 24/7 support and reducing the workload on human agents.

3. **Analyzing Trends within Datasets:**
Machine learning models can analyze large datasets to identify trends and patterns, helping businesses make data-driven decisions. For example, retail companies use ML to predict inventory requirements based on historical sales data.
```
---
*Students should describe at least three tasks, explain how AI/ML/DL technologies can improve them, and provide specific examples in a real-world context.*

---

#### Question 3: Organizational Formats for AI/ML/DL Documentation and Reports (401.KE5)
*Effective documentation and reporting are crucial for the success of AI/ML/DL projects within an organization. Describe the range of formats that organizations commonly use to document AI, ML, and DL projects. Discuss the advantages and considerations of each format when it comes to communicating with different stakeholder groups, such as technical teams versus business decision-makers.*

```
Example Response:
Organizations commonly use several formats for AI/ML/DL documentation including technical reports, dashboards, presentations, and project documentation. 

- **Technical Reports**: Detailed documents aimed at technical teams containing methodologies, algorithms, code snippets, and results. They provide deep technical insights but may be complex for non-technical readers.
- **Dashboards**: Visual tools that present data summaries, performance metrics, and key results. Dashboards are interactive and accessible to both technical and non-technical stakeholders, promoting quick insights.
- **Presentations**: Used to communicate high-level findings and strategic implications to business decision-makers. Presentations often focus on the impact and value of AI projects, omitting deep technical details.
```
---
*Students should describe different documentation formats, their advantages, and consider the needs of various stakeholders in their explanation.*

---

#### Question 4: Ensuring Quality Data in Machine Learning (501.KE7)
*The quality of data used in Machine Learning (ML) is critical for the development of effective models. Discuss the importance and techniques of randomizing, deduplicating, and checking for imbalances and biases in machine training data sets.*

```
Example Response:
Data quality is crucial for ML model performance. 

- **Randomizing**: Ensures models are not trained on biased sequences of data, improving generalization. For example, shuffling data before splitting into training and test sets prevents patterns dependent on sequence.
- **Deduplicating**: Removes duplicate entries to prevent overfitting and ensure the model learns unique patterns. For instance, duplicate transaction logs are removed to avoid bias towards frequent transactions.
- **Checking for Imbalances and Biases**: Identifies and corrects imbalanced datasets to avoid skewed predictions. Techniques like SMOTE (Synthetic Minority Over-sampling Technique) can balance datasets by generating synthetic examples.
```
---
*Students should discuss the importance of data quality and describe techniques for ensuring it, including explanations of randomizing, deduplicating, and handling imbalances and biases.*

---

#### Question 5: Training and Evaluation Data Sets in Machine Learning (501.KE8 & 502.KE2)
*Explain the distinction between training subsets and evaluation or test subsets within machine learning datasets. Describe their roles during training and evaluation stages of model development. For example, why would you need a validation and test, can you give an example of models that would need this?*


```
Example Response:
In machine learning, **training subsets** are used to fit models by providing the data on which they learn and adjust parameters. This allows the model to recognize patterns and make predictions based on the input data.

**Evaluation subsets**, comprising validation and test data, play distinct roles during training and evaluation stages. The **validation set** tunes hyperparameters and prevents overfitting by providing feedback on model accuracy during training. This helps in selecting the best model configuration. The **test set** evaluates the final model's performance on unseen data, ensuring it generalizes well to new samples.

For example, when developing a neural network for image classification, the training set teaches the model to identify features of images. The validation set might be used to adjust the number of layers or learning rate. After training, the test set assesses how accurately the model classifies new, unseen images, confirming its effectiveness.
```
---
*Students should clearly define training, validation, and test subsets, and explain their roles and importance in the ML model lifecycle.*

---

#### Question 6: Characteristics and Functions of Data Types in ML (501.KE5)
*Discuss the characteristics and functions of structured, unstructured, labeled, and unlabeled data. Explain how each data type can be utilized in the creation and training of machine learning models, providing examples.*

```
Example Response:
- **Structured Data**: Predefined format with rows and columns (e.g., spreadsheets). It's used in ML models for tasks like regression and classification.
- **Unstructured Data**: No predefined format, such as text, images, or videos. NLP and image recognition techniques process this data.
- **Labeled Data**: Includes inputs paired with correct outputs (e.g., labeled images in supervised learning). Essential for training supervised ML models.
- **Unlabeled Data**: Contains inputs without corresponding outputs (e.g., raw text data for clustering). Used in unsupervised learning.
```
---
*Students should describe each data type and provide examples of how they are used in ML models.*

---

#### Question 7: Programming Languages and Their Role in Machine Learning (ICTAII501 KE13)
*Discuss the importance of programming languages in the development of machine learning algorithms. Highlight how languages like Python support machine learning implementations.*

```
Example Response:
Programming languages are crucial for developing machine learning algorithms. Python is widely used due to its simplicity and extensive libraries like TensorFlow and PyTorch. These libraries streamline model creation, training, and deployment, making Python an efficient choice for ML development.
```
---
*Students should discuss the role of programming languages in ML and highlight the importance of Python with examples.*

---

#### Question 8: Data Sources (502.KE2 - Data Sources)
*Identify and describe different types of data sources commonly used in machine learning projects. How does the origin or type of data source impact the choice of machine learning model or the preprocessing steps required?*

```
Example Response:
Common data sources include structured databases, unstructured social media data, and APIs. The data source impacts ML model choice and preprocessing; for example, structured data suits regression models, while unstructured text data requires NLP preprocessing.
```
---
*Students should identify different data sources and discuss how they impact model choice and preprocessing.*

---

#### Question 9: Attribute Names (502.KE2 - Attribute Names)
*Discuss how the selection and naming of attributes can influence model training and results. Provide examples of well-defined attribute names versus poor choices and their potential implications.*

```
Example Response:
Clear, descriptive attribute names enhance model interpretability and debugging. Poor names cause confusion. For example, 'customer_age' is clear, while 'a1' is not. Ambiguous names can lead to misinterpretations and errors.
```
---
*Students should discuss how attribute naming affects model training and provide clear examples.*

---

#### Question 10: Target Data (502.KE2 - Target Data)
*Define target data within the scope of machine learning tasks and elaborate on its significance during model training and evaluation.*

```
Example Response:
Target data represents the expected output for each input example. It guides model training and evaluation. Poorly defined or missing target data leads to inaccurate models and poor predictions.
```
---
*Students should define target data and discuss its significance in training and evaluation.*

---

#### Question 11: Key Algorithms for Labeled and Unlabeled Data (501.KE9 & 501.KE10)
*Explain the key differences between algorithms used for handling labeled data and those handling unlabeled data.*

```
Example Response:
Labeled data algorithms (e.g., logistic regression) predict specific outputs. Unlabeled data algorithms (e.g., k-means clustering) find patterns in the data itself. Labeled data suits classification tasks, while unlabeled data suits clustering.
```
---
*Students should explain differences and provide examples of labeled and unlabeled data algorithms.*

---

#### Question 12: Characteristics of Learning Types (501.KE12 & 502.KE1)
*Define and compare the four categories of learning techniques in machine learning: supervised, unsupervised, semi-supervised, and reinforcement learning.*

```
Example Response:
- **Supervised Learning**: Trains on labeled data. Used for classification and regression.
- **Unsupervised Learning**: Finds patterns in unlabeled data. Used for clustering.
- **Semi-Supervised Learning**: Uses a mix of labeled and unlabeled data.
- **Reinforcement Learning**: Learns by interacting with an environment.
```
---
*Students should define and compare supervised, unsupervised, semi-supervised, and reinforcement learning, providing examples.*

---

#### Question 13: Key Features and Functions of Learning Algorithms (502.KE2 - Learning Algorithms)
*Focus on the learning algorithm of **Decision Trees**. Explain the fundamental principles that underpin how decision trees learn from data and make decisions. Describe how these principles influence their decision-making capabilities. Provide examples of decision tree algorithms commonly used in the field, detailing their basic functions and operations.*

```
Example Response:
Decision Trees are supervised learning algorithms utilized for both classification and regression tasks. They learn by recursively partitioning the data into subsets based on the values of input features, forming a tree-like structure of decision rules. At each node, the algorithm selects the feature that provides the best split according to criteria like Gini impurity or information gain (entropy). This splitting continues until a stopping condition is met, such as reaching a maximum depth or having a minimum number of samples in a node.

These principles influence their decision-making capabilities by allowing the model to make decisions through a series of simple if-then rules derived from the data features. This makes decision trees highly interpretable, as one can trace the path from the root to a leaf node to understand how a decision was made.

```
---

*Students should explain the underlying principles of decision tree algorithms and illustrate with examples of widely-used decision tree algorithms.*

---

#### Question 14: Key Implementation Risks for AI, ML, and DL Technologies (401.KE4)
*Identify and discuss key risks associated with implementing AI, ML, and DL technologies.*

```
Example Response:
Key risks include data privacy issues, bias in AI models, and high implementation costs. Mitigation strategies involve secure data handling, bias detection tools, and cost-benefit analysis.
```
---
*Students should identify risks and provide strategies to mitigate them.*

---

#### Question 15: Organizational Policies and Procedures in AI Implementation (401.KE6 & 501.KE16 & 501.KE18)
*Choose one ethics principle from [Australia's AI Ethics Principles](https://www.industry.gov.au/publications/australias-artificial-intelligence-ethics-principles/australias-ai-ethics-principles). Reflect on how this principle could be implemented through organizational policies, highlighting any challenges that could present themselves regarding ethics in relation to AI implementations.*

```
Example Response:
Adopting secure and safe practices when implementing AI, ML, and DL technologies in the workplace is essential to protect sensitive data and maintain system integrity. Adherence to organizational policies and procedures ensures that AI initiatives align with the company's ethical standards, risk management strategies, and operational goals. Compliance with legislative requirements, such as data protection laws and industry regulations, helps prevent legal repercussions and fosters trust among clients and stakeholders.

Behavioral science plays a crucial role by providing insights into how humans interact with AI systems, guiding the design of user-friendly and socially acceptable technologies. Data governance is vital for establishing standards and protocols for data quality, security, and accessibility, ensuring that AI models are trained on accurate and ethically sourced data. Ethical considerations and respect for human rights are imperative to prevent biases, discrimination, and unfair practices within AI applications. 

By integrating secure practices, adhering to policies and laws, and considering behavioral science, data governance, ethics, and human rights, organizations can implement AI solutions that are safe, effective, and socially responsible. This holistic approach not only mitigates risks but also enhances the reputation and credibility of the organization.
```
---
*Students should discuss the importance of secure practices, organizational policies, and legislative requirements.*

---

#### Question 16: Characteristics of Unbiased and Biased Datasets (501.KE6)
*Define what constitutes an unbiased dataset and a biased dataset in the context of machine learning. Discuss the potential implications and risks of using biased datasets in AI model development and deployment, including real-world examples where bias has affected outcomes. Provide strategies for detecting and mitigating data bias to ensure fair and equitable AI systems.*


```
Example Response:
An unbiased dataset in machine learning is one that accurately reflects the complete diversity and distribution of the population it is intended to model, without overrepresenting or underrepresenting any subgroup. This ensures that the machine learning model trained on such data can generalize well and make fair predictions across all segments of the population. Conversely, a biased dataset is characterized by systematic errors or imbalances that favor certain groups over others, leading to models that can produce skewed or discriminatory outcomes.

The use of biased datasets in AI model development can result in significant risks and negative implications. For example, models may perpetuate social biases, discriminate against minority groups, and make unfair decisions that affect individuals' lives. A notable real-world example is the COMPAS algorithm used in the US criminal justice system, which was found to be biased against African American individuals, leading to unfair risk assessments. Another example is facial recognition technology performing poorly on women and people of color due to biased training data.

To detect and mitigate data bias, strategies include:

- **Data Assessment and Preprocessing**: Analyze the dataset for imbalances or anomalies. Use techniques like re-sampling, stratification, or data augmentation to balance the dataset.
- **Fairness Metrics**: Employ statistical measures such as demographic parity, equal opportunity, or disparate impact ratio to evaluate and monitor model fairness across different subgroups.
- **Diverse Data Collection**: Ensure that data collection processes are inclusive and representative of all relevant populations.
- **Algorithmic Techniques**: Implement fairness-aware machine learning algorithms that are designed to minimize bias.
- **Human Oversight and Ethical Guidelines**: Involve interdisciplinary teams to oversee AI development and adhere to ethical standards and regulations to promote accountability and transparency.

By proactively addressing data bias, organizations can develop AI systems that are more fair, equitable, and trustworthy.

```
---
*Students should define unbiased and biased datasets and discuss strategies to mitigate bias.*

---

#### Question 17: Australia’s Artificial Intelligence Ethics Framework (501.KE18)
*Discuss Australia’s AI Ethics Framework.*

```
Example Response:
Australia’s AI Ethics Framework includes principles such as fairness, transparency, and privacy. Applying these ensures ethical AI use, promoting trust and accountability.
```
---
*Students should discuss key principles and their application in ethical AI use.*

---

#### Question 18: Industry-Recognised Machine Learning Principles and Techniques (501.KE2 & 501.KE3)
*Below are some examples of industry-recognised machine learning principles and techniques:

- Model Interpretability and Explainability
- Data Privacy and Security
- Fairness and Bias Mitigation
- Robustness and Reliability
- Scalability and Efficiency
- Ethical AI Practices
- Cross-Validation
- Feature Engineering
- Regularization Techniques
- Ensemble Methods
- Hyperparameter Tuning
- Dimensionality Reduction

Choose three of these principles and/or techniques and define them, explaining their significance in machine learning applications.*

```
Example Response:
1. **Model Interpretability and Explainability**: The extent to which a human can understand the reasoning behind a machine learning model's decisions or predictions. This principle emphasizes transparency and explainability, ensuring that stakeholders can trust and effectively manage AI systems.

2. **Robustness**: The ability of a machine learning model to maintain its performance when faced with varying conditions, such as noise, outliers, or adversarial inputs. Robustness ensures that models are reliable and perform consistently in real-world scenarios.

3. **Fairness**: Ensuring that the outcomes of machine learning models are unbiased and do not discriminate against any individual or group. This principle involves identifying and mitigating biases in data and algorithms to promote equitable and ethical AI practices.
```
---
*Students should identify principles and techniques, providing examples of their application in practice.*

---

#### Question 19: Advantages and Disadvantages of AI, ML, and DL (401.KE3)
*Describe the key advantages and disadvantages of implementing AI, ML, and DL technologies in organizations. Provide examples to illustrate how these technologies can both positively and negatively impact business operations.*

```
Example Response:
Advantages:
- **Enhanced Decision-Making**: AI and ML provide data-driven insights, improving strategic planning.
- **Automation**: Automates routine tasks, freeing up human resources for more complex work.

Disadvantages:
- **High Implementation Costs**: Initial setup and maintenance expenses can be significant.
- **Data Privacy Concerns**: Handling sensitive data raises ethical and security concerns.
```
---
*Students should discuss advantages and disadvantages, providing examples of both positive and negative impacts.*

---
### Marking Checklist

#### Question Completion:
- Student provided comprehensive responses to all questions.
- Responses include examples, explanations, and references to course materials.

---

#### Marking Criteria:

- **Satisfactory (S)**
- **Not Yet Satisfactory (NYS)**

---

### Additional Feedback

Provide constructive feedback detailing strengths and areas for improvement in each question, encouraging the student to reflect on their understanding and application of AI, ML, and DL concepts.
