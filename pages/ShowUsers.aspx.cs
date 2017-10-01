using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class pages_ShowUsers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Members m1 = (Members)Session["Member"];
        MembersServer ms = new MembersServer();
        DataSet ds = GetData(m1);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if(e.Row.RowType == DataControlRowType.DataRow)
        {
            GridViewRow r1 = e.Row;
            string mail = r1.Cells[2].Text;
            MembersServer ms = new MembersServer();
            string pic = ms.PicUrl(mail);
            ((Image)r1.FindControl("MemberImage")).ImageUrl = "../MembersImg/"+pic+"";
        }
    }

    public static DataSet GetData(Members m1)
    {
        DataSet ds = new DataSet();
        MembersServer ms = new MembersServer();
        if (m1.memberManager)
        {
            ds = ms.ShowAll();
        }
        else
        {
            ds = ms.ShowMember(m1.memberMail);
        }
        return ds;
    }
}