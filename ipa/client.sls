{% from "ipa/map.jinja" import ipa with context %}

ipa-client:
  pkg.installed:
    - name: {{ ipa.pkgs.client }}

ipa-join:
  cmd.run:
    - name: ipa-client-install --enable-dns-updates --mkhomedir --ssh-trust-dns --unattended -w '{{ ipa.client.otp }}'
    - unless: test -f /var/lib/ipa-client/sysrestore/sysrestore.state
    - require:
      - pkg: ipa-client
