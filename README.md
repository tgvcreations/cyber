# 🛡️ CyberSentinel AI – Automated Cyber Incident Response Agent

> **An autonomous, AI-assisted Security Operations Center (SOC) incident response and containment platform designed for cybersecurity education, presentation, and evaluation.**

---

### 🌐 Official Project Submission Links
| Resource | URL Link | Status |
| :--- | :--- | :--- |
| **🚀 Live Interactive Web App** | `https://tgvcreations.github.io/cyber/` | ![Live](https://img.shields.io/badge/Status-Live%20Online-emerald.svg) |
| **📂 Source Code Repository** | `https://github.com/tgvcreations/cyber` | ![Repo](https://img.shields.io/badge/GitHub-Public%20Repo-blue.svg) |

---

[![FastAPI](https://img.shields.io/badge/Backend-FastAPI%20v0.110-009688.svg)](https://fastapi.tiangolo.com)
[![React](https://img.shields.io/badge/Frontend-React%2019%20%2B%20TypeScript-61dafb.svg)](https://react.dev)
[![Tailwind CSS](https://img.shields.io/badge/Styling-Tailwind%20CSS%203.4-38bdf8.svg)](https://tailwindcss.com)
[![SQLite](https://img.shields.io/badge/Database-SQLite%203-003B57.svg)](https://sqlite.org)
[![NIST Aligned](https://img.shields.io/badge/Standard-NIST%20SP%20800--61%20Rev2-blue.svg)](https://csrc.nist.gov)
[![MITRE ATT&CK](https://img.shields.io/badge/Framework-MITRE%20ATT%26CK%20Aligned-red.svg)](https://attack.mitre.org)

---

## 📋 Table of Contents
1. [Project Overview & Presentation Summary](#-project-overview)
2. [End-to-End Pipeline & Architecture](#-system-architecture)
3. [Core Feature Breakdown](#-core-features)
4. [Live Demo Scenario (College Presentation Guide)](#-live-demo-scenario-presentation-guide)
5. [Database Schema](#-database-schema)
6. [API Documentation](#-api-documentation)
7. [Installation & Local Startup](#-installation--local-startup)
8. [Theoretical Concepts for Diploma Students](#-cybersecurity-concepts-for-diploma-students)
9. [Defensive Safety Boundaries](#-defensive-safety-boundaries)

---

## 🎯 Project Overview

In traditional Security Operations Centers (SOCs), cybersecurity analysts face severe **alert fatigue**, manually correlating thousands of log entries across disparate systems before executing containment actions. 

**CyberSentinel AI** bridges this gap by providing an autonomous defensive incident response agent that:
1. Ingests raw security logs (Syslog, Web access, Event logs).
2. Parses indicators of attack using heuristic & signature pattern matching.
3. Quantifies business risk using a multi-factor **Dynamic Risk Scoring Algorithm (0–100)**.
4. Generates contextual AI explanations aligned with the **MITRE ATT&CK Framework**.
5. Simulates safe automated containment actions (firewall block rules, endpoint isolation, credential invalidation).
6. Provides an interactive conversational **SOC AI Assistant Co-Pilot**.
7. Compiles formal, print-ready **NIST SP 800-61 Incident Response Reports**.

> **Note**: This is a defensive, educational system. All attack samples and containment responses are simulated in state; no destructive commands, real network scanning, or OS account tampering take place.

---

## 🏛️ System Architecture

### Pipeline Flowchart
```
Security Logs (Syslog/Web/Auth)
       │
       ▼
[Log Parser & Entity Normalizer]  ──► (IP, User, Port, Attempts, Asset)
       │
       ▼
[Heuristic & Signature Detection Engine]  ──► (Rule matching: Brute-Force, SQLi, PortScan, C2)
       │
       ▼
[AI Reasoning & Correlation Layer]
   ├─► MITRE ATT&CK Mapping (e.g., T1110, T1190, T1046)
   ├─► Dynamic Risk Scorer (Attempts + Asset Multiplier)
   └─► Natural Language Explanations ("What", "Why", "Action")
       │
       ▼
[SQLite Incident Registry] (State: New ──► Investigating ──► Contained ──► Resolved)
       │
       ├─────────────────────────────────┬─────────────────────────────────┐
       ▼                                 ▼                                 ▼
[SOC Command Dashboard]       [Safe Response Simulator]          [AI SOC Co-Pilot]
• Real-time Radar & DEFCON    • Simulate Block IP                • Interactive Q&A
• Telemetry Area Charts       • Simulate Isolate Endpoint        • Log evidence breakdown
• Severity Breakdown          • Simulate Disable Account         • Forensic reasoning
• 1-Click Demo Incident       • Generate ServiceNow Ticket       • Remediation guidance
```

### Technology Stack
- **Frontend**: React 19, TypeScript, Vite, Tailwind CSS, Lucide React, Recharts.
- **Backend**: Python 3.11, FastAPI, SQLAlchemy ORM, Pydantic v2, Uvicorn.
- **Database**: SQLite 3 with WAL journal mode (`database/cybersentinel.db`).
- **AI Engine**: Hybrid architecture featuring an autonomous offline SOC expert engine + pluggable external LLM adapter (OpenAI / Google Gemini).

---

## 🚀 Core Features

### 1. Security Operations Center (SOC) Dashboard
- **Threat Posture Status**: Live alert indicator (`DEFCON 2 - ELEVATED ALERT`, `DEFCON 3 - HEIGHTENED READINESS`).
- **Key Metrics**: Total Incidents, Critical Incidents, High/Med/Low counts, Active Blocked IPs, and Active Alerts.
- **Interactive Visualizations**:
  - 7-Day Incident Frequency Trend (Area Chart).
  - Severity Distribution Donut Chart.
  - MITRE ATT&CK Vector Breakdown Bar Chart.
- **Recent Telemetry Feed**: Live alert queue with instant investigative drill-down.

### 2. Log Analyzer & Ingestion Engine
- Paste raw multi-line logs or upload `.log`, `.txt`, `.json` files.
- **One-Click Attack Presets**:
  1. *Brute-Force SSH/RDP*: 27 rapid failed logins targeting the `admin` account.
  2. *SQL Injection (SQLi)*: `UNION SELECT` extraction attempt on `/products`.
  3. *Port Scanning*: Nmap TCP SYN scan probing 10 ports on edge interfaces.
  4. *Malware C2 Beacon*: Encoded PowerShell reverse shell outbound heartbeat.
  5. *Privilege Escalation*: Unauthorized sudo access to `/etc/shadow`.
  6. *Data Exfiltration*: 4.8 GB outbound encrypted transfer over NetFlow.

### 3. Dynamic Risk Scoring Algorithm (0–100)
The risk score reflects both threat velocity and target criticality:
$$\text{Risk Score} = \min\left(99, (\text{Base Severity} + \text{Attempt Velocity}) \times \text{Asset Multiplier}\right)$$

| Score Range | Severity Level | SOC Action Requirement |
| :---: | :---: | :--- |
| **76 – 100** | **Critical** | Immediate automated containment & SOC Lead escalation |
| **51 – 75** | **High** | Priority triage and endpoint isolation |
| **26 – 50** | **Medium** | Standard analyst investigation |
| **0 – 25** | **Low** | Routine telemetry monitoring |

### 4. Automated Safe Response Simulator
All actions operate within a safe sandbox to prevent operational risk:
- **Simulate Block IP**: Adds source IP to perimeter drop list; logs to timeline; updates incident status to `Contained`.
- **Simulate Isolate Endpoint**: Quarantines affected host to a virtual isolation VLAN.
- **Simulate Disable Account**: Revokes Kerberos/NTLM/OAuth tokens for targeted username.
- **Create Security Ticket**: Emulates Jira/ServiceNow ticket creation (`#SEC-2026-XXXX`).
- **Escalate Incident**: Pages Tier-3 CERT Lead & Incident Commander.
- **Mark as Resolved**: Verifies mitigation and transitions state to `Resolved`.

### 5. AI Security Assistant (SOC Co-Pilot)
Conversational assistant connected to live database context capable of answering:
- *"Why was this incident classified as critical?"*
- *"What evidence indicates a brute-force attack?"*
- *"What should I do next?"*
- *"Show me today's critical incidents."*
- *"Explain this security alert in simple terms."*

### 6. Incident Reporting & Auditing
- Generates formal, printable forensic reports.
- Includes Executive Summary, Threat Indicators, Log Evidence, Actions Taken, NIST Timeline, and Sign-Off blocks.
- One-click print/PDF layout and JSON export.

---

## 🎬 Live Demo Scenario (Presentation Guide)

During a college project presentation or viva, use this **10-Step Demo Workflow**:

1. **Open Dashboard**: Show the SOC interface at `http://localhost:5173`. Point out the DEFCON threat posture and metrics.
2. **Click "Run Demo Incident"**:
   - CyberSentinel AI ingests a brute-force authentication event (27 attempts from `192.0.2.15` targeting `admin`).
   - The AI Correlation Engine classifies the event as **MITRE ATT&CK T1110 (Brute Force)**.
   - The Risk Scorer calculates **87/100 (Critical)** due to administrative targeting on the Domain Controller.
3. **Inspect Alert**: The alert banner immediately turns red with an active alarm.
4. **Click "View Details"**:
   - Point out the **AI Explanation**: *What happened*, *Why it is suspicious*, and *Recommended actions*.
   - Show the **Log Evidence** window displaying the captured raw telemetry.
   - Highlight the **Incident Timeline** showing progress through *Detection*, *Analysis*, and *Risk Assessment*.
5. **Execute "Simulate Block IP"**:
   - Click the button.
   - Explain to the examiner that this safely simulates a perimeter firewall drop rule.
   - Notice the status immediately changes to **"Contained"**.
   - A 4th step (*Response*) is recorded in the timeline.
6. **Ask the AI Assistant**:
   - Open the **AI Assistant** tab.
   - Click *"Why was this incident classified as critical?"* or type it in.
   - Show how the AI explains the risk factors (velocity, asset criticality) in natural language.
7. **Check the Response Center**:
   - Navigate to **Response Center**.
   - Show `192.0.2.15` listed under **Blocked IPs** and review the audit log.
8. **Generate the Report**:
   - Navigate to **Reports**.
   - Show the formal incident briefing with classification headers, evidence, and remediation steps.
   - Click **"Print / Save PDF"** to demonstrate report generation.
9. **Mark as Resolved**:
   - Return to the incident and click **"Mark Resolved"**.
   - The incident completes the final stage (*Resolution*) of the NIST SP 800-61 lifecycle.

---

## 🗄️ Database Schema

Stored in `database/cybersentinel.db` (SQLite):

```sql
-- Incidents Master Table
CREATE TABLE incidents (
    id VARCHAR(50) PRIMARY KEY,
    created_at DATETIME,
    title VARCHAR(200) NOT NULL,
    attack_category VARCHAR(100) NOT NULL,
    severity VARCHAR(50) NOT NULL,
    risk_score INTEGER,
    source_ip VARCHAR(50),
    target_asset VARCHAR(100),
    status VARCHAR(50),  -- 'New', 'Investigating', 'Contained', 'Resolved'
    ai_summary TEXT,
    why_suspicious TEXT,
    evidence TEXT,
    recommended_action TEXT,
    mitre_technique VARCHAR(150),
    analyst_notes TEXT
);

-- NIST Lifecycle Timeline
CREATE TABLE incident_timeline (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    incident_id VARCHAR(50) REFERENCES incidents(id) ON DELETE CASCADE,
    timestamp DATETIME,
    stage VARCHAR(50),   -- 'Detection', 'Analysis', 'Risk Assessment', 'Response', 'Resolution'
    message TEXT NOT NULL,
    actor VARCHAR(50)
);

-- Safe Containment Actions
CREATE TABLE response_actions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    incident_id VARCHAR(50) REFERENCES incidents(id) ON DELETE CASCADE,
    action_type VARCHAR(50), -- 'BLOCK_IP', 'ISOLATE_ENDPOINT', 'DISABLE_ACCOUNT', etc.
    target VARCHAR(100),
    status VARCHAR(50),
    ticket_ref VARCHAR(50),
    details TEXT,
    executed_at DATETIME
);

-- Perimeter Blacklist State
CREATE TABLE blocked_ips (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    ip_address VARCHAR(50) UNIQUE NOT NULL,
    reason VARCHAR(255),
    incident_id VARCHAR(50),
    blocked_at DATETIME,
    active BOOLEAN DEFAULT 1
);
```

---

## 📡 API Documentation

Interactive Swagger UI is available at **`http://127.0.0.1:8000/docs`**.

| Method | Endpoint | Description |
| :--- | :--- | :--- |
| `GET` | `/health` | Healthcheck and engine status |
| `GET` | `/api/stats` | SOC dashboard metrics, DEFCON posture, and charts |
| `GET` | `/api/incidents` | List incidents with search, severity, status filters |
| `GET` | `/api/incidents/{id}` | Get full incident detail, timeline, and actions |
| `PUT` | `/api/incidents/{id}` | Update status, severity, or analyst notes |
| `POST` | `/api/logs/analyze` | Parse raw log dump, run AI detection, auto-create incidents |
| `GET` | `/api/logs/presets` | Retrieve sample attack log presets |
| `POST` | `/api/simulation/demo-incident` | Trigger 1-click critical brute-force demo scenario |
| `POST` | `/api/simulation/action` | Execute safe simulated containment action |
| `GET` | `/api/simulation/blocked-ips` | List active simulated blocked IPs |
| `POST` | `/api/simulation/unblock-ip/{id}` | Remove simulated IP block |
| `POST` | `/api/assistant/chat` | Query conversational SOC AI Assistant |
| `GET` | `/api/reports/{incident_id}` | Generate comprehensive incident report |

---

## 💻 Installation & Local Startup

### Prerequisites
- Windows 10/11
- Python 3.11+
- Node.js v20+ / v24+ & npm

### Method 1: One-Click Startup (Recommended)
Open PowerShell in the project directory and run:
```powershell
.\run_app.ps1
```
This automatically boots both the FastAPI backend (`:8000`) and the React frontend (`:5173`).

---

### Method 2: Manual Step-by-Step Launch

#### Step 1: Launch Backend
```powershell
# In project root:
backend\venv\Scripts\activate
uvicorn backend.app.main:app --host 127.0.0.1 --port 8000 --reload
```
*API will be available at: http://127.0.0.1:8000 (Swagger docs at `/docs`)*

#### Step 2: Launch Frontend
```powershell
# In a second terminal:
cd frontend
npm run dev
```
*Open your browser at: http://localhost:5173*

---

## 🎓 Cybersecurity Concepts for Diploma Students

During your evaluation, examiners may ask about the theoretical underpinnings of this project:

1. **What is a SOC?**  
   A Security Operations Center is a centralized unit that monitors, detects, analyzes, and responds to cybersecurity incidents using people, processes, and technology.
2. **What is NIST SP 800-61 Rev. 2?**  
   The Computer Security Incident Handling Guide defining the 4 core stages:
   - Preparation
   - Detection & Analysis
   - Containment, Eradication & Recovery
   - Post-Incident Activity
   *CyberSentinel AI implements this directly in the 5-stage Incident Timeline!*
3. **What is MITRE ATT&CK?**  
   A globally accessible knowledge base of adversary tactics, techniques, and procedures (TTPs) based on real-world observations.
4. **Why is Risk Scoring Important?**  
   Raw alert counts overwhelm analysts. A risk score allows automated prioritization so Critical threats (e.g. brute-forcing a Domain Controller) are handled before Low threats (e.g. benign port scan on an isolated edge).

---

## 🛡️ Defensive Safety Boundaries

To ensure safe educational and demonstration use:
- All IP addresses belong to IANA documentation blocks (`192.0.2.0/24`, `198.51.100.0/24`, `203.0.113.0/24` - RFC 5737).
- No actual network interfaces are reconfigured.
- No malicious payloads are executed.
- No real system credentials or passwords are saved or tested against live services.

---

**Developed for Cybersecurity Diploma Capstone & Educational SOC Demonstrations.**

