These metrics are fundamental for various stages in data science and machine learning workflows, from data exploration and cleaning to model evaluation and interpretation. Understanding when and how to use them is essential for effective analysis and model development.


### Descriptive Statistics

1. **Mean (Average)**
   - **Definition:** The sum of all data points divided by the number of data points.
   - **Uses:** Measures central tendency. Useful for understanding the overall level of a dataset.

2. **Median**
   - **Definition:** The middle value when the data points are ordered.
   - **Uses:** Measures central tendency, especially useful for skewed distributions.

3. **Mode**
   - **Definition:** The most frequently occurring value(s) in the dataset.
   - **Uses:** Identifies the most common value(s) in a dataset.

4. **Variance**
   - **Definition:** The average of the squared differences between each data point and the mean.
   - **Uses:** Measures the spread of data points. Higher variance indicates more spread out data.

5. **Standard Deviation**
   - **Definition:** The square root of the variance.
   - **Uses:** Provides a measure of the spread of data around the mean.

6. **Range**
   - **Definition:** The difference between the maximum and minimum values.
   - **Uses:** Measures the spread of the data.

7. **Interquartile Range (IQR)**
   - **Definition:** The difference between the third quartile (Q3) and the first quartile (Q1).
   - **Uses:** Measures the spread of the middle 50% of the data, less sensitive to outliers.

### Inferential Statistics

1. **Confidence Interval**
   - **Definition:** A range of values, derived from the sample data, that is likely to contain the true population parameter.
   - **Uses:** Provides a measure of uncertainty around sample estimates.

2. **Hypothesis Testing**
   - **Common Metrics:** p-value, t-statistic, z-statistic.
   - **Uses:** Determines whether there is enough evidence to reject a null hypothesis. Used to compare means, proportions, etc.

3. **Correlation Coefficient**
   - **Types:** Pearson, Spearman, Kendall.
   - **Definition:** Measures the strength and direction of a linear relationship between two variables.
   - **Uses:** Identifies relationships between variables.

### Regression Metrics

1. **Mean Absolute Error (MAE)**
   - **Definition:** The average of the absolute differences between predicted and actual values.
   - **Uses:** Measures the accuracy of regression models.

2. **Mean Squared Error (MSE)**
   - **Definition:** The average of the squared differences between predicted and actual values.
   - **Uses:** Penalizes larger errors more than MAE due to squaring, useful for regression model evaluation.

3. **Root Mean Squared Error (RMSE)**
   - **Definition:** The square root of the MSE.
   - **Uses:** Similar interpretation as standard deviation, more sensitive to large errors.

4. **R-squared (Coefficient of Determination)**
   - **Definition:** The proportion of the variance in the dependent variable that is predictable from the independent variable(s).
   - **Uses:** Measures the goodness of fit of a regression model.

5. **Adjusted R-squared**
   - **Definition:** Adjusted version of R-squared that accounts for the number of predictors in the model.
   - **Uses:** Helps to compare models with different numbers of predictors.

### Classification Metrics

1. **Accuracy**
   - **Definition:** The ratio of correctly predicted instances to the total instances.
   - **Uses:** Measures the overall effectiveness of a classification model.

2. **Precision**
   - **Definition:** The ratio of true positive predictions to the sum of true positive and false positive predictions.
   - **Uses:** Measures the accuracy of positive predictions.

3. **Recall (Sensitivity, True Positive Rate)**
   - **Definition:** The ratio of true positive predictions to the sum of true positive and false negative predictions.
   - **Uses:** Measures how well the model identifies positive instances.

4. **F1 Score**
   - **Definition:** The harmonic mean of precision and recall.
   - **Uses:** Provides a single metric that balances precision and recall.

5. **Specificity (True Negative Rate)**
   - **Definition:** The ratio of true negative predictions to the sum of true negative and false positive predictions.
   - **Uses:** Measures how well the model identifies negative instances.

6. **AUC-ROC (Area Under the Receiver Operating Characteristic Curve)**
   - **Definition:** Measures the ability of the model to distinguish between classes.
   - **Uses:** Provides an aggregate measure of performance across all classification thresholds.

7. **Confusion Matrix**
   - **Definition:** A table that summarizes the performance of a classification model.
   - **Uses:** Provides detailed insight into the types of errors made by the model.

### Clustering Metrics

1. **Silhouette Score**
   - **Definition:** Measures how similar an object is to its own cluster compared to other clusters.
   - **Uses:** Evaluates the quality of clustering.

2. **Davies-Bouldin Index**
   - **Definition:** Measures the average similarity ratio of each cluster with its most similar cluster.
   - **Uses:** Assesses the compactness and separation of clusters.

3. **Calinski-Harabasz Index**
   - **Definition:** The ratio of the sum of between-cluster dispersion to within-cluster dispersion.
   - **Uses:** Evaluates the model's ability to form dense and well-separated clusters.

### Dimensionality Reduction Metrics

1. **Explained Variance Ratio**
   - **Definition:** The proportion of the dataset’s variance that is accounted for by each principal component.
   - **Uses:** Evaluates the effectiveness of principal component analysis (PCA).

### Time Series Metrics

1. **Mean Absolute Percentage Error (MAPE)**
   - **Definition:** The average of the absolute percentage errors between predicted and actual values.
   - **Uses:** Evaluates the accuracy of time series forecasting models.

2. **Autocorrelation**
   - **Definition:** Measures the correlation of a time series with a lagged version of itself.
   - **Uses:** Identifies repeating patterns or trends in time series data.

3. **Stationarity Tests (e.g., ADF Test)**
   - **Definition:** Tests whether a time series has constant mean and variance over time.
   - **Uses:** Determines if a time series is stationary, a prerequisite for many models.

### General Goodness-of-Fit Metrics

1. **Chi-Square Test Statistic**
   - **Definition:** Measures the differences between observed and expected frequencies.
   - **Uses:** Tests independence and goodness of fit.

2. **Likelihood Ratio Test**
   - **Definition:** Compares the fit of two models.
   - **Uses:** Model selection and hypothesis testing.

3. **Akaike Information Criterion (AIC) / Bayesian Information Criterion (BIC)**
   - **Definition:** Penalized likelihood criteria for model selection.
   - **Uses:** Selects models by balancing goodness of fit and model complexity.