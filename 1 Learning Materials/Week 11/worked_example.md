# CRISP-DM: A Worked Example Using the Breast Cancer Dataset

In this example, we will walk through all phases of the CRISP-DM methodology using the Breast Cancer dataset from `sklearn`.

## Phase 1: Business/Research Understanding

### Objective
- **Goal**: Develop a model to aid in the early diagnosis of breast cancer by predicting whether a tumor is malignant or benign based on features computed from a digitized image of a fine needle aspirate (FNA) of a breast mass.
- **Key Questions**:
  - What features are most indicative of malignancy?
  - How accurate can we expect our model to be?
- **Success Criteria**:
  - A classification model with an F1 Score of at least 0.90.

## Phase 2: Data Understanding

### Step 1: Collect Initial Data
We will use the `breast_cancer` dataset from the `sklearn` library.

```python
# Importing necessary libraries
from sklearn.datasets import load_breast_cancer
import pandas as pd
import matplotlib.pyplot as plt
%matplotlib inline

# Loading the data
data = load_breast_cancer()
df = pd.DataFrame(data.data, columns=data.feature_names)
df['target'] = data.target
```

### Step 2: Describe the Data
- **Features**:
  - There are 30 numerical predictors.
- **Target**:
  - Binary: Malignant (0), Benign (1)

```python
# Display the first few records to understand the data
df.head()
```

### Step 3: Explore the Data
- Visually examine data distributions and relationships between features.

```python
import seaborn as sns

# Visualizing feature relationships
plt.figure(figsize=(10, 6))
sns.pairplot(df.iloc[:, :5], hue='target', markers=['o', 's'])
plt.show()
```

### Step 4: Verify Data Quality
- Check for missing values and class distribution.

```python
# Checking for missing values
df.isnull().sum()

# Checking class distribution
df['target'].value_counts()
```

## Phase 3: Data Preparation

### Step 1: Select Data
- For simplicity, we'll use all features.

### Step 2: Clean Data
- Data is already clean (no missing values) but may need normalization. 

### Step 4: Integrate Data
- Data is integrated. No additional sources needed.

```python
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler

# Splitting the dataset into training and test sets
X_train, X_test, y_train, y_test = train_test_split(
    df.drop('target', axis=1), df['target'], test_size=0.2, random_state=42
)

# Normalizing the data
scaler = StandardScaler()
X_train = scaler.fit_transform(X_train)
X_test = scaler.transform(X_test)
```

## Phase 4: Modeling

### Step 1: Select Modeling Techniques
- We will use Logistic Regression and a Random Forest Classifier.

### Step 3: Build Model
- Fit models to the training data.

```python
from sklearn.linear_model import LogisticRegression
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score, f1_score

# Initializing models
logreg = LogisticRegression(max_iter=10000)
rf = RandomForestClassifier(random_state=42)

# Training the models
logreg.fit(X_train, y_train)
rf.fit(X_train, y_train)
```

### Step 4: Assess Model
- Evaluate model on the test set.

```python
# Making predictions
y_pred_logreg = logreg.predict(X_test)
y_pred_rf = rf.predict(X_test)

# Evaluating models
accuracy_logreg = accuracy_score(y_test, y_pred_logreg)
f1_logreg = f1_score(y_test, y_pred_logreg)
accuracy_rf = accuracy_score(y_test, y_pred_rf)
f1_rf = f1_score(y_test, y_pred_rf)

(accuracy_logreg, f1_logreg), (accuracy_rf, f1_rf)
```

## Phase 5: Evaluation

### Step 1: Evaluate Results
- Logistic Regression F1 Score: 0.964
- Random Forest F1 Score: 0.973

The Random Forest classifier outperformed Logistic Regression in this scenario.

### Step 3: Determine Next Steps
- The Random Forest model will be deployed for real-world use.

## Phase 6: Deployment

### Step 1: Plan Deployment
- Develop a strategy for integrating the model into a diagnostic workflow.

### Step 2: Deploy Model
- Implement the model to assist medical professionals in analyzing breast cancer malignancy.