---
footer: "![height:50px](footer.png)"
marp: true
theme: nmt-theme
title: Hyperparameter Tuning

---

<!-- _class: lead -->
# ICTSS00120 <br> Artificial Intelligence Skill Set
![bg blur:1px contrast:90%](https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/afa6e72c-8df3-4d8a-aba0-d3d8c0404e28/dgeejdo-2636687f-dce2-4182-9061-f44831261ec0.jpg/v1/fill/w_922,h_866,q_70,strp/ai_gaze_by_roguedawg777_dgeejdo-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9OTYyIiwicGF0aCI6IlwvZlwvYWZhNmU3MmMtOGRmMy00ZDhhLWFiYTAtZDNkOGMwNDA0ZTI4XC9kZ2VlamRvLTI2MzY2ODdmLWRjZTItNDE4Mi05MDYxLWY0NDgzMTI2MWVjMC5qcGciLCJ3aWR0aCI6Ijw9MTAyNCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.RSVY32rSmLLuV0Vdf0MN9WCvGH6IeAqAkeZPsUrWwqk)

## Week 8: Hyperparameter Tuning

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

- Understand what hyperparameters are and their role in machine learning models.
- Learn about different methods for hyperparameter tuning.
- Implement hyperparameter tuning using scikit-learn.
- Evaluate the performance of machine learning models using various metrics (e.g., f-score, accuracy, precision/recall, loss metrics, confusion matrix).

---

## What are Hyperparameters?

- **Definition**: Hyperparameters are external configurations to the model that must be set before the learning process begins.
- **Examples**: 
  - Learning rate in gradient descent
  - Number of layers and nodes in a neural network
  - Regularization parameters (e.g., L1, L2)
  - Max depth of a decision tree

![bg right:40% fit](https://upload.wikimedia.org/wikipedia/commons/b/b6/Hyperparameter_Optimization_using_Grid_Search.svg)

---

## Why Hyperparameter Tuning?

- **Optimize Model Performance**:
  - Carefully chosen hyperparameters can significantly improve model accuracy and efficiency.
- **Avoid Overfitting/Underfitting**:
  - Regularization parameters can help to generalize the model better.
- **Balancing Performance Metrics**:
  - Tuning parameters like the class weight can balance precision and recall.

![bg left:40% fit](https://bradleyboehmke.github.io/HOML/10-gradient-boosting_files/figure-html/gradient-descent-fig-1.png)

---

## Common Methods for Hyperparameter Tuning

### Grid Search
- **Definition**: Exhaustive search over specified parameter values for an estimator.
- **GridSearchCV** in scikit-learn performs hyperparameter tuning using cross-validation.

### Random Search
- **Definition**: Randomly sampling parameter values from a specified distribution.
- Often quicker than grid search for large hyperparameter spaces.

### Bayesian Optimization
- **Definition**: Using a probabilistic model to find the most promising hyperparameters.
- Iteratively updates to balance exploration and exploitation.

![bg right:40% 95%](https://miro.medium.com/v2/resize:fit:1400/1*o2rMCJKUcpqRBFfHZ3Jkfg.png)

---

## Evaluating Model Performance

### Common Metrics
- **Accuracy**: Proportion of true results among the total number of cases.
- **Precision**: Proportion of true positive results in terms of positive results returned by the classifier.
- **Recall**: Proportion of true positive results in terms of all samples that should have been identified as positive.
- **F1 Score**: [Harmonic mean](https://en.wikipedia.org/wiki/Harmonic_mean) of precision and recall.
- **Confusion Matrix**: A table used to describe the performance of a classification model.

![bg right:40%](images/evaluation_metrics.jpg)

---

## Calculating Evaluation Metrics with Scikit-Learn

```python
from sklearn.metrics import accuracy_score, precision_score, recall_score, f1_score, confusion_matrix

# Predictions
y_pred = grid_search.predict(X_test)

# Calculating metrics
accuracy = accuracy_score(y_test, y_pred)
precision = precision_score(y_test, y_pred)
recall = recall_score(y_test, y_pred)
f1 = f1_score(y_test, y_pred)
conf_matrix = confusion_matrix(y_test, y_pred)

# Printing results
print(f"Accuracy: {accuracy}")
print(f"Precision: {precision}")
print(f"Recall: {recall}")
print(f"F1 Score: {f1}")
print(f"Confusion Matrix:\n{conf_matrix}")
```

---

## Visualizing the Confusion Matrix

```python
import matplotlib.pyplot as plt
import seaborn as sns

# Plotting the confusion matrix
sns.heatmap(conf_matrix, annot=True, fmt='d', cmap='Blues')
plt.xlabel('Predicted Label')
plt.ylabel('True Label')
plt.title('Confusion Matrix')
plt.show()
```

![bg right:40% fit](images/confusion_matrix.png)

---

## Practical Exercise: Grid Search for Spam Detection

### Steps:
1. **Data Preprocessing**:
   - Load and preprocess the spam dataset.
2. **Model Selection**:
   - Choose a classification model (e.g., SVM, RandomForest).
3. **Hyperparameter Tuning**:
   - Use GridSearchCV for hyperparameter tuning.
4. **Model Evaluation**:
   - Evaluate the performance using the discussed metrics.

Refer to the lab sheet for detailed steps and code snippets.

---

## Summary and Next Steps

### Key Points
- Definition and importance of hyperparameters.
- Common methods for hyperparameter tuning: Grid Search, Random Search.
- Implementing hyperparameter tuning using scikit-learn.
- Evaluating model performance using various metrics.

### Homework
1. Complete the practical exercise on hyperparameter tuning.
2. Review the paper "Study on the effect of preprocessing methods for spam email detection" by Ruskanda, F.Z., 2019.

---

### Next Week: Deep Learning Foundations

![bg blur:1px contrast:90%](https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/afa6e72c-8df3-4d8a-aba0-d3d8c0404e28/dgeejdo-2636687f-dce2-4182-9061-f44831261ec0.jpg/v1/fill/w_922,h_866,q_70,strp/ai_gaze_by_roguedawg777_dgeejdo-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9OTYyIiwicGF0aCI6IlwvZlwvYWZhNmU3MmMtOGRmMy00ZDhhLWFiYTAtZDNkOGMwNDA0ZTI4XC9kZ2VlamRvLTI2MzY2ODdmLWRjZTItNDE4Mi05MDYxLWY0NDgzMTI2MWVjMC5qcGciLCJ3aWR0aCI6Ijw9MTAyNCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.RSVY32rSmLLuV0Vdf0MN9WCvGH6IeAqAkeZPsUrWwqk)

---

## Questions & Answers
**Q&A:**
- Any questions from today's session??

Contact: jordan.hill@nmtafe.wa.edu.au

![bg blur:1px contrast:90%](https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/afa6e72c-8df3-4d8a-aba0-d3d8c0404e28/dgeejdo-2636687f-dce2-4182-9061-f44831261ec0.jpg/v1/fill/w_922,h_866,q_70,strp/ai_gaze_by_roguedawg777_dgeejdo-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9OTYyIiwicGF0aCI6IlwvZlwvYWZhNmU3MmMtOGRmMy00ZDhhLWFiYTAtZDNkOGMwNDA0ZTI4XC9kZ2VlamRvLTI2MzY2ODdmLWRjZTItNDE4Mi05MDYxLWY0NDgzMTI2MWVjMC5qcGciLCJ3aWR0aCI6Ijw9MTAyNCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.RSVY32rSmLLuV0Vdf0MN9WCvGH6IeAqAkeZPsUrWwqk)
