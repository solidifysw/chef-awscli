# Default parameters

default[:awscli][:region] = "us-east-1"
default[:awscli][:access] = ENV['AWS_ACCESS_KEY_ID']
default[:awscli][:secret] = ENV['AWS_SECRET_ACCESS_KEY']