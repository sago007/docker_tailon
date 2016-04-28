docker-tailon
=============

I needed a simple tailon what I could patch.
This is based on ipedrazas/tailon

First run a conatiner you want to capture the logs from. If your conatiner was not given a name, grab the name and pass it to the Tailon container.

You can also pass a host directory. 

By default the deamon runs as nobody but you can pass another user id. Of course you can run as root by setting "--user=0" but that is a bad idea if you have a mounted host directory.
For an Ubuntu system running as a user that are part of the "adm" group.

The following command will expose /var/log on port 8084 on the local machine:
```
docker run -it -v /var/log:/data --user=1000 -p 8084:8080 sago007/tailon
```


You can watch multiple volumes like this:
```
docker run -it -v /var/log:/data -v /etc:/data1 --user=1000 -p 8084:8080 sago007/tailon /tailon/run.sh "/data1"
```
This exposes both /var/log and /etc

Be warned that these commands are designed for easy testing. On production you do not want to expose /var/log and /etc like that!
