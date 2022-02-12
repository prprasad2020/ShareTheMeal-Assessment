ec2_name      = "ShareTheMeal-EC2"
ami           = "ami-033b95fb8079dc481"
instance_type = "t2.micro"
key_name      = "share-the-meal"

tg_name = "target-group-STM"
lb_name = "ShareTheMeal-LB"

tags = { "Purpose" = "ShareTheMeal Assesment", "Env" = "Test" }
