===========
ipa-formula
===========

.. image:: https://travis-ci.org/corux/ipa-formula.svg?branch=master
    :target: https://travis-ci.org/corux/ipa-formula

Installs the FreeIPA identity management system.

Available states
================

.. contents::
    :local:

``ipa.client``
--------------

Installs the IPA client and joins the IPA domain.

``ipa.automount``
-----------------

Configures autofs for IPA clients. Includes the state ``ipa.client``.

``ipa.server``
--------------

Installs the IPA Server packages. Configuration is not automated.

``ipa.unenroll``
----------------

Unenrolls an IPA client from the IPA domain.
