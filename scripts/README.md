# Scripts

This folder contains custom PowerShell scripts used to extend default Zabbix monitoring functionality through UserParameters and custom telemetry collection.

These scripts were primarily developed to support:
  - Windows workstation monitoring
  - Patch and update visibility
  - Domain controller reachability checks
  - Additional operational health metrics

The scripts in this folder were designed for deployment through Active Directory Group Policy alongside Zabbix Agent 2 configurations and supporting UserParameter files.

Example functionality includes:
  - Pending Windows update detection
  - Domain controller DNS resolution validation
  - Custom endpoint health monitoring

Sensitive environment-specific information has been sanitized prior to publication.
