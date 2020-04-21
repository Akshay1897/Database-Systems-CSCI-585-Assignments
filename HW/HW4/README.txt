----------------------------------------------------------------------------------------------

QUESTION 1:

Linear Equation :

MEDV = 
            -0.1084 * CRIM +
            0.0458 * ZN +
            2.7187 * CHAS = 1 +
            -17.376 * NOX +
            3.8016 * RM +
            -1.4927 * DIS +
            0.2996 * RAD +
            -0.0118 * TAX +
            -0.9465 * PTRATIO +
            0.0093 * B +
            -0.5226 * LSTAT +
            36.3411

There are 12 terms(including the constant term) in the Linear Equation.


Explanation: 

1.)The Linear Equation contains 11 terms (excluding the constant term) off the 14 attributes in the dataset.
2.)MEDV is not included in those 11 terms as we are predicting it. 

3.)The method I selected for 'Attribute Selection' is the 'M5 attribute selection' method.
4.)What M5 attribute selection method does is, it steps through the attributes, removing the one with the smallest standardised coefficient.
5.)M5 does this until no improvement is observed in the estimation of the error provided by the Akaike information criterion(AIC).

6.)The terms which strongly influence the value of the predicting variable is always selected. 
7.)The variable with positive coefficients are directly proportional to MEDV. As the value of the variable increases, the value of MEDV also increases.
8.)Eg:  RM (average number of rooms per dwelling) and B (1000(Bk - 0.63)^2 where Bk is the proportion of blacks by town) has coefficients of 3.8016 and 0.0093 respectively. 
        This means as the value of RM and B increases the value of MEDV also increases. 
        The difference is just in the rate with which it increases. 
        Since RM has a higher positive value than that of B's, the rate at which MEDV increases as RM increases is greater than the rate at which MEDV increases as B increases.

9.)The same goes with the term that strongly has a negative impact on the predicting variable.
10.)The variable with negative coefficients are indirectly proportional to MEDV. As the value of the variable increases, the value of MEDV decreases.
11.)Eg: NOX (nitric oxides concentration (parts per 10 million)) and TAX (full-value property-tax rate per $10,000) have coefficients of -17.376 and -0.0118 respectively.
        This means as the value of NOX and TAX increases, the value of MEDV decreases.
        The difference is just in the rate with which it decreases. 
        Since NOX has a higher negative value than that of TAX's, the rate at which MEDV decreases as NOX increases is greater than the rate at which MEDV decreases as TAX increases.

12.)The ones which dont have much effect on the variable we are predicting doesn't get included in the Linear Equation.
13.)Eg: INDUS (proportion of non-retail business acres per town) is not included in the Equation.
        This must be because INDUS doesn't have an effect on the value of MEDV.
        And therefore it is not included in the Linear Equation.

----------------------------------------------------------------------------------------------

QUESTION 2:

Lowest RMSE I achieved : 2.5096

Learning Rate   =    0.220
Momentum        =    0.163
(Rest all the hyper parameters are kept as default.)

----------------------------------------------------------------------------------------------

QUESTION 3:

Linear Equation :

num_rings = 
            -0.8249 * sex = I + 
            0.0577 * sex = M +
            -0.4583 * length +
            11.0751 * diameter +
            10.7615 * height +
            8.9754 * whole_weight +
            -19.7869 * shucked_weight +
            -10.5818 * viscera_weight +
            8.7418 * shell_weight +
            3.8946

----------------------------------------------------------------------------------------------

QUESTION 4:

(Sex is the predicted variable in the Decision Tree).

----------------------------------------------------------------------------------------------

QUESTION 5:

Clusters:

Cluster 0 contains 1388 data point items.
Cluster 1 contains 499 data point items.
Cluster 2 contains 448 data point items.
Cluster 3 contains 22 data point items.
Cluster 4 contains 172 data point items.
Cluster 5 contains 1648 data point items.

Total number of data point items is 4177.

----------------------------------------------------------------------------------------------

QUESTION 6:

Linear  Equation :

num_rings = 
            -11.993 * length +
            25.766 * diameter + 
            20.358 * height +
            2.836

----------------------------------------------------------------------------------------------