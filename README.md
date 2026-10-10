# RegTrackDB — Application Support & Incident Investigation

## Project Overview

RegTrackDB is a simulated application support environment built using Microsoft SQL Server and SQL Server Management Studio (SSMS).

The project demonstrates how an Application Support Analyst can investigate application records, identify missing information, track technical support incidents, and retrieve troubleshooting results using SQL.

## Business Scenario

A fictional corporate registration system maintains application records for multiple organizations.

An application associated with Caribbean Business Solutions Ltd was reported missing from the registration system.

The simulated support workflow involved investigating the database, adding the missing record, documenting the incident, and retrieving the support ticket alongside the associated application.

## Technologies Used

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- Transact-SQL (T-SQL)
- Relational database design
- Primary and foreign keys

## Database Structure

**Applications Table**

Stores application IDs, company names, and application statuses.

**SupportTickets Table**

Stores support ticket IDs, related application IDs, issue descriptions, ticket statuses, and resolutions.

The tables are connected through the `ApplicationID` foreign key.

## Technical Skills Demonstrated

- SQL `SELECT`, `WHERE`, `INSERT`, and `UPDATE`
- Relational database design
- Primary key and foreign key constraints
- `INNER JOIN` operations
- Application record investigation
- Simulated incident documentation
- Data verification and troubleshooting

## Incident Investigation

**Ticket:** 1

**Application:** 104

**Issue:** Application missing from registration system

**Support Ticket Status:** Resolved

**Documented Resolution:** Verified missing record and restored application

The final SQL query successfully retrieved the support ticket and corresponding application record. The application remained in Pending status.

## Project Outcome

Developed a functional SQL-based simulation of an application support workflow, demonstrating database troubleshooting, incident tracking, and reporting.

## Future Improvements

- Automatic support ticket ID generation
- Incident timestamps and priority levels
- Support ticket assignment and escalation
- Audit logging of application changes
- Interactive support dashboard

*Disclaimer: All organizations, application records, and support incidents are fictional and used for educational purposes.*
