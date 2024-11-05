### LITA-CAPSTONE-PROJECT-2

### Project Overview: 
### Customer Segmentation for a Subscription Service

### Project Description

This project involves a comprehensive analysis of customer data for a subscription-based service. The main goal is to understand and categorize customer behavior by identifying different customer segments based on subscription patterns, engagement levels, and key trends in cancellations and renewals. By segmenting the customer base, we aim to provide actionable insights that can help the company enhance customer retention, target personalized marketing efforts, and ultimately increase overall customer satisfaction and revenue.

### Goals

- Identify Customer Segments: Use customer data to group subscribers into distinct segments based on behavior, subscription type, usage frequency, and engagement.
- Analyze Subscription Trends: Track subscription types and their popularity over time to understand preferences and trends in customer choices.
- Understand Cancellation and Renewal Patterns: Identify factors that contribute to cancellations and renewals, with the aim of recognizing common pain points and opportunities for improved retention.


### Objectives

- Data Collection and Cleaning: Gather and preprocess customer data, ensuring accuracy and consistency for effective analysis.
- Segmentation Analysis: Use clustering techniques (e.g., K-means, hierarchical clustering) to segment customers based on key attributes such as frequency of use, subscription type, and spending behavior.
- Churn Analysis: Investigate trends and factors associated with customer churn, including time since initial subscription, subscription type, and engagement levels.
-Renewal Patterns: Analyze renewal trends by customer segment, subscription type, and usage frequency to identify which segments have the highest likelihood of renewal.


### Tools Used

**Excel**: For initial data cleaning, exploratory data analysis, and summarizing insights.

**SQL**: To query and manipulate customer data, identifying segments based on conditions like subscription type, frequency, and churn status.

**Power BI**: To create dashboards and visualizations that clearly display customer segments, churn rates, and other trends.


### Expected Outcomes

- A clear set of customer segments with descriptions of each segment's characteristics and behavior.
- Insights into key factors driving customer cancellations and renewals.
- Visualizations that highlight subscription trends, renewal patterns, and other important customer behaviors, aiding decision-making for targeted marketing and retention strategies.

### Project Structure

- README.md:Contains the main project documentation, including the project overview,goals, methodology, and results
- Data/: Folder containing data files.
  * Raw_data.csv: The original dataset with customer subscription data
  * Processed_data.csv: The cleaned dataset used for analysis
   
- Scripts/:Contains code script to clean and preprocess the raw data.

- Images/: Folder for visualizations generated in the project
  * customer_segments.png: Visual representation of customer segments.
  * churn_trends.png: Graph showing trends in subscription churn
 
- reports/: Final report or presentation files summarizing findings.
 *summary_report.pdf: PDF report with key insights and recommendations.

  ## Data Description
  The dataset contains subscription service data with the following main attributes:
  - CustomerID: Unique identifier for each customer
  - CustomerName: For more identification with the customer ID
  - Region: Customer Region
  - SubscriptionType: Type of subscription
  - SubscriptionStart: Subscription start date
  - SubscriptionEnd: Subscription end date
  - Canceled: To show active and canceled customer
  - Revenue: Revenue generated by the customer
 
  ### Analysis Methodology
  
  **Data Cleaning**: Removed duplicates
  - Handled missing values and normalized data.
 
    
 I analyze customer data using pivot tables to find subscription patterns.

 ![Sub_Pattern](Sub_Pattern.JPG)

 To calculate the average subscription duration 

 ![Sub_Avg](Sub_Avg.JPG)
 
 identify the most popular subscription types.

 ![Sub_Popular](Sub_Popular.JPG)
 
  
  
  

