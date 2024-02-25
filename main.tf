provider "aws" {
  region = "eu-west-1"
  access_key = "AKIAQ3EGULUGCOQ3SFEI"
  secret_key = "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"
}


resource "aws_s3_bucket" "PuppyBucket" {
  bucket = "ynov-infracloud-batsjeremy"
}
resource "aws_s3_object" "puppy" {
  bucket = aws_s3_bucket.PuppyBucket.id
  key    = "puppy"
  source = "assets/puppy.jpg"
}
resource "aws_s3_bucket_public_access_block" "PuppyBucketPolicy" {
  bucket = aws_s3_bucket.PuppyBucket.id
  block_public_acls =   false
  block_public_policy = false

}



