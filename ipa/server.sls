{% from "ipa/map.jinja" import ipa with context %}

ipa-server-pkgs:
  pkg.installed:
    - pkgs: {{ ipa.pkgs.server|json }}
