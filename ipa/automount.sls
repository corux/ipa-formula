{% from "ipa/map.jinja" import ipa with context %}

include:
  - .client

ipa-automount:
  cmd.run:
    - name: ipa-client-automount --unattended
    - unless: grep autofs /var/lib/ipa-client/sysrestore/sysrestore.state
    - require:
      - cmd: ipa-join
