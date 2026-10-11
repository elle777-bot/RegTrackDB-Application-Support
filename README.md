# RegTrackDB — Application Support & Incident Investigation

## Project Overview

RegTrackDB is a SQL Server database project I developed to practice application support, database management, and troubleshooting using realistic business scenarios.

The project simulates a company registration system where applications are stored, searched, updated, and monitored. It also includes a support ticket system to document and investigate application-related issues.

I built this project to strengthen my SQL skills and demonstrate how databases can support everyday business operations and technical problem-solving.

## Project Objectives

- Create and manage a relational database using SQL Server.
- Store and retrieve company registration applications.
- Search for applications using company names and application IDs.
- Filter applications based on their current status.
- Update application records and verify changes.
- Investigate a simulated missing application.
- Record support incidents and document their resolutions.
- Generate an incident report using related database tables.

## Technologies Used

- **Microsoft SQL Server** — Database management
- **SQL Server Management Studio (SSMS)** — Writing and executing SQL queries
- **SQL (T-SQL)** — Creating tables, inserting records, retrieving data, and updating information
- **GitHub** — Project documentation and version control

## Database Structure

The project uses two related tables.

### 1. Applications

Stores company registration information.

| Column | Description |
|---|---|
| ApplicationID | Unique identifier for each application |
| CompanyName | Name of the company |
| Status | Current application status |

Example statuses include Pending, Approved, and Under Review.

### 2. SupportTickets

Stores information about simulated application-support incidents.

| Column | Description |
|---|---|
| TicketID | Unique identifier for each support ticket |
| ApplicationID | Links the ticket to an application |
| IssueDescription | Description of the reported problem |
| TicketStatus | Current status of the support ticket |
| Resolution | Documented outcome of the incident |

The tables are connected through `ApplicationID`, which allows support tickets to be associated with specific applications.

## SQL Scripts

The project includes the following scripts:

| Script | Purpose |
|---|---|
| 00_Create_Applications_Table.sql | Creates the Applications table |
| 01_Insert_Application_Records.sql | Adds sample company applications |
| 02_View_All_Applications.sql | Displays all application records |
| 03_Search_By_Company.sql | Searches for an application by company name |
| 04_Filter_Pending_Applications.sql | Displays applications with Pending status |
| 05_Search_By_Application_ID.sql | Finds an application using its unique ID |
| 06_Update_Application_Status.sql | Updates an application's status |
| 07_Verify_Application_Status_Update.sql | Checks that the updated record is correct |
| 08_Investigate_Missing_Application.sql | Searches for a specific application during an investigation |
| 09_Search_Missing_Company.sql | Searches for the company associated with the reported issue |
| 10_Insert_New_Application.sql | Adds an application record |
| 11_Verify_New_Application.sql | Confirms that the new application exists |
| 12_Create_Support_Tickets_Table.sql | Creates the SupportTickets table |
| 13_Insert_Support_Ticket.sql | Records a simulated support incident |
| 14_Resolved_Incident_Report.sql | Displays resolved support tickets alongside their related applications |

## Simulated Application Support Incident

### Scenario

A company reports that its registration application cannot be found in the system.

For this scenario, I used the fictional company **Caribbean Business Solutions Ltd**, associated with Application ID 104.

### Investigation Process

**Step 1 — Search for the application**

I used SQL SELECT statements with WHERE conditions to search for the application by ID and company name.

**Step 2 — Add the application record**

I used an INSERT statement to add the application to the database as part of the simulated support workflow.

**Step 3 — Verify the application**

I ran another SELECT statement to confirm that the application record was present.

**Step 4 — Document the incident**

I created a support ticket containing the reported issue, its status, and a resolution description.

**Step 5 — Generate an incident report**

I used an INNER JOIN to connect the Applications and SupportTickets tables and display the resolved support ticket with its associated application information.

### Outcome

The project demonstrates how SQL can be used to investigate application records, verify database changes, document support incidents, and retrieve related information for reporting.

The support ticket is marked **Resolved**, while the associated application remains **Pending**. These are separate statuses representing the support incident and the registration application.

**Note:** This is a simulated support scenario using fictional data. It does not represent recovery of a record from a real production system.

## SQL Skills Demonstrated

- CREATE TABLE
- INSERT INTO
- SELECT
- WHERE
- UPDATE
- INNER JOIN
- PRIMARY KEY
- FOREIGN KEY
- Relational database design
- Record verification
- Basic incident documentation and reporting

## How to Use This Project

1. Install Microsoft SQL Server and SQL Server Management Studio.
2. Create a database named `RegTrackDB`.
3. Open the SQL scripts in SSMS and select `RegTrackDB` as the active database.
4. Run the table creation and sample data scripts in numerical order on a new, empty database.
5. Run the remaining queries to explore application management and the simulated incident workflow.

**Important:** The CREATE TABLE and INSERT scripts are intended for initial setup. Running them again after the tables and records exist may produce duplicate-object or duplicate-key errors.

## What I Learned

Through this project, I gained practical experience working with SQL queries, organizing relational data, investigating application records, and documenting support incidents.

I also developed a better understanding of how SQL can be used in application support environments to locate information, verify changes, and support troubleshooting.

## Future Improvements

- Add application creation and modification timestamps.
- Include additional support ticket statuses and priorities.
- Add error handling and validation to SQL scripts.
- Develop a simple user interface for searching applications and submitting support tickets.
- Create additional incident scenarios for troubleshooting practice.

---

**Project Type:** Personal learning and portfolio project

**Data:** Fictional sample records

**Focus:** SQL, application support, database operations, and incident investigation
