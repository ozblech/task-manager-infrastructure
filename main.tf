module "eks" {
  source = "./eks"

  cluster_name = var.cluster_name
  cluster_version = var.cluster_version
  subnet_ids = aws_subnet.private[*].id
  vpc_id = aws_vpc.main.id

  node_group_name = var.node_group_name
  desired_capacity = var.desired_capacity
  max_capacity = var.max_capacity
  min_capacity = var.min_capacity
  instance_types = var.instance_types

  eks_cluster_role_arn = aws_iam_role.eks_cluster_role.arn
  eks_node_role_arn    = aws_iam_role.eks_node_role.arn
}
