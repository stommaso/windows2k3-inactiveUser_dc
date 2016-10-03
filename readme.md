## Synopsis

	Script used on Windows Server 2k3 DC to help you clean up your AD. Check for inactive users and send a report

## Motivation

	If you still use a 2k3 DC ( **=(** ) you will need help to keep your AD clean. This script will help you do that generating a helpful report.

## Installation

	Just copy the project on you DC and edit on **send_email_inactive_users.bat** the line **blat.exe** with your email settings. Then create a scheduled task to run every n days/months... This script is made for a 2k3 DC but should work without problem with next generation

## Code

	- dsquery
			- inactive 90 > check for users inactive for more than 90 days
			- limit 0 		> return all results

	- blat.exe
		- inactive_user.csv 	> file to print on email body
		- to 									> recipient
		- subject							> email subject
		- server 							> mail server
		- f 									> sender
		- port 								> SMTP port
