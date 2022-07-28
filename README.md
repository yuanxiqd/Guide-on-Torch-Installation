# Guide-on-Torch-Installation
Something will be displayed here to help guys smoothly install the torch in anaconda.

> ## Environment Settings:
> * Windows 10
> * Anaconda

> ## Problem 1: Found conflicts! Looking for incompatible packages
> * Example: conda install -c opencv
> * Solution: conda install -c conda-forge opencv
> * Source: [CSDN Technical Article](https://blog.csdn.net/weixin_44627799/article/details/112597182)

> ## Problem 2: The port 8888 has already been used.
> 1. Check PID: lsof -i :8888
> 2. Kill program: kill -9 PIP
> 3. Check again whether some port is still used now: jupyter notebook list