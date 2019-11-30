> install.packages("RSQLite")
##package ‘bit’ successfully unpacked and MD5 sums checked
##package ‘bit64’ successfully unpacked and MD5 sums checked
##package ‘blob’ successfully unpacked and MD5 sums checked
##package ‘DBI’ successfully unpacked and MD5 sums checked
##package ‘memoise’ successfully unpacked and MD5 sums checked
> library(DBI)
> library(RSQLite)
##created connection with library
```R
1. Назва статті (Title), тип виступу (EventType). Необхідно вибрати тільки статті
с типом виступу Spotlight. Сортування по назві статті.
```
> conn <- dbConnect(RSQLite::SQLite(), "E:\\database (1).sqlite")
> res <- dbSendQuery(conn, "SELECT Title, EventType FROM Papers WHERE EVENTTYPE ='Spotlight' ORDER BY Title" )
> df <- dbFetch(res, 20)
> dbClearResult(res) 
> dbDisconnect(conn)
> df
   Title
1  A Tractable Approximation to Optimal Point Process Filtering: Application to Neural Encoding
2                                    Accelerated Mirror Descent in Continuous and Discrete Time
3                        Action-Conditional Video Prediction using Deep Networks in Atari Games
4                                                                      Adaptive Online Learning
5                          Asynchronous Parallel Stochastic Gradient for Nonconvex Optimization
6                                                 Attention-Based Models for Speech Recognition
7                                                       Automatic Variational Inference in Stan
8                                   Backpropagation for Energy-Efficient Neuromorphic Computing
9                       Bandit Smooth Convex Optimization: Improving the Bias-Variance Tradeoff
10                         Biologically Inspired Dynamic Textures for Probing Motion Perception
11                        Closed-form Estimators for High-dimensional Generalized Linear Models
12             Collaborative Filtering with Graph Information: Consistency and Scalable Methods
13                           Color Constancy by Learning to Predict Chromaticity from Luminance
14                                                Data Generation as Sequential Decision Making
15                      Decoupled Deep Neural Network for Semi-supervised Semantic Segmentation
16                                                  Deep Convolutional Inverse Graphics Network
17                                                     Deep learning with Elastic Averaging SGD
18                            Distributed Submodular Cover: Succinctly Summarizing Massive Data
19                                                  Distributionally Robust Logistic Regression
20                                          Efficient and Parsimonious Agnostic Active Learning
   EventType
1  Spotlight
2  Spotlight
3  Spotlight
4  Spotlight
5  Spotlight
6  Spotlight
7  Spotlight
8  Spotlight
9  Spotlight
10 Spotlight
11 Spotlight
12 Spotlight
13 Spotlight
14 Spotlight
15 Spotlight
16 Spotlight
17 Spotlight
18 Spotlight
19 Spotlight
20 Spotlight
##entered 20 first rows of db Papers with some conditions

```R
2. Ім’я автора (Name), Назва статті (Title). Необхідно вивести всі назви статей
для автора «Josh Tenenbaum». Сортування по назві статті
```
conn <- dbConnect(RSQLite::SQLite(), "E:\\database (1).sqlite")
res2 <- dbSendQuery(conn, "SELECT  authors.name,  Papers.title FROM authors JOIN PaperAuthors ON authors.Id=PaperAuthors.AuthorId JOIN Papers ON Papers.Id=PaperAuthors.paperid WHERE Name='Josh Tenenbaum' ORDER by Title;")
df <- dbFetch(res2,5) 
dbClearResult(res2) 
dbDisconnect(conn) 
> df
            Name
1 Josh Tenenbaum
2 Josh Tenenbaum
3 Josh Tenenbaum
4 Josh Tenenbaum
                                                                                              Title
1                                                       Deep Convolutional Inverse Graphics Network
2 Galileo: Perceiving Physical Object Properties by Integrating a Physics Engine with Deep Learning
3                                                Softstar: Heuristic-Guided Probabilistic Inference
4                                                        Unsupervised Learning by Program Synthesis

```R
3. Вибрати всі назви статей (Title), в яких є слово «statistical». Сортування по
назві статті.
```
> conn <- dbConnect(RSQLite::SQLite(), "E:\\database (1).sqlite")
> res3 <- dbSendQuery(conn, "SELECT Title FROM Papers WHERE Title LIKE '%statistical%' ORDER BY Title;")
> df <- dbFetch(res3, 10)
> dbClearResult(res3)
> dbDisconnect(conn)
> df
                                                                                 Title
1 Adaptive Primal-Dual Splitting Methods for Statistical Learning and Image Processing
2                                Evaluating the statistical significance of biclusters
3                  Fast Randomized Kernel Ridge Regression with Statistical Guarantees
4     High Dimensional EM Algorithm: Statistical Optimization and Asymptotic Normality
5                Non-convex Statistical Optimization for Sparse Tensor Graphical Model
6            Regularized EM Algorithms: A Unified Framework and Statistical Guarantees
7                            Statistical Model Criticism using Kernel Two Sample Tests
8                         Statistical Topological Data Analysis - A Kernel Perspective
```R
4. Ім’я автору (Name), кількість статей по кожному автору (NumPapers).
Сортування по кількості статей від більшої кількості до меньшої.
```

