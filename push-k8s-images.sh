KUBE_VERSION='v1.13.0'
COREDNS_VERSION='1.2.6'
PAUSE_VERSION='3.1'
ETCD_VERSION='3.3.10'

docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/pause:$PAUSE_VERSION harbor.shuziguanxing.com/mirror/pause:$PAUSE_VERSION
docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/coredns:$COREDNS_VERSION harbor.shuziguanxing.com/mirror/coredns:$COREDNS_VERSION
docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/etcd-amd64:$ETCD_VERSION harbor.shuziguanxing.com/mirror/etcd:$ETCD_VERSION
docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/kube-scheduler-amd64:$KUBE_VERSION harbor.shuziguanxing.com/mirror/kube-scheduler:$KUBE_VERSION
docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/kube-controller-manager-amd64:$KUBE_VERSION harbor.shuziguanxing.com/mirror/kube-controller-manager:$KUBE_VERSION
docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/kube-apiserver-amd64:$KUBE_VERSION harbor.shuziguanxing.com/mirror/kube-apiserver:$KUBE_VERSION
docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/kube-proxy-amd64:$KUBE_VERSION harbor.shuziguanxing.com/mirror/kube-proxy:$KUBE_VERSION

docker push harbor.shuziguanxing.com/mirror/pause:$PAUSE_VERSION
docker push harbor.shuziguanxing.com/mirror/coredns:$COREDNS_VERSION
docker push harbor.shuziguanxing.com/mirror/etcd:$ETCD_VERSION
docker push harbor.shuziguanxing.com/mirror/kube-scheduler:$KUBE_VERSION
docker push harbor.shuziguanxing.com/mirror/kube-controller-manager:$KUBE_VERSION
docker push harbor.shuziguanxing.com/mirror/kube-apiserver:$KUBE_VERSION
docker push harbor.shuziguanxing.com/mirror/kube-proxy:$KUBE_VERSION