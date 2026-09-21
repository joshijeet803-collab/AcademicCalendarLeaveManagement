<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs"
    Inherits="AcademicCalendarLeaveManagement._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Academic Calendar</title>
</head>

<body>
    <form id="form1" runat="server">

        <div>
            <h1>Academic Calendar</h1>

            <asp:Calendar
                ID="AcademicCalendar"
                runat="server"
                OnSelectionChanged="AcademicCalendar_SelectionChanged"
                ShowGridLines="True"
                FirstDayOfWeek="Sunday">
            </asp:Calendar>

            <br />

            <asp:Label
                ID="lblSelectedDate"
                runat="server"
                Text="Selected Date: ">
            </asp:Label>

            <br />
            <br />

            <asp:Button
                ID="btnApplyLeave"
                runat="server"
                Text="Apply Leave"
                OnClick="btnApplyLeave_Click" />

        </div>

    </form>
</body>
</html>