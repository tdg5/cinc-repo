name 'universal'

default_source :supermarket

cookbook 'apt', '~> 7.5.17', :supermarket
cookbook 'bash_config', path: '../cookbooks/bash_config'
cookbook 'config', path: '../cookbooks/config'
cookbook 'htop', path: '../cookbooks/htop'
cookbook 'vim', '~> 2.1.20', :supermarket

run_list(
  'apt',
  'htop',
  'bash_config',
  'config::git',
  'vim',
)
