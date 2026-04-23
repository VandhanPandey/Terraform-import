resource "aws_security_group" "this" {
  name   = var.name
  vpc_id = var.vpc_id

  description = "Minimal learning SG"

  tags = var.tags
}

resource "aws_security_group_rule" "ingress" {
  for_each = {
    for idx, rule in var.ingress_rules :
    idx => rule
  }

  type              = "ingress"
  security_group_id = aws_security_group.this.id
  from_port         = each.value.port
  to_port           = each.value.port
  protocol          = "tcp"
  cidr_blocks       = [each.value.cidr]
}

resource "aws_security_group_rule" "egress" {
  type              = "egress"
  security_group_id = aws_security_group.this.id
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}