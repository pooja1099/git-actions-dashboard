terraform {
  #   required_version = ">= 0.12.6"

  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
      #   version = "~> 2.21"
    }
  }
}
# Configure the New Relic provider
provider "newrelic" {
  account_id = 3930388
  api_key    = "NRAK-FOGCBM7T60ZPVLPUV2Q8XR2IIGR" # Usually prefixed with 'NRAK'
  region     = "US"                               # Valid regions are US and EU
}