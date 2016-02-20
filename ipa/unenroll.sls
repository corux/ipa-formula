ipa-unenroll:
  cmd.run:
    - name: ipa-client-install --uninstall --unattended
    - onlyif: test -f /var/lib/ipa-client/sysrestore/sysrestore.state
