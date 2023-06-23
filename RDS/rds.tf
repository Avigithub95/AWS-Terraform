resource "aws_db_instance" "my_rds" {
    db_name              = "my-db-instance"
    engine               = "mysql"
    engine_version       = "5.7"
    instance_class       = "db.t3.micro"
    allocated_storage     = 50
    storage_type         = "gp3"
    storage_encrypted    = true
    username             = "avijit1"
    password             = "Avijit1"
    skip_final_snapshot  = true
    multi_az             = false
    db_subnet_group_name = local.db_subnet_group_name
    vpc_security_group_ids = ["sg-12345678"] 
    
    tags = {
    Name = "MyDB"
    }
}
