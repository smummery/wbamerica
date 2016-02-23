Imports System.Collections.Generic
Imports System.Net
Imports System.IO
Imports System.Web.Mail
Imports System.Net.Mail
Partial Class payconfirm
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        ServicePointManager.Expect100Continue = True
        ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls

        If Request.IsSecureConnection = True Then
            Label1.Text = "true"
        Else
            Label1.Text = "false"

        End If

        '' CUSTOMIZE THIS: This is the seller's Payment Data Transfer authorization token.
        ' Replace this with the PDT token in "Website Payment Preferences" under your account.
        ' Dim authToken As String = "7zc9kWt7vXslKFacWsJeS8cUu1WTXDJvHgIuxurC7LXDrLF1oEzMZ1Jh14G"
        Dim authToken As String = "Plu7lXcREtAYdcy9lPwq8Z3MeHJVA7zNozENRbBy8qb154Z9q7pdXUdIM5i"
        Dim txToken As String = Request.QueryString("tx")
        Dim strRequest As String = "cmd=_notify-synch&tx=" & txToken & "&at=" & authToken
        'Post back to either sandbox or live
        Dim strSandbox As String = "https://www.sandbox.paypal.com/cgi-bin/webscr"
        Dim strLive As String = "https://www.paypal.com/cgi-bin/webscr"
        Dim req As HttpWebRequest = CType(WebRequest.Create(strSandbox), HttpWebRequest)

        'Set values for the request back
        req.Method = "POST"
        req.ContentType = "application/x-www-form-urlencoded"
        req.ContentLength = strRequest.Length
        Label1.Text = strRequest.Length
        ''for proxy
        ''Dim proxy As New WebProxy(New System.Uri("http://url:port#"))
        ''req.Proxy = proxy

        ''Send the request to PayPal and get the response
        ' Dim streamOut As StreamWriter = New StreamWriter(req.GetRequestStream(), Encoding.ASCII)
        'streamOut.Write(strRequest)
        ' streamOut.Close()
        '  Dim streamIn As StreamReader = New StreamReader(req.GetResponse().GetResponseStream())
        ' Dim strResponse As String = streamIn.ReadToEnd()
        '  streamIn.Close()

        '  If Not String.IsNullOrEmpty(strResponse) Then
        'Dim results As New Dictionary(Of String, String)
        ' Dim reader As New StringReader(strResponse)
        ' Dim line As String = reader.ReadLine()
        ' If line = "SUCCESS" Then
        'While True
        'Dim aLine As String
        ' aLine = reader.ReadLine
        ' If aLine IsNot Nothing Then
        'Dim strArr() As String
        ' strArr = aLine.Split("=")
        ' results.Add(strArr(0), strArr(1))
        ' Else
        ' Exit While
        ' End If
        ' End While
        ' Response.Write("<p><h3>Your order has been received.</h3></p>")
        '  Response.Write("<b>Details</b><br>")
        ' Response.Write("<li>Name: " + results("first_name") & " " & results("last_name") & "</li>")
        ' TextBox1.Text = results("custom")
        '  PaymentLabel.Text = results("payment_gross")
        '  FirstNameLabel.Text = results("first_name")
        '  Response.Write("<li>Item: " & results("custom") & "</li>")
        ' Response.Write("<li>Item: " & results("item_name") & "</li>")
        '  Response.Write("<li>Amount: " & results("payment_gross") & "</li>")
        '  Response.Write("<li>Status: " & results("payer_status") & "</li>")
        ' Response.Write("<li>Country: " & results("address_country") & "</li>")
        ' Response.Write("<li>ZipCode: " & results("address_zip") & "</li>")
        ' Response.Write("<hr>")
        '  ElseIf line = "FAIL" Then
        ''log for manual investigation
        ' Response.Write("Unable to retrive transaction detail")

        '  End If
        ' Else
        '  Response.Write("Unknown Error")
        '  End If


        ' Call SetPayPal()




    End Sub

    Public Sub SetPayPal()

        Dim payrows As Double
        payrows = PayPalGrid.Rows.Count
        payrows = 0
        Dim Email As String = Convert.ToString(PayPalGrid.Rows(payrows).Cells(3).Text)
        Dim ExpiryDate As Date = Convert.ToString(PayPalGrid.Rows(payrows).Cells(8).Text)
        Dim First_Name As String = Convert.ToString(PayPalGrid.Rows(payrows).Cells(1).Text)
        ' calculate the number of days left to expiry
        Dim D1, D2 As Date

        Dim ExpiryDays As String
        D2 = ExpiryDate
        D2 = FormatDateTime(D2, DateFormat.LongDate)
        'dtest2 = (dtest2.ToString("d"))
        D1 = Date.Today
        ' D1 = Today.AddDays(20)
        ExpiryDays = DateDiff(DateInterval.Day, D1, D2)
        TextBox2.Text = ExpiryDays

        'calculate new expirydays
        Dim payment As String

        payment = PaymentLabel.Text
        If payment = "29.95" Then
            ExpiryDays = ExpiryDays + 120
            TextBox2.Text = ExpiryDays
            ExpiryDate = Today.AddDays(ExpiryDays)
        Else
            If payment = "49.95" Then
                ExpiryDays = ExpiryDays + 240
                TextBox2.Text = ExpiryDays
                ExpiryDate = Today.AddDays(ExpiryDays)
            Else
                If payment = "69.95" Then
                    ExpiryDays = ExpiryDays + 455
                    TextBox2.Text = ExpiryDays
                    ExpiryDate = Today.AddDays(ExpiryDays)
                End If
            End If
        End If



        ' Add new days to file

        Dim UserID = TextBox1.Text
        Dim PaidDate = Date.Now
        Dim SetPayPalDataSource As New SqlDataSource
        SetPayPalDataSource.ConnectionString = ConfigurationManager.ConnectionStrings("ConnectionString1").ToString
        SetPayPalDataSource.UpdateCommand = "UPDATE PayPalTest SET  MemberPeriod=@MemberPeriod,PaidDate=@PaidDate,ExpiryDate=@ExpiryDate where UserID=@UserID"
        SetPayPalDataSource.UpdateParameters.Add("PaidDate", PaidDate)
        SetPayPalDataSource.UpdateParameters.Add("MemberPeriod", ExpiryDays)
        SetPayPalDataSource.UpdateParameters.Add("ExpiryDate", ExpiryDate)
        SetPayPalDataSource.UpdateParameters.Add("UserID", UserID)
        Dim rowsaffected As Integer = 0
        rowsaffected = SetPayPalDataSource.Update()

        ' Keep a transaction record

        Dim PayGuid As String = Guid.NewGuid().ToString()
        Dim PayDate = DateAndTime.Now
        Dim Amount = PaymentLabel.Text

        Dim AddPayPalRecord As New SqlDataSource
        AddPayPalRecord.ConnectionString = ConfigurationManager.ConnectionStrings("ConnectionString1").ToString
        AddPayPalRecord.InsertCommand = "INSERT INTO PayPalRecord(UserID,PayGuid,PayDate,Amount,MemberPeriod) Values(@UserID,@PayGuid, @PayDate,@Amount,@MemberPeriod)"
        AddPayPalRecord.InsertParameters.Add("UserID", UserID)
        AddPayPalRecord.InsertParameters.Add("PayGuid", PayGuid)
        AddPayPalRecord.InsertParameters.Add("PayDate", PayDate)
        AddPayPalRecord.InsertParameters.Add("Amount", Amount)
        AddPayPalRecord.InsertParameters.Add("MemberPeriod", ExpiryDays)
        Dim rowsaffectedPPR As Integer = 0
        rowsaffectedPPR = AddPayPalRecord.Insert()

        ' Send Payment Email to user
        Dim mm As System.Net.Mail.MailMessage = New System.Net.Mail.MailMessage("helpdesk@wbamerica.com", Email)

        Dim SendBCC As MailAddress = New MailAddress("smummery@live.com")
        mm.Bcc.Add(SendBCC)

        mm.Subject = "JobHireNow - Membership Payment Receipt"

        Dim body As String = "Hello " + First_Name + ","
        body += "<br /><br /><b>Payment Receipt:</b>" + " " + PayGuid
        body += "<br /><br />Your account is now active for:" + " " + ExpiryDays + " days " + " and expires on:" + " " + ExpiryDate
        body += "<br /><br />Best,"
        body += "<br /> The Working Better America Team!"

        mm.Body = body

        mm.IsBodyHtml = True

        Dim smtp As New SmtpClient()

        smtp.Host = "mail.wbamerica.com"

        smtp.EnableSsl = False

        Dim NetworkCred As New NetworkCredential("helpdesk@wbamerica.com", "mayfifth55")

        smtp.UseDefaultCredentials = True

        smtp.Credentials = NetworkCred

        smtp.Port = 2525

        smtp.Send(mm)


        Session("Security") = "1"
        Session("Confirmed") = "2"
        Session("UserID") = TextBox1.Text
        Session("ExpiryDays") = TextBox2.Text

        Response.Redirect("employerprofile.aspx")



    End Sub



End Class
