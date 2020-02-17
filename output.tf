output "jenkins_master" {
  value = "${module.jenkins_master_node.jenkins_master}"     
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
