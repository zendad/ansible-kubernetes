#!/usr/bin/env bats

@test "Verify Docker installation" {
    run sudo docker --version
    [ "$status" -eq 0  ]
}

@test "Verify there are docker images cached" {
    result=`docker images -q | wc -l`
    [ "$result" -gt 0  ]
}

@test "Verify file /etc/kubernetes/kubelet.conf exists" {
    run stat /etc/kubernetes/kubelet.conf
    [ "$status" -eq 0  ]
}

@test "Verify kubelet process is up and running" {
    result=`ps aux | grep kubelet | grep -v grep | wc -l`
    [ "$result" -gt 0 ]
}

#@test "Verify weave was replicated" {
#    result=`sudo docker ps | grep weave-npc | wc -l`
#    [ "$result" -gt 0  ]
#}
