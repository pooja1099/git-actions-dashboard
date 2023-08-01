resource "newrelic_one_dashboard" "example" {
  count       = length(var.data)
  name        = lookup(var.data[count.index], "dashboard")
  permissions = lookup(var.data[count.index], "permissions")

  page {
    name = lookup(var.data[count.index], "pagename")

    widget_billboard {
      title  = lookup(var.data[count.index], "title1")
      row    = 1
      column = 1
      width  = 6
      height = 3

      nrql_query {
        query = lookup(var.data[count.index], "query1")
      }
    }
    widget_bar {
      title  = lookup(var.data[count.index], "title2")
      row    = 2
      column = 1
      width  = 6
      height = 3

      nrql_query {
        # account_id = 3930388
        query      = lookup(var.data[count.index], "query2")


      }
    }
  }
  page {
    name = lookup(var.data[count.index], "pagename1") 

    widget_billboard {
      title  = lookup(var.data[count.index], "title1") 
      row    = 1
      column = 1
      width  = 6
      height = 3

      nrql_query {
        query = lookup(var.data[count.index], "query1")
      }
    }
  }
}