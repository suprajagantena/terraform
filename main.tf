resource "aws_vpc" "dev" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "dedicated"

  tags = {
    Name = "Dev"
  }
}
resource "aws_vpc" "qa" {
  cidr_block       = "10.0.0.0/18"
  instance_tenancy = "dedicated"

  tags = {
    Name = "QA"
  }
}
resource "aws_vpc" "prd" {
  cidr_block       = "10.0.0.0/24"
  instance_tenancy = "dedicated"

  tags = {
    Name = "Prd"
  }
}
resource "aws_subnet" "public" {
  vpc_id     = "aws_vpc.dev.id"
  cidr_block = "10.0.1.0/16"

  tags = {
    Name = "devpubsub"
  }
}
resource "aws_subnet" "private1" {
  vpc_id     = "aws_vpc.dev.id"
  cidr_block = "10.0.2.0/16"

  tags = {
    Name = "devprisub"
  }
}
resource "aws_subnet" "private2" {
  vpc_id     = "aws_vpc.dev.id"
  cidr_block = "10.0.3.0/16"

  tags = {
    Name = "devprisub"
  }
}
resource "aws_subnet" "public" {
  vpc_id     = "aws_vpc.qa.id"
  cidr_block = "10.0.1.0/18"

  tags = {
    Name = "qapubsub"
  }
}
resource "aws_subnet" "private" {
  vpc_id     = "aws_vpc.qa.id"
  cidr_block = "10.0.2.0/18"

  tags = {
    Name = "qaprisub"
  }
}
resource "aws_subnet" "private" {
  vpc_id     = "aws_vpc.qa.id"
  cidr_block = "10.0.3.0/18"

  tags = {
    Name = "qaprisub"
  }
}
resource "aws_subnet" "public" {
  vpc_id     = "aws_vpc.prd.id"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "prdpubsub"
  }
}
resource "aws_subnet" "private" {
  vpc_id     = "aws_vpc.prd.id"
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "prdprisub"
  }
}
resource "aws_subnet" "private" {
  vpc_id     = "aws_vpc.prd.id"
  cidr_block = "10.0.3.0/24"

  tags = {
    Name = "prdprisub"
  }
}
