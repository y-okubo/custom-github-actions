#!/usr/bin/env ruby

require "json"
require "octokit"

pr_json = File.read(ENV.fetch("GITHUB_EVENT_PATH"))
pr = JSON.parse(pr_json)

github = Octokit::Client.new(access_token: ENV.fetch["GITHUB_TOKEN"])

repo_name = pr["pull_request"]["head"]["repo"]["full_name"]
pr_num = pr["number"]

msg = ARGV.msg
github.add_comment(repo_name, pr_num, msg)
