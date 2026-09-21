<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="LeaveApplication.aspx.cs"
    Inherits="AcademicCalendarLeaveManagement.LeaveApplication" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Leave Application</title>
</head>

<body>
    <form id="form1" runat="server">

        <h1>Leave Application</h1>

        <table>
            <tr>
                <td>Employee Name:</td>
                <td>
                    <asp:TextBox ID="txtEmployeeName"
                        runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Leave Date:</td>
                <td>
                    <asp:TextBox ID="txtLeaveDate"
                        runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Leave Type:</td>
                <td>
                    <asp:DropDownList ID="ddlLeaveType"
                        runat="server">
                        <asp:ListItem>Medical Leave</asp:ListItem>
                        <asp:ListItem>Casual Leave</asp:ListItem>
                        <asp:ListItem>Emergency Leave</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td>Reason:</td>
                <td>
                    <asp:TextBox ID="txtReason"
                        runat="server"
                        TextMode="MultiLine"
                        Rows="4"
                        Columns="30"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Remember Name:</td>
                <td>
                    <asp:CheckBox ID="chkRemember"
                        runat="server"
                        Text="Remember my name" />
                </td>
            </tr>

            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnSubmit"
                        runat="server"
                        Text="Submit Leave"
                        OnClick="btnSubmit_Click" />
                </td>
            </tr>
        </table>

        <br />

        <!-- Submit કર્યા પછી message અહીં દેખાશે -->
        <asp:Label ID="lblMessage"
            runat="server"></asp:Label>

    </form>
</body>
</html>