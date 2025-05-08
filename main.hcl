resource "lab" "main" {
  title = "My New First NXT Lab"
  description = <<-EOF
  This is our third test on this lab.
  Let's see if this works now.
  EOF

  layout "single_column" {
    reference = resource.layout.single_panel

    instructions {
      panel = "instructions"
    }
  }
  
  layout "two_columns" {
    reference = resource.layout.two_panels
    default = true
    
    tab "webserver" {
      title = "Webserver"
      panel = "left"
      target = resource.service.webserver
    }

    tab "terminal" {
      title = "Terminal"
      panel = "left"
      target = resource.terminal.shell
    }

    instructions {
      panel = "right"
    }
  }
  
  content {
    chapter "introduction" {
      title = "Introduction"

      page "first_page" {
        reference = resource.page.first
      }
      
      page "quiz" {
        reference = resource.page.quiz
      }

      page "task" {
        reference = resource.page.task
      }
    }
  }


}

