resource "lab" "main" {
  title = "My First NXT Lab"
  description = <<-EOF
  This is my test lab.
  We will practice with this lab. Test if this works.
  EOF

  layout "single_column" {
    reference = resource.layout.single_panel
  }
}