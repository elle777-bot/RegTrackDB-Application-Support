
CREATE TABLE dbo.SupportTickets (
    TicketID INT PRIMARY KEY,
    ApplicationID INT,
    IssueDescription NVARCHAR(255),
    TicketStatus NVARCHAR(50),
    Resolution NVARCHAR(255),
    FOREIGN KEY (ApplicationID)
        REFERENCES dbo.Applications(ApplicationID)
);
