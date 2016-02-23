
Partial Class empreg
    Inherits System.Web.UI.Page
    Public custom As String


    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        ' rem this out for testing - ajit
        ' If Session("UserID") < 1 Then
        'Response.Redirect("Welcome.aspx")
        ' End If

        custom = "67891234"

        ' custom = Session("UserID")


        ' Dim ExpiryDays = Session("ExpiryDays")
        ' ExpiryTextBox.Text = ExpiryDays
        ' RenewalTextBox.Text = Today.AddDays(ExpiryDays)

    End Sub
End Class
