
# installation repository
https://github.com/aquasecurity/kube-bench/releases/tag/v0.4.0



# unzip kube-bench
# 2 files (one of thme folder) will be unarchived
 tar xvf kube-bench_0.4.0_linux_amd64.tar.gz


# command points to configuration dir which is als comes with kube bench
 ./kube-bench --config-dir `pwd`/cfg --config `pwd`/cfg/config.yaml





# some kubernetes options : 
# kube controller manger
 --terminated-pod-gc-threshold=10 
 --feature-gates=RotateKubeletServerCertificate=true

 # kube scheduler 
 --profiling=false