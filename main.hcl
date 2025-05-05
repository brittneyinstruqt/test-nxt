resource "lab" "main" {
  title = "My New First NXT Lab"
  description = <<-EOF
  This is our third test on this lab.
  Let's see if this works now.
  EOF

  layout "single_column" {
    reference = resource.layout.single_panel
  }
  layout "two_columns" {
    reference = resource.layout.two_panels
    default = true
    
    tab "webserver" {
      title = "Webserver"
      panel = "left"
      target = resource.service.webserver
  }
    instructions {
      panel = "right"
    }


}
}
