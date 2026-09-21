using System;

namespace AcademicCalendarLeaveManagement
{
    public partial class LeaveApplication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Get selected date from Default.aspx
                if (Request.QueryString["date"] != null)
                {
                    txtLeaveDate.Text = Request.QueryString["date"];
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblMessage.Text =
                "Leave application submitted successfully.<br/>" +
                "Employee Name: " + txtEmployeeName.Text + "<br/>" +
                "Leave Date: " + txtLeaveDate.Text + "<br/>" +
                "Leave Type: " + ddlLeaveType.SelectedValue + "<br/>" +
                "Reason: " + txtReason.Text;
        }
    }
}