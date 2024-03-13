variable "sg_id" {
  description = "sg for ec2"
  type        = string
}
variable "subnets" {
  description = "sup for ec2"
  type        = list(string)

}
variable "ec2_names" {
  description = "names for ec2"
  type        = list(string)
  default     = ["WebServer1", "WebServer2"]

}