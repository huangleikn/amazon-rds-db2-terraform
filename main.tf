# ==============================
# Provider 配置
# ==============================
provider "aws" {
  region = var.region
}

# ==============================
# 创建 RDS 子网组
# ==============================
resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = var.name
  description = var.description
  subnet_ids = var.subnet_ids

  tags = {
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}