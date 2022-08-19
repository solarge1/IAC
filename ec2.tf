locals {
  env_tag = {
    Environment = "${terraform.workspace}"
  }

    #web_tags = "${merge(var.web_tags, local.env_tag)}"
}


resource "aws_instance" "web" {
  count                  = "${var.web_ec2_count}"
  ami                    = "${var.web_amis[var.region]}"
  instance_type          = "${var.web_instance_type}"
  subnet_id              = "${local.pub_sub_ids[count.index]}"
  #tags                   = "${local.web_tags}"
  #user_data              = "${file("scripts/apache.sh")}"
}
  /*#user_data              = "${file("scripts/apache.sh")}"
  iam_instance_profile   = "${aws_iam_instance_profile.s3_ec2_profile.name}"
  vpc_security_group_ids = ["${aws_security_group.web_sg.id}"]
  key_name               = "${aws_key_pair.web.key_name}"
}*/


resource "aws_instance" "db01" {
  count                  = "${var.web_ec2_count}"
  ami                    = "${var.db01_amis[var.region]}"
  instance_type          = "${var.web_instance_type}"
  subnet_id              = "${local.pub_sub_ids[count.index]}"
  #tags                   = "${local.web_tags}"
  #user_data              = "${file("scripts/apache.sh")}"
}
  /*#user_data              = "${file("scripts/apache.sh")}"
  iam_instance_profile   = "${aws_iam_instance_profile.s3_ec2_profile.name}"
  vpc_security_group_ids = ["${aws_security_group.web_sg.id}"]
  key_name               = "${aws_key_pair.web.key_name}"
}*/

resource "aws_instance" "mc01" {
  count                  = "${var.web_ec2_count}"
  ami                    = "${var.mc01_amis[var.region]}"
  instance_type          = "${var.web_instance_type}"
  subnet_id              = "${local.pub_sub_ids[count.index]}"
  #tags                   = "${local.web_tags}"
  #user_data              = "${file("scripts/apache.sh")}"
}
  /*#user_data              = "${file("scripts/apache.sh")}"
  iam_instance_profile   = "${aws_iam_instance_profile.s3_ec2_profile.name}"
  vpc_security_group_ids = ["${aws_security_group.web_sg.id}"]
  key_name               = "${aws_key_pair.web.key_name}"
}*/

resource "aws_instance" "rmq01" {
  count                  = "${var.web_ec2_count}"
  ami                    = "${var.rqm01_amis[var.region]}"
  instance_type          = "${var.web_instance_type}"
  subnet_id              = "${local.pub_sub_ids[count.index]}"
  #tags                   = "${local.web_tags}"
  #user_data              = "${file("scripts/apache.sh")}"
}
  /*#user_data              = "${file("scripts/apache.sh")}"
  iam_instance_profile   = "${aws_iam_instance_profile.s3_ec2_profile.name}"
  vpc_security_group_ids = ["${aws_security_group.web_sg.id}"]
  key_name               = "${aws_key_pair.web.key_name}"
}*/

resource "aws_instance" "app01" {
  count                  = "${var.web_ec2_count}"
  ami                    = "${var.app01_amis[var.region]}"
  instance_type          = "${var.web_instance_type}"
  subnet_id              = "${local.pub_sub_ids[count.index]}"
  #tags                   = "${local.web_tags}"
  #user_data              = "${file("scripts/apache.sh")}"
}
  /*#user_data              = "${file("scripts/apache.sh")}"
  iam_instance_profile   = "${aws_iam_instance_profile.s3_ec2_profile.name}"
  vpc_security_group_ids = ["${aws_security_group.web_sg.id}"]
  key_name               = "${aws_key_pair.web.key_name}"
}*/
/*resource "aws_key_pair" "web" {
  key_name   = "javahome-web"
  public_key = "${file("scripts/web.pub")}"
}*/