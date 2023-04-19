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

resource "infoblox_txt_record" "rec1" {
  fqdn = "sample1.example.org"
  text = "this is just a sample"
}
