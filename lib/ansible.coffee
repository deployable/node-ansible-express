Ansible = require 'node-ansible'


# ### Playbook

class Playbook
  @runAsync: ( opts )->
    Ansible.Playbook.exec()

class Inventory
  @runAsync: ( opts )->



# Exports

module.exports =
  Playbook: Playbook
