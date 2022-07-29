# Guide-on-Torch-Installation
Something will be displayed here to help guys smoothly install the torch in anaconda.

> ## Environment Settings:
> * Windows 10
> * WSL1 -> Linux Ubuntu-20.04
> * Anaconda

> ## Problem 1: Found conflicts! Looking for incompatible packages
> * Example: conda install -c opencv
> * Solution: conda install -c conda-forge opencv
> * Source: [CSDN Technical Article](https://blog.csdn.net/weixin_44627799/article/details/112597182)

> ## Problem 2: The port 8888 has already been used.
> 1. Check PID: lsof -i :8888
> 2. Kill program: kill -9 PIP
> 3. Check again whether some port is still used now: jupyter notebook list

> ## Problem 3: WSL1 is preferable in terms of the local access
> 1. Default Settings: wsl --set-default-version <Version>
> 2. Parameter - Version: 1 or 2
> 3. Source: [Basic Command of WSL](https://docs.microsoft.com/zh-cn/windows/wsl/basic-commands)

> ## Problem 4: Appropriate setting of /home/username/.condarc will speed up the download of relevant python packages
> 1. Tsinghua Mirror: [Anaconda Settings](https://mirrors.tuna.tsinghua.edu.cn/help/anaconda/)
> 2. SUSTech Mirror: [Anaconda Settings](https://mirrors.sustech.edu.cn/help/anaconda.html#configuration)