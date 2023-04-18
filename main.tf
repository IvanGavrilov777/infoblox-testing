terraform {
  required_providers {
    infoblox = {
      source = "infobloxopen/infoblox"
      version = "2.3.0"
    }
  }
} 

provider "infoblox" {
 server = "192.168.100.100"
  username = "pencho"
}


resource "infoblox_a_record" "a_rec_1_imported" {
    fqdn = "rec-a-1.imported.test.com"
    ip_addr = "78.83.117.100"
    ttl = 10
    comment = "A-record to be imported"
    ext_attrs = jsonencode({
      "Location" = "New office"
    })
  }
