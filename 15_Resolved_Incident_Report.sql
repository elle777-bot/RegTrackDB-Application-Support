
SELECT
    t.TicketID,
    a.ApplicationID,
    a.CompanyName,
    a.Status AS ApplicationStatus,
    t.IssueDescription,
    t.TicketStatus,
    t.Resolution
FROM dbo.SupportTickets AS t
INNER JOIN dbo.Applications AS a
    ON t.ApplicationID = a.ApplicationID
WHERE t.TicketStatus = 'Resolved';
