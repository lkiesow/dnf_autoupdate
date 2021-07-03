Ansible: DNF Autoupdate Role
============================

Ansible role to activate automated package updates via dnf.



Example Playbook
----------------

Example of how to configure and use the role:

```yaml
- hosts: servers
  become: true
  roles:
    - role: lkiesow.dnf_autoupdate
```
