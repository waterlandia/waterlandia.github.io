﻿Public Class _Default
    Inherits System.Web.UI.Page


    Private Sub sendContactButton_Click(sender As Object, e As EventArgs) Handles sendContactButton.Click
        Dim fullName, emailAddress, comment, fullMessage As String
        'Request.Form.Item(3) is the name submitted
        'Request.Form.Item(4) is the email submitted
        'Request.Form.Item(5) is message sent
        fullName = Request.Form.Item("name")
        emailAddress = Request.Form.Item("email")
        comment = Request.Form.Item(5)
        fullMessage = fullName + "{{,}}" + emailAddress + "{{,}}" + comment
        System.IO.File.AppendAllText(System.Web.HttpContext.Current.Server.MapPath("~") + "/AppData/Appointments.txt", fullMessage)
        System.IO.File.AppendAllText(System.Web.HttpContext.Current.Server.MapPath("~") + "/AppData/Appointments.txt", Environment.NewLine)
    End Sub
End Class