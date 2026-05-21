data "aws_ami" "amazon_linux" {
  most_recent = true
  owners = ["amazon"] # 공인된 아마존 이미지 만 찾도록 제한합니다.

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }
}