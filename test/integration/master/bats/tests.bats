#!/usr/bin/env bats

#setup(){
#    echo "Give sometime while kubernetes master is getting up"
#    sleep 300
#}

@test "Verify Docker installation" {
    run docker --version
    [ "$status" -eq 0  ]
}

@test "Verify there are docker images cached" {
    result=`docker images -q | wc -l`
    [ "$result" -gt 0  ]
}

#@test "Verify joined nodes" {
#    result=`kubectl get nodes | grep node | wc -l`
#    [ "$result" -gt 0  ]
#}

@test "Verify kube-controller-manager is up and running" {
    result=`pidof kube-controller-manager`
    [ "$result" -gt 0  ]
}

@test "Verify kube-scheduler is up and running" {
    result=`pidof kube-scheduler`
    [ "$result" -gt 0  ]
}

@test "Verify kube-apiserver is up and running" {
    result=`pidof kube-apiserver`
    [ "$result" -gt 0  ]
}

@test "Verify kube-discovery is up and running" {
    result=`pidof kube-discovery`
    [ "$result" -gt 0  ]
}

@test "Verify kube-proxy is up and running" {
    result=`pidof kube-proxy`
    [ "$result" -gt 0  ]
}

#@test "Verify weave is running" {
#    result=`docker ps | grep weave-kube | wc -l`
#    [ "$result" -gt 0  ]
#}

