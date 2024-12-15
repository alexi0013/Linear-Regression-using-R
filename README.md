# Linear-Regression-using-R

# Statistical Analysis for AI

## Objective
This project explores the relationship between study hours and grades in the "Statistical for AI" course. Using synthetic data and statistical analysis in R, the study aims to determine whether study hours significantly predict course performance.

---

## Data Generation
A synthetic dataset was manually created in R to simulate the relationship between grades and study hours. The dataset includes:

- **Grade_Statistical_for_AI**: Simulated grades for the course (70-100 range with some outliers).
- **Hours_Invested_Learning**: Study hours ranging from 1 to 60 hours, with a subset of students studying very few hours.
- **Pre_Knowledge_Statistics**: Boolean variable indicating prior knowledge of statistics ("Yes"/"No").

---

## Visualizations

### Scatter Plot
A scatter plot was created to visualize the relationship between grades and study hours. The plot revealed a positive trend: higher study hours generally correspond to better grades. Some outliers were also visible, particularly students with low grades despite moderate study hours.

### Box Plot
A box plot was generated for `Hours_Invested_Learning` to further explore outliers and data distribution. The plot confirmed the presence of outliers in study hours, particularly in the lower range.

---

## Linear Regression Analysis

To quantitatively assess the relationship, a linear regression analysis was performed:

### Results
- **Intercept (β0)**: 51.2580
  - Interpretation: If a student invests 0 hours, their predicted grade is approximately 51.26.
- **Slope (β1)**: 0.7394
  - Interpretation: For every additional hour invested, the grade is predicted to increase by 0.7394 points.
- **Significance**: Both the intercept and slope were statistically significant, confirming that study hours strongly predict grades.

### Model Fit
- **R²**: The model explains approximately 75% of the variability in grades.
- **Adjusted R²**: This adjusted measure accounts for the number of predictors, confirming a strong fit.

---

## Residual Analysis

### Q-Q Plot
A Q-Q plot was used to assess the normality of residuals. The plot showed that the residuals generally follow a normal distribution, with slight deviations at the tails.

### Histogram
A histogram of residuals confirmed that the residuals are approximately normal, with a slight skew, aligning well with the model assumptions.

---

## Summary

The analysis demonstrates a significant positive relationship between study hours and grades. This aligns with expectations that increased effort correlates with better performance. The regression model's fit and residual analysis validate the assumptions and reliability of the results.

---
