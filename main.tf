module "ec2-west" {
    source = "./ec2-module"
    instance-type = "t2.micro"
    tag-name = "MyProdEC2Instance"  
}

module "ec2-east" {
    source = "./ec2-module"
    providers = {
        aws = aws.east
    }
    instance-type = "t2.micro"
    tag-name = "MyProdEC2Instance"  
}