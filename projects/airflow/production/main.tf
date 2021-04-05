module "instance" {
    count = 2
    source = "../../../modules/instance"
    name = "trader_airflow_production_${count.index + 1}"
    instance_type = "t3.micro"
    security_group_id = data.terraform_remote_state.base.outputs.sg_private
    iam_role = data.terraform_remote_state.base.outputs.role_cloudwatch
}
