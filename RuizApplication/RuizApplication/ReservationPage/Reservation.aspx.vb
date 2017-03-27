Imports System.IO
Public Class Reservation
    Inherits System.Web.UI.Page
    'The function below reads any line of a file given a path to the file and a line number
    Private Function readNthLine(fileAndPath As String, lineNumber As Integer) As String
        Dim nthLine As String = Nothing
        Dim n As Integer
        Try
            Using sr As StreamReader = New StreamReader(fileAndPath)
                n = 0
                Do While (sr.Peek() >= 0) And (n < lineNumber)
                    sr.ReadLine()
                    n += 1
                Loop
                If sr.Peek() >= 0 Then
                    nthLine = sr.ReadLine()
                End If
            End Using
        Catch ex As Exception
            Throw
        End Try
        Return nthLine
    End Function

    Protected Sub reserveButton_Click(sender As Object, e As EventArgs) Handles reserveButton.Click
        Dim oldReservedTimes() As String = reservedTimesArrayField.Text.Split(",")
        Dim selection() As String = selectedTimes.Value.Split(",")
        Dim newReservedTimes As New List(Of String)
        newReservedTimes.Add(oldReservedTimes(0))

        For index As Integer = 0 To (selection.Length - 1)
            newReservedTimes.Add(selectedTimes.Value.Split(",")(index))
        Next

        If newReservedTimes.Count <= oldReservedTimes.Length Or newReservedTimes.Count = 2 Or isFormFilled.Value = "false" Then
            'Do not submit any data
        Else
            Dim content As String
            ' read all text from the file to the content variable
            content = System.IO.File.ReadAllText("C:\Users\xruiz\Desktop\RuizApplication\RuizApplication\AppData\TimeSlots.txt")
            ' replace number, text, etc. in code
            content = content.Replace(String.Join(",", oldReservedTimes), String.Join(",", newReservedTimes))
            ' write new text back to the file (by completely overwriting the old content)
            System.IO.File.WriteAllText("C:\Users\xruiz\Desktop\RuizApplication\RuizApplication\AppData\TimeSlots.txt", content)
            reservedTimesArrayField.Text = readNthLine("C:\Users\xruiz\Desktop\RuizApplication\RuizApplication\AppData\TimeSlots.txt", newReservedTimes(0) - 1)
        End If
    End Sub

    'This event is fired by JS once the calendarTextBox has been changed and now VB is able to get live information for the timeslots
    Private Sub calendarButton_Click(sender As Object, e As EventArgs) Handles calendarButton.Click
        Dim weekNumber As Integer
        Dim reservedTimesArray As String
        Integer.TryParse(calendarHiddenField.Value, weekNumber)
        reservedTimesArray = readNthLine("C:\Users\xruiz\Desktop\test.txt", weekNumber)
        reservedTimesArrayField.Text = reservedTimesArray
    End Sub

End Class