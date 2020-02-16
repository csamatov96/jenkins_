output "jenkins_master" {
  value = " http://${aws_route53_record.jenkins_master.name}:8080"
}

output "worker1" {
  value = " http://${aws_route53_record.jenkins_worker1.name}:8080"
}

output "worker2" {
  value = " http://${aws_route53_record.jenkins_worker2.name}:8080"
}

