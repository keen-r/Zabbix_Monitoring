# Zabbix Agent Deployment via Group Policy

## Overview

This deployment method was used to automate the installation and configuration of Zabbix Agent 2 across Windows workstations within an Active Directory environment.

The primary goals of this deployment method were to:
- Standardize agent configuration
- Reduce manual installation effort
- Support automatic host onboarding
- Simplify large-scale workstation monitoring

---

## Deployment Method

Zabbix Agent 2 was deployed through Active Directory Group Policy using a startup script and MSI installer package hosted on a network share.

Deployment components included:
- Zabbix Agent 2 MSI installer
- Preconfigured agent configuration file
- Custom PowerShell monitoring scripts
- UserParameter configuration files

---

## Challenges Encountered

Several challenges were encountered during implementation
-DNS Resolution issues
-Firewall configuration
-Group Policy propagation delays
-Hostname changes creating duplicate entries
-Agent communication troubleshooting
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
