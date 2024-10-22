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

> ## Problem 5: Register the new env in the kernel of jupyter notebook
> 1. Solution: python -m ipykernel install --user --name <EnvName>

> ## Problem 6: Eable ssl in WSL2
> 1. Edit: `sudo vim /etc/ssh/sshd_config`
> 2. Update or Uncomment:
> ``` 
> Port 8888 # any port ID you like
> AddressFamily any
> ListenAddress 0.0.0.0
> ListenAddress ::
> PasswordAuthentication yes
> ```
> 3. Restart sshd: `sudo service ssh --full-restart`
> 4. Access by ssh: `ssh username@localhost -p <PortNumber>`
> 5. Reference: [Zhihu Technical Article](https://zhuanlan.zhihu.com/p/534373868)

> ## Problem 7: Enable local access for jupyter notebook in WSL2
> 1. Open Firewall Port: create a new inbound rule `conn for WSL`
> 2. Remove previous port forwarding rules: `netsh interface portproxy delete v4tov4 listenport=8888 listenaddress=0.0.0.0`
> 3. Configure Port Mapping: `netsh interface portproxy add v4tov4 listenport=8888 listenaddress=0.0.0.0 connectport=8888 connectaddress=localhost`
> 4. I also pack these two sentences into a bat file so that you can run it as an administrator every time you need to access your jupyter notebook in other computers of your LAN. Download it [here](https://github.com/yuanxiqd/Guide-on-Torch-Installation/blob/5a182c99734e0464fe94edf953e32dc60778ea84/setup%20local%20access%20for%20WSL2.bat). Of course, you can edit it to follow your own settings.
> 5. Reference: 
> > [1] [Zhihu Technical Article](https://zhuanlan.zhihu.com/p/425312804)\
> > [2] [Microsoft Technical Article](https://github.com/microsoft/WSL/issues/4150)

> ## Problem 8: Tensorflow
> 1. pip install --extra-index-url https://pypi.nvidia.com tensorflow[and-cuda]

Note: The aforementioned problem sets including their potential solutions are almost collected from different sources. I always try to attach the source link for each item so as to help someone check the initial technical article. If you still have some questions about this, please feel free to contact me here or by [Email](lyqiaodong@gmail.com).
