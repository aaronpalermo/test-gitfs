manage_/etc/ssh/ssh_config:
  file.managed:
    - name: /etc/ssh/ssh_config
    - contents_pillar: ssh:ssh_config
    - user: root
    - group: root
    - mode: '0644'
    - watch_in:
      - service: manage_sshd_service

manage_sshd_service:
  service.running:
    - name: sshd
    - full_restart: True
    - enable: True
