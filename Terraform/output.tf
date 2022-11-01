output "lb_dns_name" {
  description = "The DNS name of the load balancer"
  value       = aws_lb.external-elb.dns_name
}

output "cloudfront_dns" {
  value = aws_cloudfront_distribution.cf_distribution.domain_name
}


output "RDS_HOSTNAME" {
   value = aws_db_instance.my_rds.address
}

output "RDS_PORT" {
   value = aws_db_instance.my_rds.port
}
