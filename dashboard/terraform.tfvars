data = [
  {
    dashboard   = "myDashboard",
    permissions = "public_read_only",
    pagename    = "myPage",
    pagename1   = "page",
    title1      = "Billboard data",
    query1      = "SELECT count(*) from transaction FACET appName",
    title2      = "Bar data",
    query2      = "FROM Transaction SELECT uniquecount(*) FACET appName",
  },
  {
    dashboard   = "2nd-dashboard",
    permissions = "public_read_only",
    pagename    = "myPage-2",
    pagename1   = "page",
    title1      = "Bar data",
    query1      = "SELECT count(*) from transaction FACET appName",
    title2      = "Bar data",
    query2      = "FROM PageViewTiming SELECT percentile(firstInputDelay, 90), percentile(firstInputDelay, 90) TIMESERIES SINCE 1 DAY AGO",

  }
]