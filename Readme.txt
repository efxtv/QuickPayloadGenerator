Please
 ____  _   _ ____ ____   ____ ____  ___ ____  _____ 
/ ___|| | | | __ ) ___| / ___|  _ \|_ _| __ )| ____|
\___ \| | | |  _ \___ \| |   | |_) || ||  _ \|  _|  
 ___) | |_| | |_) |__) | |___|  _ < | || |_) | |___ 
|____/ \___/|____/____/ \____|_| \_\___|____/|_____|
                                                    
EFX Tv for more awesome tutorial related to bash, python, html, js, etc


READ IT CareFully

Please read this before you run the bash file QuickPayloadGenerator.sh.
1. There are a few things you need to be ready with before you start.
2. Make sure Metasploit installed. If you have not installed yet. You can click here to install Metasploit in just a single click.
3. Run PostgreSQL sudo service pastgresql start
4. Make sure Metasploit should be connected to the MSF database. Watch THIS video carefully if you face the error.
5. Check if there is any program listening to port 4444 if the program exists, simply kill the process.
6. To check for all the services running on port 4444 run command written below
lsof -i:4444
kill -9 <SID> 
7. Now you are ready to run QuickPayloadGenerator.sh
