# Insiders Loyalty Program (Under Development)

### Unsupervised Learning - Clustering Project

<img src="image/cover_loyalty_program.png" width="1000">

## 1. Abstract

This repository contains the solution of clustering valuable clients in order to launch a loyalty program called Insiders

**Keywords:** Python, Pandas

## 2. Methodology

The CRISP-DM methodology was the guide for this data science project development. 

CRISP-DM, which stands for Cross-Industry Standard Process for Data Mining, is an industry-proven way to guide your data mining efforts and it includes descriptions of the typical phases of a project, the tasks involved with each phase, and an explanation of the relationships between these tasks.

<img src="image/crisp_process.jpg" width="500">

**Source:* [IBM Docs](https://www.ibm.com/docs/en/spss-modeler/18.2.0?topic=dm-crisp-help-overview)

To direct your reading, below are links to the development carried out at each stage of the CRISP cycle:

* [Business Understanding](https://github.com/vitorhmf/loyalty-program#3-business-understanding)
* [Data Understanding](https://github.com/vitorhmf/loyalty-program#4-data-understanding)
* [Data Preparation](https://github.com/vitorhmf/loyalty-program#5-data-preparation)
* [Machine Learning Modeling](https://github.com/vitorhmf/loyalty-program#6-machine-learning-modeling)
* [Evaluation](https://github.com/vitorhmf/loyalty-program#7-evaluation)
* [Depoyment](https://github.com/vitorhmf/loyalty-program#8-deployment)

## 3. Business Understanding

### 3.1. Context

The company All in One Place is a Multibrand Outlet that sells second-line products from various brands at a lower price, through an e-commerce.

In just over 1 years of operation, the business team realized that some customers from its base buy more expensive products, with high frequency and end up contributing a significant portion of the company's revenue. Based on this perception, the marketing team decided to launch a loyalty program for the best customers in the base, called Insiders.

This project aims to solve the demand to carry out a selection of customers eligible for the Insiders program, using advanced data manipulation techniques.

The clustering will be performed from a dataset with 541,909 purchase records, 4,373 customers and carried out between December 2010 and December 2011. The attributes are described below:


| Feature                | Definition                                                                                               |
|------------------------|----------------------------------------------------------------------------------------------------------|
| Invoice Number         | Unique identifier for each transaction                                                                   |
| Stock Code Product     | Item code                                                                                                |
| Description Product    | Item name                                                                                                |
| Quantity               | The quantity of each item purchased per transaction                                                      |
| Invoice Date           | The day the transaction took place                                                                       |
| Unit Price             | Product price per unit                                                                                   |
| Customer ID            | Unique customer identifier                                                                               |
| Country                | The name of the country the customer resides in                                                          |

*Source:* [Kaggle](https://www.kaggle.com/datasets/carrie1/ecommerce-data)

### 3.2. Business assumption: 

[Back to the top](https://github.com/vitorhmf/loyalty-program#2-methodology)

## 4. Data Understanding

### 4.1. Data Cleaning

To build an overview of the data, the following steps were performed:
* Change the columns name to sneak_case;
* Shows the data dimensions (rows and columns);
* Check and Fillout NA: The initial dataset contained 135,080 records without the customer id. As it represents about 25% of the dataset, this data could not be simply disregarded. To solve this problem, customers ids were created starting from the number 19000 for each record that did not contain this attribute.

### 4.2 Data Descriptive: 

A quick descriptive analysis of numerical and categorical variables was performed.
 
**Numerical Attributes:**

<img src="image/num_attributes.png" width="700">

Negative quantity and unit price indicate returns. These cases will be dealt with later.

**Categorical Attributes:**

<img src="image/cat_attributes.png" width="700">

The fact that the invoice number and stock code features appear as categorical attributes indicates that we have some records that have letters in their compositions and not just numbers as would normally be expected.

### 4.3. Data Filtering

* **Bad Users:** customers who had the number of returned items greater than or equal to the number of purchased items were excluded from the analysis.
* **Categorical Attributes:** because we don't have more information, stock codes that were words or letters were filtered. And for not contributing to the clustering process, the description feature was removed from the dataset
* **Numerical Attributes:** Purchasing records with values less than $0.04 were filtered

### 4.4. Feature Engineering

In this step, the following features were created:
* **Gross Revenue:** quantity multiplied by the unit price.
* **Recency:** number of days since last purchase.
* **Quantity of purchases:** quantity of purchases of each customer.
* **Quantity of products:** quantity of different products purchased by each customer.
* **Quantity of items:** total amount of items purchased by each customer.
* **Frequency:** average amount of purchases made per day by a customer.
* **Returns:** total amount of items returned by each customer.
* **Satisfaction Rate:** % of items that were not returned by each customer.

### 4.5. Exploratory Data Analysis

The Exploratory Data Analysis was performed using the pandas profiling package. 

[Back to the top](https://github.com/vitorhmf/loyalty-program#2-methodology)

## 5. Data Preparation

### 5.1 Feature Transformation

### 5.2 Feature Selection: 

[Back to the top](https://github.com/vitorhmf/loyalty-program#2-methodology)

## 6. Machine Learning Modeling

[Back to the top](https://github.com/vitorhmf/loyalty-program#2-methodology)

## 7. Evaluation

[Back to the top](https://github.com/vitorhmf/loyalty-program#2-methodology)

## 8. Deployment

[Back to the top](https://github.com/vitorhmf/loyalty-program#2-methodology)

## 9. Conclusion

### 9.1. Business Results

### 9.2. Next Steps

[Back to the top](https://github.com/vitorhmf/loyalty-program#2-methodology)

## 10. References

* [IBM Docs](https://www.ibm.com/docs/en/spss-modeler/18.2.0?topic=dm-crisp-help-overview)
* [Kaggle](https://www.kaggle.com/datasets/carrie1/ecommerce-data)
* [Comunidade DS](https://www.comunidadedatascience.com/)

[Back to the top](https://github.com/vitorhmf/loyalty-program#2-methodology)


