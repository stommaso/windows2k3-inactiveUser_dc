(echo The following users were found inactive for more than 90 days: & echo.) >  inactive_user.csv
dsquery user -inactive 90 -limit 0 | find /V "Disabled users" >>  inactive_user.csv

blat.exe inactive_user.csv -to recipient@domain.com -subject "Your Subject" -server mail.domain.com -f sender@domain.com -port 25
