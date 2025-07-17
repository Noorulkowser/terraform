# resource "aws_iam_user" "cloud" {
#     count = 5
#     name = "user-${count.index + 1}"
  
# }
# resource "aws_iam_user" "kloud" {
#     for_each = toset(["noor","test","deploy"])
#     name = each.value
  
# }
resource "aws_iam_user" "querty" {
    name = var.kewyjkliyuou
  
}
