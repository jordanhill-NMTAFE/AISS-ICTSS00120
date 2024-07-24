Lab Sheet: Introduction to Kaggle and Data Cleaning

### Objective:
By the end of this lab, students will:
- Understand how to load and explore a dataset in Kaggle.
- Perform initial Exploratory Data Analysis (EDA) on the dataset.
- Identify and address potential biases in the data.
- Visualize key statistics and data distributions.

### Prerequisites:
- Kaggle account (free signup).
- Familiarity with Python and basic data analysis libraries (`pandas`, `numpy`, `matplotlib`).

### Steps:
1. **Log In to Kaggle:**
   - Go to [Kaggle](https://www.kaggle.com/) and log in to your account.
   - If you do not have an account, sign up for one.

2. **Find a Dataset:**
   - Navigate to the "Datasets" section on Kaggle.
   - Choose a dataset that interests you (e.g., "Titanic: Machine Learning from Disaster" or "Iris Species").
   - Remember the dataset URL or download the dataset to your Kaggle environment.

3. **Create a New Notebook:**
   - From the Kaggle homepage, click on "Notebooks".
   - Create a new notebook.
   - Select your chosen dataset to be used in the notebook.

4. **Load the Dataset in the Notebook:**
   - Use the following code snippet to load your dataset into a `pandas` DataFrame:
     ```python
     import pandas as pd

     # Adjust the file path according to your dataset's location on Kaggle
     df = pd.read_csv('/path/to/your/dataset.csv')
     df.head()
     ```
   - Display the first few rows of the dataset using `df.head()` to ensure it has loaded correctly.

5. **Perform Initial Exploratory Data Analysis (EDA):**
   - Check the structure of the dataset using:
     ```python
     df.info()
     df.describe()
     ```
   - Look for any missing values:
     ```python
     df.isnull().sum()
     ```

6. **Visualize Basic Statistics and Charts:**
   - Plot histograms for numerical columns:
     ```python
     import matplotlib.pyplot as plt

     df.hist(bins=50, figsize=(20,15))
     plt.show()
     ```
   - Generate a correlation matrix to understand relationships between variables:
     ```python
     import seaborn as sns

     corr_matrix = df.corr()
     sns.heatmap(corr_matrix, annot=True, cmap='coolwarm')
     plt.show()
     ```

7. **Answer Key Questions with Your Peers:**
   - **What kind of data is this? (structured/unstructured; labelled/unlabelled)**
   - **What preprocessing steps might be necessary?**
   - **What biases might exist in the data?**

8. **Identify and Address Potential Biases:**
   - Discuss with peers how you can identify biases in the dataset.
   - Suggest methods to address any identified biases (e.g., balancing classes, handling missing values).

9. **Split the Data into Training, Validation, and Test Sets:**
   - Use `train_test_split` to split the data into subsets:
     ```python
     from sklearn.model_selection import train_test_split

     train_set, test_set = train_test_split(df, test_size=0.2, random_state=42)
     ```

10. **Summarize Your Findings:**
    - Write a brief summary of your findings and any preprocessing steps taken.
    - Discuss any challenges faced during the analysis and how you addressed them.

### Deliverables:
- A Kaggle notebook with all the code and visualizations.
- Brief written summary (in markdown cells within the notebook) of:
  - Initial findings from the EDA.
  - Identified biases and how they were addressed.
  - Data preprocessing steps taken.
