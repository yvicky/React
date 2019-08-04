resource "aws_launch_template" "LT1-V1" {
    name_prefix   = "Ubuntu1804-K8NSandbox"
    image_id      = "ami-09b7c1a9c3627b787"
    instance_type = "t2.micro"
}

resource "aws_autoscaling_group" "ASG1-V1" {
    availability_zones = ["us-east-2a"]
    desired_capacity   = 1
    max_size           = 1
    min_size           = 1

    launch_template = {
      id      = "${aws_launch_template.LT1-V1.id}"
      version = "$$Latest"
    }
}