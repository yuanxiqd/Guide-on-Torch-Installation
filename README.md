# Guide-on-Torch-Installation
Something will be displayed here to help guys smoothly install the torch in anaconda.

7.1 - Difference of Two Independent Normal Variables
In the previous Lessons, we learned about the Central Limit Theorem and how we can apply it to find confidence intervals and use it to develop hypothesis tests. In this section, we will present a theorem to help us continue this idea in situations where we want to compare two population parameters.

As we mentioned before, when we compare two population means or two population proportions, we consider the difference between the two population parameters. In other words, we consider either \(\mu_1-\mu_2\) or \(p_1-p_2\).

We present the theory here to give you a general idea of how we can apply the Central Limit Theorem. We intentionally leave out the mathematical details.

Theorem: Difference of two independent normal variables
Let \(X\) have a normal distribution with mean \(\mu_x\), variance \(\sigma^2_x\), and standard deviation \(\sigma_x\).

Let \(Y\) have a normal distribution with mean \(\mu_y\), variance \(\sigma^2_y\), and standard deviation \(\sigma_y\).

If \(X\) and \(Y\) are independent, then \(X-Y\) will follow a normal distribution with mean \(\mu_x-\mu_y\), variance \(\sigma^2_x+\sigma^2_y\), and standard deviation \(\sqrt{\sigma^2_x+\sigma^2_y}\).

The idea is that, if the two random variables are normal, then their difference will also be normal. This is wonderful but how can we apply the Central Limit Theorem?

If \(X\) and \(Y\) are normal, we know that \(\bar{X}\) and \(\bar{Y}\) will also be normal. If \(X\) and \(Y\) are not normal but the sample size is large, then \(\bar{X}\) and \(\bar{Y}\) will be approximately normal (applying the CLT). Using the theorem above, then \(\bar{X}-\bar{Y}\) will be approximately normal with mean \(\mu_1-\mu_2\).

This is great! This theory can be applied when comparing two population proportions, and two population means. The details are provided in the next two sections.