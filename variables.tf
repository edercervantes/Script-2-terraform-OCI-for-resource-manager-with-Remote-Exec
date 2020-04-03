
########################CREDENTIALS########################
variable ssh_private_key {
  default = "./ssh_keys/id_rsa" #to make blank later
}
/* variable cloud_user_id {
  default = "integration_user" #to make blank later
}
*************************INSTEAD OF THESE TWO, USER IS GOING TO EDIT CREATE_CLOUD_CRED.SQL
variable auth_token {
  type = string
  default = "RPgs4Krg>Leq-;ns>g)Q" #to make blank later
} */

variable "public_ip" {
    default = ""
}

/* ########################COMPUTE########################
variable "instance_display_name"{
    default = "AlphaOffice" //Does not have to be unique. Avoid entering confidential information.
}

variable "instance_shape" {
  default = "VM.Standard2.1"
}

variable ssh_public_key {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDzRal919CIburiLDulKj31ZpDpYWw78iO1QTJibNWV4I0Bdpc3pubcP7KY6wg9EjzGvLC01cq+DnONQwnpc9iWT3UUQxtWkUpz64/ho55bRW58lcVGsTh2tIYXrXTA8G0AfpDazZnzlX77QJd/rBB2M2GhRvv5wjYhbF8eTTuIqCAdjKlYm5OUkvEq9L+jnd/zRf8r6xtmgj6BzhKVxBEFJoblun+2Qb5ZtHlZCkzmwOfP5SxGiDZp3i0OLH1j0A2EfBKqadSOPhbIghyaJMyfkVZPSg++29HtZw0Q6eOKV3c+q2/SIVJiRQaqhtprA4/IjL9DMm8n+/j7ZpRfwqi1 edecerva@edecerva-mac"
}
#^^^^^^^^^^to make blank later

########################NETWORKING########################
variable "vcn_display_name" {
    default = "py4devvcn"
}
variable "internet_gateway_display_name" {
  default = "internet_gateway"
}

variable "subnet_display_name" {
    default = "py4devSubnet"
}
data "oci_identity_availability_domain" "ad" {
  compartment_id = "${var.compartment_ocid}"
  ad_number = 1
} */

########################GOVERNANCE########################
/* variable "compartment_ocid" {
  default = "ocid1.compartment.oc1..aaaaaaaak75fyjp6ilbhjf2c2y6knmzz6wlw7s7qbgxlqbl4rmyqhbsztyda" #to make blank later
} */