resource "lab" "main" {
  title = "My Very First NXT Lab 1"
  description = <<-EOF
  This is our second test on this lab.
  Let's see if this works.
  EOF

  layout "single_column" {
    reference = resource.layout.single_panel
  }
}
