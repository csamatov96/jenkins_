resource "aws_iam_role" "jenkins_admin_node" { ############
  name = "jenkins_admin_node"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF

  tags = {
    tag-key = "tag-value"
  }
}

resource "aws_iam_instance_profile" "jenkins_profile_node" { ################
  name = "jenkins_profile_node"
  role = "${aws_iam_role.jenkins_admin_node.name}"
}

resource "aws_iam_role_policy" "jenkins_admin_policy_node" { ################
  name = "jenkins_admin_policy_node"
  role = "${aws_iam_role.jenkins_admin_node.id}"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        }
    ]
}
EOF
}
