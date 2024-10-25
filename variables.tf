
variable "region" {
  type    = string
  default = "nyc1"
}

variable "wp_vm_count" {
  type = number
  default = 2
  description = "n maq wordpress"
  validation {
    condition = var.wp_vm_count > 1
    error_message = "o n minimo d m é 2"
  }
}

variable "vms_ssh" {
  type = string
  description = "chave ssh"
}