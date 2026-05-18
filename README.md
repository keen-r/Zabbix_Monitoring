# Zabbix_Monitoring

## Overview

This project documents the design and deployment of an open-source infrastructure monitoring platform for a healthcare environment using Zabbix. This project was developed through a combination of hands-on testing, vendor documentation, community resources, and AI-assisted troublshooting.

The primary goals of this project are to:

- Improve operational visibility for on-site IT
- Reduce dependency on external MSP tools
- Centralize monitoring and alerting
- Build customizable dashboards and reporting
- Evaluate open-source infrastructure and security solutions

---

## Current Features

### Infrastructure Being Monitored

- Windows workstations
- Linux monitoring server
- VMware ESXi and vSphere (via vCenter integration and hypervisor discovery)
- Cisco Meraki networking equipment (via API)

### Automation

- Group Policy deployment of Zabbix agents
- Automatic host registration
- Template-based monitoring assignment
- Email alerting and notifications
- Scheduled report generation

---

## Planned Features

### Security Monitoring (In Progress)

Wazuh and Sysmon are currently being evaluated within a test environment.

#### Current Testing Includes

- Endpoint telemetry collection
- Sysmon event ingestion
- Security event visibility testing
- SIEM integration evaluation

#### Planned Testing

- Zabbix + Wazuh integration
- Centralized security dashboards
- Threat detection tuning
- Security alert correlation

---

## Repository Goals

This repository is intended to document:

- Infrastructure monitoring configurations
- Dashboard examples
- Trigger logic
- Alerting workflows
- Automation scripts
- API integrations
- Troubleshooting notes
- Testing and experimentation

---

## Current Dashboards
All of the following dashboards are a work in progress and are intended to be an "at-a-glance" view. These dashboards will continue evolving as additional hosts and infrastructure are onboarded.

---

### Hospital Workstations Overview
<img width="3270" height="1198" alt="image" src="https://github.com/user-attachments/assets/6d2c9639-6d1a-4d93-b01c-88549367bec9" />

### This dashboard is designed around real-time visibility into endpoint health, performance, and operational issues across the environment.

---

### Trends
<img width="3434" height="1201" alt="image" src="https://github.com/user-attachments/assets/9930f737-7edb-4e39-bd4d-5cc0d27cee4e" />

### This dashboard is designed to help identify recurring performance issues, resource bottlenecks, abnormal network behavior, and trends that may not be immediately visible through real-time monitoring alone. 

---

### VMware Infrastructure Overview
<img width="3040" height="775" alt="image" src="https://github.com/user-attachments/assets/076cd680-0ac0-4325-a64c-7e3e1786aaaf" />

### This dashboard is designed around providing operational insight into virtualization workloads, identifying resource-intensive systems, and monitoring ESXi host health across the VMware environment.

---

### Meraki Networking
<img width="2900" height="625" alt="image" src="https://github.com/user-attachments/assets/5e56df71-1725-477b-b2e7-22d94e49b407" />

### This dashboard is designed to provide centralized operational awareness of network infrastructure health, wireless utilization, and device connectivity throughout the environment.

---
