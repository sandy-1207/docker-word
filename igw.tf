resource "aws_internet_gateway" "tf-igw" {
  vpc_id = aws_vpc.tf-vpc.id
}
