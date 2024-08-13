## In-Class Activity: Applying Sci-Kit Learn

### Activity Overview
- **Objective:** Apply various machine learning techniques using the sci-kit learn package to a sample dataset.
- **Tools Needed:** Jupyter Notebook, Sci-Kit Learn, Python

### Steps:
1. **Set Up Environment:**
   - Open a Jupyter Notebook (Kaggle or Colab).
   - Import necessary libraries: `pandas`, `numpy`, `matplotlib`, and `sklearn`.

2. **Load and Explore Dataset:**
   - Choose a dataset (e.g., Iris, Titanic, or any dataset from sklearn or Kaggle).
   - Load the dataset into a DataFrame.
   - Perform initial exploratory data analysis (EDA) to understand the data (e.g., `df.describe()`, `df.info()`).

3. **Apply Supervised Learning Techniques:**
   - **Linear Regression:** Implement and fit a simple linear regression model.
     ```python
     from sklearn.linear_model import LinearRegression
     model = LinearRegression()
     # Fit the model
     model.fit(X_train, y_train)
     ```
   - **Support Vector Machines (SVM):** Implement and fit an SVM model.
     ```python
     from sklearn.svm import SVC
     model = SVC()
     # Fit the model
     model.fit(X_train, y_train)
     ```

4. **Apply Unsupervised Learning Techniques:**
   - **K-Means Clustering:** Implement and fit a K-Means model.
     ```python
     from sklearn.cluster import KMeans
     kmeans = KMeans(n_clusters=3)
     kmeans.fit(X)
     ```
   - **Principal Component Analysis (PCA):** Apply PCA for dimensionality reduction.
     ```python
     from sklearn.decomposition import PCA
     pca = PCA(n_components=2)
     X_pca = pca.fit_transform(X)
     ```

5. **Evaluation:**
   - Evaluate the models using appropriate metrics (e.g., accuracy, R-squared score).
     ```python
     from sklearn.metrics import accuracy_score, r2_score
     y_pred = model.predict(X_test)
     accuracy = accuracy_score(y_test, y_pred)
     r2 = r2_score(y_test, y_pred)
     print(f'Accuracy: {accuracy}, R^2 Score: {r2}')
     ```

6. **Discussion:**
   - Discuss the results with peers.
   - Reflect on the performance of different techniques.
   - Identify potential biases or issues in the dataset and model.