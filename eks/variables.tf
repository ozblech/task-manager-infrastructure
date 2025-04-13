variable "cluster_name" {}
variable "cluster_version" {}
variable "subnet_ids" {}
variable "vpc_id" {}

variable "node_group_name" {}
variable "desired_capacity" {}
variable "max_capacity" {}
variable "min_capacity" {}
variable "instance_types" {}

variable "eks_cluster_role_arn" {}
variable "eks_node_role_arn" {}

