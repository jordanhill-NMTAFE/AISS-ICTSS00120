Lab Sheet: Hyperparameter Tuning and Model Evaluation - Spam Email Detection

Source: https://github.com/justmarkham/pycon-2016-tutorial
Kaggle alternative data set: https://www.kaggle.com/datasets/uciml/sms-spam-collection-dataset

### Objective:
By the end of this lab, students will:
- Understand the importance of hyperparameter tuning in machine learning.
- Implement a spam email detection system using scikit-learn.
- Perform hyperparameter tuning using GridSearchCV.
- Evaluate the model's performance using various metrics.

### Prerequisites:
- Basic understanding of Python programming.
- Familiarity with machine learning concepts and libraries (scikit-learn).
- A working Python environment with necessary libraries installed.

### Steps:

1. **Set Up the Environment:**
   - Ensure `scikit-learn` is installed:
     ```bash
     pip install scikit-learn
     ```

2. **Load the Dataset:**
   - Download the spam dataset (e.g., SMS Spam Collection Dataset).
   - Load the dataset into a pandas DataFrame:
     ```python
     import pandas as pd

     # Load the dataset
     url = "https://raw.githubusercontent.com/justmarkham/pycon-2016-tutorial/master/data/sms.tsv"
     df = pd.read_csv(url, delimiter='\t', header=None, names=['label', 'message'])

     # Label encoding
     df['label'] = df['label'].map({'ham': 0, 'spam': 1})
     df.head()
     ```

3. **Preprocess the Data:**
   - Clean and preprocess the text data:
     ```python
     import re
     from sklearn.model_selection import train_test_split
     from sklearn.feature_extraction.text import CountVectorizer, TfidfTransformer

     # Text preprocessing function
     def preprocess_text(text):
         text = text.lower()
         text = re.sub(r'\b\w{1,2}\b', '', text)
         text = re.sub(r'[^a-zA-Z\s]', '', text)
         return text

     df['message'] = df['message'].apply(preprocess_text)

     # Split the data
     X_train, X_test, y_train, y_test = train_test_split(df['message'], df['label'], test_size=0.2, random_state=42)

     # Vectorization
     count_vectorizer = CountVectorizer()
     X_train_counts = count_vectorizer.fit_transform(X_train)
     tfidf_transformer = TfidfTransformer()
     X_train_tfidf = tfidf_transformer.fit_transform(X_train_counts)
     ```

4. **Define the Model and Perform Hyperparameter Tuning:**
   - Implement a simple model (e.g., Naive Bayes) and use GridSearchCV for hyperparameter tuning:
     ```python
     from sklearn.naive_bayes import MultinomialNB
     from sklearn.model_selection import GridSearchCV

     # Define the model
     model = MultinomialNB()

     # Define hyperparameters and GridSearchCV
     param_grid = {
         'alpha': [0.1, 0.5, 1.0, 1.5, 2.0]
     }
     grid_search = GridSearchCV(model, param_grid, cv=5, scoring='accuracy')
     grid_search.fit(X_train_tfidf, y_train)

     # Best parameters and model
     best_params = grid_search.best_params_
     best_model = grid_search.best_estimator_
     print(f"Best Parameters: {best_params}")
     ```

5. **Evaluate the Model:**
   - Transform the test data and evaluate the model:
     ```python
     X_test_counts = count_vectorizer.transform(X_test)
     X_test_tfidf = tfidf_transformer.transform(X_test_counts)

     y_pred = best_model.predict(X_test_tfidf)

     from sklearn.metrics import accuracy_score, precision_score, recall_score, f1_score, confusion_matrix, classification_report

     accuracy = accuracy_score(y_test, y_pred)
     precision = precision_score(y_test, y_pred)
     recall = recall_score(y_test, y_pred)
     f1 = f1_score(y_test, y_pred)
     cm = confusion_matrix(y_test, y_pred)
     report = classification_report(y_test, y_pred)

     print(f"Accuracy: {accuracy}")
     print(f"Precision: {precision}")
     print(f"Recall: {recall}")
     print(f"F1 Score: {f1}")
     print(f"Confusion Matrix:\n{cm}")
     print(f"Classification Report:\n{report}")
     ```

6. **Visualize Results:**
   - Visualize the confusion matrix:
     ```python
     import matplotlib.pyplot as plt
     import seaborn as sns

     sns.heatmap(cm, annot=True, fmt='d', cmap='Blues', xticklabels=['Ham', 'Spam'], yticklabels=['Ham', 'Spam'])
     plt.xlabel('Predicted')
     plt.ylabel('Actual')
     plt.title('Confusion Matrix')
     plt.show()
     ```

7. **Summary and Discussion:**
   - Summarize the key steps taken during the lab.
   - Discuss the model's performance, any challenges faced, and how they were addressed.

### Deliverables:
- A complete Jupyter notebook or code file with all implementations and visualizations.
- Short write-up (in markdown cells within the notebook) summarizing findings, challenges, and learnings.