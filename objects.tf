resource "aws_s3_bucket_object" "s3_object" {
  for_each = fileset(var.folder_path, "**")
  bucket   = module.s3_bucket.s3_bucket_id
  key      = each.value
  source   = "${var.folder_path}/${each.value}"
}
