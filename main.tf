terraform {
  required_providers {
    infoblox = {
      source = "infobloxopen/infoblox"
      version = "2.1.0"
    }
  }
} 

provider "infoblox" {
 server = "78.83.117.100"
  username = "ivan"
}

resource "infoblox_a_record" "a_rec1" {
  fqdn = "static1.example1.org"
  ip_addr = "1.3.5.4" // not necessarily from a network existing in NIOS DB
}
