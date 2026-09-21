using System;
using System.Web.UI;

namespace AcademicCalendarLeaveManagement
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void AcademicCalendar_SelectionChanged(object sender, EventArgs e)
        {
            lblSelectedDate.Text = "Selected Date: " +
                AcademicCalendar.SelectedDate.ToString("dd-MM-yyyy");
        }

        protected void btnApplyLeave_Click(object sender, EventArgs e)
        {
            string selectedDate =
                AcademicCalendar.SelectedDate.ToString("dd-MM-yyyy");

            Response.Redirect("LeaveApplication.aspx?date=" + selectedDate);
        }
    }
}