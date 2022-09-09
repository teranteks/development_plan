# /*
# Whilst terraform doesn't directly support Linode as a backend, Linode Object Storage is S3 compatible,
#  which means that with only a few extra settings, we can use it as an S3 backend.
# */

# #Remote State
# terraform {
#   backend "s3" {
#     endpoint                    = "eu-central-1.linodeobjects.com"
#     profile                     = "linode-s3"
#     skip_credentials_validation = true
#     bucket                      = "state-backend"
#     key                         = "dev_state/terraform.tfstate"
#     region                      = "eu-central-1"
#   }
# }

# #Pull Cluster Region ID For Saving Files
# data "linode_object_storage_cluster" "cluster_main" {
#   id = var.storage_region
# }

# #Bucket For Statefile 
# resource "linode_object_storage_bucket" "state_bucket" {
#   cluster = data.linode_object_storage_cluster.cluster_main.id
#   label = var.bucket_name
# }