output "vpc_private_subnet_ids" {
  value = aws_subnet.private[*].id
}

output "eks_cluster_role_arn" {
  value = aws_iam_role.eks_cluster_role.arn
}
