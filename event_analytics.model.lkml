connection: "@{CONNECTION_NAME}"
label: "Application GA360"

include: "//@{CONFIG_PROJECT_NAME}/sessions_config.view"
include: "//@{CONFIG_PROJECT_NAME}/event_analytics_config.model"

# View and Dashboard Includes
include: "//app-event-adapter/*.view"
include: "//app-event-ga360/*.view"
include: "//app-event-ga360/*.dashboard"
include: "sessions.view"

# FORMAT VALUES
named_value_format: usd_large {
value_format: "[>=1000000]$0.00,,\"M\";$0.00"
}

named_value_format: decimal_large {
  value_format: "[>=1000000]0.00,,\"M\";[>=1000]0.0,\"K\";0"
}

named_value_format: decimal_short {
  value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0.0"
}
