# Load the DCOM library
library (RDCOMClient)

# Open Outlook
Outlook <- COMCreate("Outlook.Application")

outMail = Outlook$CreateItem(0)

# Create a new message
Email = Outlook$CreateItem(0)

# Set the recipient, subject, and body
Email[["to"]] = ""
Email[["cc"]] = ""
Email[["bcc"]] = ""
Email[["subject"]] = "Test R email"
Email[["body"]] = 
  "Test R email: D:\\Reports\\Sales Analysis.xlsx"
#outMail[["Attachments"]]$Add("GE.R")

# Send the message
Email$Send()

# Close Outlook, clear the message
rm(Outlook, Email)


