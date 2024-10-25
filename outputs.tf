
output "wp_lb_ip" {
   value = digitalocean_loadbalancer.wp_lb.ip
 }

 output "wp_vm_ips" {
    value = digitalocean_droplet.vm_wp[*].ipv4_address
    description = "ips maqu wordpress"
 }

  output "nfs_vm_ips" {
    value = digitalocean_droplet.vm_nfs.ipv4_address
    description = "ip maqu nfs"
 }

 output "wp_db_user" {
   value     = digitalocean_database_user.wp_database_user.name
 
 }

 output "wp_db_pwd" {
   value     = digitalocean_database_user.wp_database_user.password
   sensitive = true
 }