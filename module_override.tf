//resource "aws_route_table" "default" {
//
//  dynamic "route" {
//    for_each = var.extra_routes
//    content {
//      egress_only_gateway_id = lookup(route.value, "egress_only_gateway_id", null)
//      instance_id = lookup(route.value, "instance_id", null)
//      nat_gateway_id = lookup(route.value, "nat_gateway_id", null)
//      network_interface_id = lookup(route.value, "network_interface_id", null)
//      transit_gateway_id = lookup(route.value, "transit_gateway_id", null)
//      cidr_block = lookup(route.value, "cidr_block", null)
//      ipv6_cidr_block = lookup(route.value, "ipv6_cidr_block", null)
//      gateway_id = lookup(route.value, "gateway_id", null)
//      vpc_peering_connection_id = lookup(route.value, "vpc_peering_connection_id", null)
//    }
//  }
//
//  route {
//    cidr_block = "0.0.0.0/0"
//    gateway_id = aws_internet_gateway.gateway.id
//  }
//
//  route {
//    ipv6_cidr_block = "::/0"
//    gateway_id      = aws_internet_gateway.gateway.id
//  }
//}
