output "jenkins_master_node" {
  value = "${module.jenkins_master_node.jenkins_master_node}"     
}
/*
output "worker1" {
  value = "${module.jenkins_master.worker1}"
}
output "worker2" {
  value = "${module.jenkins_master.worker2}"
}

output "jenkins_passwd" {
  value = "6 lines above jenkins passwd look ^"
}*/
