#create the mail message
$mail = New-Object System.Net.Mail.MailMessage
#set the addresses
$mail.From = New-Object System.Net.Mail.MailAddress("pdseminars@vodafone.co.nz")
$mail.To.Add("tim_smith@vodafone.co.nz")
#set the content
$mail.Subject = "Hello PowerShell";
$mail.Body = "Hi

Just to let you know about the ‘An Introduction to Restorative Justice’ 
and ‘Restorative Conference Facilitation Skills’ seminars.

If you wish to attend a seminar please book your place by printing and 
filling out the attached PDF and mailing it to Professional Development Seminars,
PO Box 84-260, Westgate, Auckland 0618  or Fax: (09) 416 3985. 
Alternatively places can be booked online at  www.pdseminars.co.nz .

Regards PDS

Professional Development Seminars
PO Box 84-260, Westgate, Auckland 0618
Ph: 027 275 0045 Fax: 09 416 3985 E: info@pdseminars.co.nz

AN INTRODUCTION TO RESTORATIVE JUSTICE 

With Margaret Thorsborne Monday 26th September 2011
This one day seminar is an opportunity to learn about restorative justice from an internationally
recognised and acclaimed Restorative Justice trainer, Margaret Thorsborne.
Margaret is based in Queensland but has worked extensively with schools and organisations in
New Zealand to train staff in the use of Restorative Justice.
This is an opportunity for anyone who is interested in Restorative Justice to meet and hear from
Margaret. Her ability to grasp the ‘big picture’ of organisational culture and morale means she
can offer sound advice and processes to build on policies and practices which enhance
relationships instead of putting them at risk.
She provides practical advice and techniques on how to repair harm and restore relationships.
As well as providing a helpful and insightful introduction to Restorative Justice, Margaret will
also introduce ways in which Restorative Justice can be used:
1) As a relational approach to managing behaviour
2) As a leadership model
3) As a way of addressing bullying
4) As an effective intervention for serious conflict and antisocial or inappropriate behaviour
Margaret presents in a warm, encouraging and honest way with a well-developed sense of
humour.
Where: Auckland University EPSOM Campus, Music Auditorium, Gate 3, Epsom Ave, Mt. Eden,
Auckland (parking is available in the Student Car Park at Gate 2 & on street
When: Monday 26th September 2011 9:15am – 3.00 pm
Cost: $160.00 (incl. GST) - make cheques payable to Professional Development Seminars
Morning Tea only is provided. Lunch is available from the student café or local shopping centre.
Queries: info@pdseminars.co.nz
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
ENROLMENT FORM: An Introduction to Restorative Justice: Monday Sept 26th 2011
Name: ……………………………………………Organisation: ………………..……………………
Address (to send Invoice/Receipt) : ……………………………………………………………………
…………………………………………………………………………………………………………..
Ph. Work/Home: ………………………Email: ……..……………………… Fax: …………………..
$160 fee enclosed or Please Invoice

Mail to: Professional Development Seminars, PO Box 84-260, Westgate, Auckland 0618 or Fax: (09) 416 3985
or Register for this seminar on our website: www.pdseminars.co.nz


RESTORATIVE CONFERENCE FACILITATION SKILLS

A Three-Day Workshop with Margaret Thorsborne
Thursday 1st, Friday 2nd, Saturday 3rd December 2011
This workshop will be of interest to anyone who would like to learn the skills of being a restorative
conference facilitator. At the end of the 3 day intensive workshop, participants will be able to confidently
lead a restorative conference.
While the emphasis of this course is on running conferences in educational settings, the skills learned can
be used in a wide range of settings, both school based and community based. This is an outstanding
workshop and teaches skills that greatly enhance the capabilities of any counsellor, RTLB, social worker,
teacher – anyone wanting to develop restorative processes in their work and practice.
Chief District Court Judge, David Carruthers wrote in his foreword to the training manual used for this
course: What is important is that when this work is done, it is done with a proper acknowledgement of the
professional basics and skills involved, and is not left to those with good intentions only. It is essential that
the work is recognised as requiring a substantial skill and professional base. He also writes: I have
known Margaret Thorsborne for some years and have long been an admirer of her innovative and
pioneering efforts in the introduction to restorative justice techniques.
Margaret is a Brisbane-based trainer and facilitator. She has an international reputation for her work in
restorative justice. She is an outstanding presenter, and the author of many books and articles. She is one
of our most popular presenters.
Where: Western Springs Garden Community Hall, 956 Great North Road, Western Springs, Auckland
(Ample off street parking including mobility carparks.)
When: 1, 2, 3 Dec 2011 from 9:00am – 4:30pm Morning Tea ONLY Provided.
Cost: $490.00 (incl. GST) Cheques payable to Professional Development Seminars
A $44 manual needs to be purchased on the day from Margaret.
Queries: info@pdseminars.co.nz

ENROLMENT FORM: Restorative Skills 3 Day Workshop with Margaret Thorsborne, Dec 2011
NAME______________________________ ORGANISATION__________________________________________________
ADDRESS (to send invoice/receipt) ________________________________________________________________________
_____________________________________________________________________________________________________
PH. WORK/HOME _______________________ EMAIL______________________________________________________
$490.00 Fee Enclosed:	or Please Invoice:

Mail to: Professional Development Seminars, PO Box 84-260, Westgate, Auckland 0618 or Fax: (09) 416 3985
or Register for this seminar on our website: www.pdseminars.co.nz

PLEASE NOTE : REGISTRATION WILL ONLY BE CONFIRMED ON PAYMENT OF FEE
AS THIS IS A LIMITED NUMBERS WORKSHOP IN HIGH DEMAND ";

#send the message
$smtp = New-Object System.Net.Mail.SmtpClient -argumentList "smtp.vodafone.co.nz"
$smtp.Credentials = New-Object System.Net.NetworkCredential `
-argumentList "tim_smith@vodafone.co.nz","testpass"
$smtp.Send($mail)