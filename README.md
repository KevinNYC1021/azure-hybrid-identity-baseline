# Azure Hybrid Identity Baseline

## Overview
This repository documents the configuration and scripts used to deploy a
hybrid identity baseline integrating on-premises Active Directory with
Microsoft Entra ID (Azure AD). Designed for organizations running a hybrid
model with both on-premises and cloud workloads.

## Architecture
- On-premises AD synced to Entra ID via Azure AD Connect (Password Hash Sync)
- Seamless SSO enabled for domain-joined devices
- Conditional Access policies enforcing MFA and compliant device requirements
- Privileged Identity Management (PIM) for Just-in-Time admin access
- Named Locations configured for trusted IP ranges

## Conditional Access Policies Implemented
| Policy | Description |
|--------|-------------|
| Require MFA for All Users | Enforces MFA for all cloud app sign-ins |
| Block Legacy Authentication | Blocks basic auth protocols (SMTP, IMAP, POP3) |
| Require Compliant Device | Enforces Intune compliance before M365 access |
| Admin MFA Always | Enforces MFA for all privileged roles, no exceptions |
| High Risk Sign-In Block | Blocks sign-ins flagged as high risk by Identity Protection |

## Scripts
See /scripts folder for PowerShell automation.

## References
- [Microsoft Entra ID Documentation](https://learn.microsoft.com/en-us/entra/identity/)
- [Conditional Access Best Practices](https://learn.microsoft.com/en-us/entra/identity/conditional-access/overview)
