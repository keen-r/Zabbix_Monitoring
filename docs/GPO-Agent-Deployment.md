# Zabbix Agent Deployment via Group Policy

## Overview

This deployment method was used to automate the installation and configuration of Zabbix Agent 2 across Windows workstations within an on-premises Active Directory environment.

The primary goals of this deployment method were to:
  - Standardize agent configuration
  - Reduce manual installation effort
  - Support automatic host onboarding
  - Simplify large-scale workstation monitoring

---

## Deployment Method

Zabbix Agent 2 was deployed through Group Policy using a startup script and MSI installer package hosted on a network share.

Deployment components included:
  - Zabbix Agent 2 MSI installer
  - Preconfigured agent configuration file
  - Custom PowerShell monitoring scripts
  - UserParameter configuration files

This deployment method allowed monitoring agents and supporting configuration files to be deployed consistently across multiple workstation OUs with minimal manual intervention. 

---

## Auto Registration

Zabbix auto-registration was used to automatically onboard newly deployed workstations into the monitoring environment.

Auto-registration actions were configured to:
  - Automatically discover new hosts
  - Assign workstation templates
  - Place systems into appropriate host groups
  - Begin monitoring without manual intervention

This significantly reduced workstation onboarding time and simplified large-scale deployment management.

---

## Challenges Encountered

Several challenges were encountered during implementation:
  - DNS resolution and hostname registration issues
  - Firewall and agent communication troubleshooting
  - Group Policy propagation delays
  - UserParameter deployment consistency 

These issues were resolved through AI-assisted configuration refinement and troubleshooting.

---

## Agent Configuration

The deployed configuration included:
  - Passive and active server configuration
  - Automatic hostname detection
  - Host metadata assignment for auto-registration
  - Custom UserParameters for additional monitoring

Example configuration options:

```ini
Server=<ZABBIX_SERVER_IP>
ServerActive=<ZABBIX_SERVER_IP>
HostnameItem=system.hostname
HostMetadata=Windows
```

The `Server` and `ServerActive` values are configured with the IP address of the system hosting the Zabbix server.

`HostnameItem=system.hostname` was used to automatically assign the Windows computer name as the Zabbix hostname during registration.

`HostMetadata=Windows` was used to support automatic template assignment, grouping, and auto-registration actions within Zabbix.
