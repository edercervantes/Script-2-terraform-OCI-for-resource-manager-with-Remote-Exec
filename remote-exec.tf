
#running shell scripts to connect to ATPDB and sql commands on oracle cloud developer image

resource "null_resource" "remote-exec" {
    provisioner "file" {
        connection{
            agent           = false
            timeout         = "1m"
            host            = "${var.public_ip}"
            user            = "opc"
            private_key     = "${file("${var.ssh_private_key}")}"
        }
    source      = "./second_round_scripts"
    destination = "~/tmp"
    }
    
    provisioner "remote-exec" {
    connection {
      agent       = false
      timeout     = "10m"
      host        = "${var.public_ip}"
      user        = "opc"
      private_key = "${file("${var.ssh_private_key}")}"
    }
    inline = [
      "sudo chmod a+x ~/tmp/second_round_scripts/*.sh",
      "sudo chmod a+x ~/tmp/second_round_scripts/*.sql",
      "~/tmp/second_round_scripts/ocd2atp_connect.sh",
    ]
    }
}