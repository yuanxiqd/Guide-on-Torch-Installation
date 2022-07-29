# Guide-on-Torch-Installation
Something will be displayed here to help guys smoothly install the torch in anaconda.

> ## Environment Settings:
> * Windows 10
> * WSL1 -> Linux Ubuntu-20.04
> * Anaconda

> ## Problem 1: Found conflicts! Looking for incompatible packages
> * Example: `conda install -c opencv`
> * Solution: `conda install -c conda-forge opencv`
> * Source: [CSDN Technical Article](https://blog.csdn.net/weixin_44627799/article/details/112597182)

> ## Problem 2: The port 8888 has already been used.
> 1. Check PID: `lsof -i :8888`
> 2. Kill program: `kill -9 PIP`
> 3. Check again whether some port is still used now: jupyter notebook list

> ## Problem 3: WSL1 vs. WSL2
> 1. WSL1 is convenient for the local access in terms of using jupyter notebook but is not convenient for the missing function of GPU computing - `torch.cuda.is_available()`.
> 2. WSL2 enbles the GPU computing which means `torch.cuda.is_available()` will be true. However, linux system in WSL2 adopts the NAT net structure that results in the inconvenient use of other terminals in LAN.
> 3. Solution: change the WSL version without uninstalling and reinstalling operations: `wsl --set-version <distribution name> <versionNumber>`
> 4. Parameter - Version: 1 or 2
> 5. Microsoft Source: [Basic Command of WSL](https://docs.microsoft.com/zh-cn/windows/wsl/basic-commands)

> ## Problem 4: Appropriate setting of /home/username/.condarc will speed up the download of relevant python packages
> 1. Tsinghua Mirror: [Anaconda Settings](https://mirrors.tuna.tsinghua.edu.cn/help/anaconda/)
> 2. SUSTech Mirror: [Anaconda Settings](https://mirrors.sustech.edu.cn/help/anaconda.html#configuration)

Note: The aforementioned problem sets including their potential solutions are almost collected from different sources. I always try to attach the source link for each item so as to help someone check the initial technical article. If you still have some questions about this, please feel free to contact me here or by [Email](lyqiaodong@gmail.com).