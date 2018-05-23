If another app is listening port 8080 that makes glassfish unable to start do the following steps:
    1. netstat -aon | find ":8080" | find "LISTENING" in the cmd
    2. Copy the PID (process identifier) Example: 5850 (this is the PID)
    3. Open Task Manager (Ctrl + Alt + sup) 
    4. Go to details
    5. Search PID
    6. Right Click and End task

    or insted of step 3. 
    write in cmd the following command:
    taskkill /pid pid_number /F (/F means forcelly)