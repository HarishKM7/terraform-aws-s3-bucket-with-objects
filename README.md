# S3 Bucket with Objects

This Terraform module creates a private S3 bucket with "Block All Public Access" turned ON, and uploads the contents of a folder to it.

* Every time you run `terraform apply`:
  * New objects in the source folder are uploaded.
  * Existing objects are not overwritten.
  * Folder structure is retained.
* Bucket name is auto-generated and outputted.
* SSE-S3 encryption is enabled by default.
