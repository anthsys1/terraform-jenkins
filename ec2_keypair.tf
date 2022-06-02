resource "aws_key_pair" "af_key_pair" {
  key_name   = "AF-Key"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEVzHG4WBvipSGGI8yC3tU6qWZD8ODn+7vDVOH7+G0aJ user@WS-IPSSI"
}