locals {
  nsgPortForSubnet1 = {
    ssh = {
      priority               = 100
      access                 = "Allow"
      protocol               = "Tcp"
      destination_port_range = 22
    }
    http = {
      priority               = 110
      access                 = "Allow"
      protocol               = "Tcp"
      destination_port_range = 80
    }
  }
}
