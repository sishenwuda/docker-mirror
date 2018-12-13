KUBE_VERSION='v1.13.0'
COREDNS_VERSION='1.2.6'
PAUSE_VERSION='3.1'
ETCD_VERSION='3.3.10'
docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/kube-apiserver-amd64:$KUBE_VERSION
docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/kube-controller-manager-amd64:$KUBE_VERSION
docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/kube-scheduler-amd64:$KUBE_VERSION
docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/kube-proxy-amd64:$KUBE_VERSION
docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/etcd-amd64:$ETCD_VERSION
docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/pause:$PAUSE_VERSION
docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/coredns:$COREDNS_VERSION

docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/pause:$PAUSE_VERSION k8s.gcr.io/pause:$PAUSE_VERSION
docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/coredns:$COREDNS_VERSION k8s.gcr.io/coredns:$COREDNS_VERSION
docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/etcd-amd64:$ETCD_VERSION k8s.gcr.io/etcd:$ETCD_VERSION
docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/kube-scheduler-amd64:$KUBE_VERSION k8s.gcr.io/kube-scheduler:$KUBE_VERSION
docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/kube-controller-manager-amd64:$KUBE_VERSION k8s.gcr.io/kube-controller-manager:$KUBE_VERSION
docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/kube-apiserver-amd64:$KUBE_VERSION k8s.gcr.io/kube-apiserver:$KUBE_VERSION
docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/kube-proxy-amd64:$KUBE_VERSION k8s.gcr.io/kube-proxy:$KUBE_VERSION

docker rmi registry.cn-hangzhou.aliyuncs.com/google_containers/kube-apiserver-amd64:$KUBE_VERSION
docker rmi registry.cn-hangzhou.aliyuncs.com/google_containers/kube-controller-manager-amd64:$KUBE_VERSION
docker rmi registry.cn-hangzhou.aliyuncs.com/google_containers/kube-scheduler-amd64:$KUBE_VERSION
docker rmi registry.cn-hangzhou.aliyuncs.com/google_containers/kube-proxy-amd64:$KUBE_VERSION
docker rmi registry.cn-hangzhou.aliyuncs.com/google_containers/etcd-amd64:$ETCD_VERSION
docker rmi registry.cn-hangzhou.aliyuncs.com/google_containers/pause:$PAUSE_VERSION
docker rmi registry.cn-hangzhou.aliyuncs.com/google_containers/coredns:$COREDNS_VERSION