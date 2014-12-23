# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary server in each group
# is considered to be the first unless any hosts have the primary
# property set.  Don't declare `role :all`, it's a meta role.

role :app, %w{deploy@128.199.120.247:3190}
role :web, %w{deploy@128.199.120.247:3190}
role :db,  %w{sentwix@128.199.120.247:3190}

# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult[net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start).

server '128.199.120.247',
  user: 'deploy',
  roles: %w{web app},
  port: 3190,
  ssh_options: {
    keys: %w(/Users/kennethlimjf/.ssh/codingops),
    forward_agent: false,
    auth_methods: %w(publickey)
  }
