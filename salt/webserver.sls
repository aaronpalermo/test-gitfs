install apache:
  pkg.installed:
    - name: {{ pillar['apache'] }}

