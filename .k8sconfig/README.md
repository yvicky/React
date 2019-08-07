# Known issues

```Aug 07 08:31:08 ip-172-31-47-162 kubelet[835]: W0807 08:31:08.204556     835 watcher.go:87] Error while processing event ("/sys/fs/cgroup/devices/system.slice/run-redc1387a78bb4ab580fd5153d8cd271b.scope": 0x40000100 == IN_CREATE|IN_ISDIR): inotify_add_watch /sys/fs/cgroup/devices/system.slice/run-redc1387a78bb4ab580fd5153d8cd271b.scope: no such file or directory```

See https://github.com/kubernetes/kubernetes/issues/76531

```Aug 07 08:31:08 <cluster-name-by-default-hostname> kubelet[835]: E0807 08:31:08.425896     835 summary_sys_containers.go:47] Failed to get system container stats for "/system.slice/docker.service": failed to get cgroup stats for "/system.slice/docker.service": failed to get container info for "/system.slice/docker.service": unknown container "/system.slice/docker.service"```

See https://github.com/kubernetes/kubernetes/issues/56850

```Aug 07 08:31:08 <cluster-name-by-default-as-hostname> kubelet[835]: W0807 08:31:08.909159     835 pod_container_deletor.go:75] Container "4a69fb086ce2fe7cac3d3a5e6535c1c60951316c4f8c954901de05ad03a7e65d" not found in pod's containers```

See https://github.com/kubernetes/kubeadm/issues/1026

```StopPodSandbox "9dfd449d99efe66115045c5557efba54d57cab1b3617fb67fb412fc11487d266" from runtime service failed: rpc error: code = DeadlineExceeded desc = context deadline exceeded```

See https://github.com/kubernetes/kubeadm/issues/1078
