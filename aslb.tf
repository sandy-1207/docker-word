resource "aws_launch_template" "tf-word" {
  name_prefix   = "word"
  image_id      = "ami-062df10d14676e201"
  instance_type = "t2.micro"
}

resource "aws_autoscaling_group" "bar" {
  availability_zones = ["ap-south-1a"]
  desired_capacity   = 1
  max_size           = 1
  min_size           = 1

  launch_template {
    id      = aws_launch_template.tf-word.id
    version = "$Latest"
  }
}
