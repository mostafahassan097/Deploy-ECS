resource "aws_ecs_cluster" "my_cluster" {
   name = "my_cluster"
 }

resource "aws_ecs_task_definition" "my-nodeapp-task" {
  family = "my-api"
  execution_role_arn = aws_iam_role.my_nodeapp_task_execution_role.arn
  container_definitions = <<EOF
  [
    {
      "name": "mynodeapp",
      "image": "mostafahassan/node-js:v5.0",
      "portMappings": [
        {
          "containerPort": 3000
        }
      ],
      "environment": [
      {"name": "RDS_HOSTNAME", "value": "${aws_db_instance.my_rds.address}"},
      {"name": "RDS_PORT", "value": "${aws_db_instance.my_rds.port}"},
      {"name": "RDS_USERNAME", "value": "admin"},
      {"name": "RDS_PASSWORD", "value": "${random_password.password.result}"}
    ]
    }
  ]
  EOF

  cpu = 256
  memory = 512
  requires_compatibilities = ["FARGATE"]
  network_mode = "awsvpc"
}


resource "aws_iam_role" "my_nodeapp_task_execution_role" {
  name               = "my-nodeapp-task-execution-role"
  assume_role_policy = data.aws_iam_policy_document.ecs_task_assume_role.json
}
data "aws_iam_policy_document" "ecs_task_assume_role" {
  statement {
    actions = ["sts:AssumeRole"]
principals {
      type = "Service"
      identifiers = ["ecs-tasks.amazonaws.com"]
    }
  }
}
 
data "aws_iam_policy" "ecs_task_execution_role" {
  arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
}
 resource "aws_iam_role_policy_attachment" "ecs_task_execution_role" {
  role       = aws_iam_role.my_nodeapp_task_execution_role.name
  policy_arn = data.aws_iam_policy.ecs_task_execution_role.arn
}

resource "aws_ecs_service" "my-nodeapp-service" {
  name            = "my-nodeapp-service"
  task_definition = aws_ecs_task_definition.my-nodeapp-task.arn
  cluster         = aws_ecs_cluster.my_cluster.id
  launch_type     = "FARGATE"
  load_balancer {
    target_group_arn = aws_lb_target_group.alb-tg.arn
    container_name   = "mynodeapp"
    container_port   = "3000"
  }
  desired_count = 3
  network_configuration {
   assign_public_ip = false
security_groups = [
     aws_security_group.securitygroup-2.id
   ]
subnets = [
    module.network.pri_sub_1, module.network.pri_sub_2
     ]
 }
}