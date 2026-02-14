Ansible: DNF Autoupdate Role
============================

Ansible role to activate automated package updates via dnf.

Configuration
-------------

- `dnf_autoupdate_upgrade_type`: kind of upgrade to perform
- `dnf_autoupdate_reboot`: if the system should reboot automatically

All configuration keys are optional.
See [defaults](defaults/main.yml) for more details.

Example Playbook
----------------

Example of how to configure and use the role:

```yaml
- hosts: servers
  become: true
  roles:
    - role: lkiesow.dnf_autoupdate
      dnf_autoupdate_upgrade_type: default
      dnf_autoupdate_reboot: when-needed
```
