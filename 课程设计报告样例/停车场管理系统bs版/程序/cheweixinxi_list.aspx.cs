using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class cheweixinxi_list : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            zhuangtai.Items.Add("����");
            zhuangtai.Items.Add("����");
            zhuangtai.Items.Add("��ռ");
            leixing.Items.Add("����");
            leixing.Items.Add("�̶���λ");
            leixing.Items.Add("���ɳ�λ");
	    //xingbie.Items.Add("����"); 
	    // xingbie.Items.Add("male"); 
	    // xingbie.Items.Add("female");
            string sql;
            sql = "select * from cheweixinxi order by id desc";
            getdata(sql);
        }
    }

    private void getdata(string sql)
    {
        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);
        if (result != null)
        {

            if (result.Tables[0].Rows.Count > 0)
            {
                DataGrid1.DataSource = result.Tables[0];
                DataGrid1.DataBind();
                Label1.Text = "���������й�" + result.Tables[0].Rows.Count+"��";
            }
            else
            {
                DataGrid1.DataSource = null;
                DataGrid1.DataBind();
                Label1.Text = "�����κ�����";
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql;
        sql = "select * from cheweixinxi where 1=1";
        if (cheweibianhao.Text.ToString().Trim()!="" ){ sql=sql+" and cheweibianhao like '%" + cheweibianhao.Text.ToString().Trim() + "%'";}if (daxiao.Text.ToString().Trim()!="" ){ sql=sql+" and daxiao like '%" + daxiao.Text.ToString().Trim() + "%'";}if (zhuangtai.Text.ToString().Trim()!="����" ){ sql=sql+" and zhuangtai like '%" + zhuangtai.Text.ToString().Trim() + "%'";}if (leixing.Text.ToString().Trim()!="����" ){ sql=sql+" and leixing like '%" + leixing.Text.ToString().Trim() + "%'";}
        sql = sql + " order by id desc";

        getdata(sql);
    }

    protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        string sql;
        sql = "select * from cheweixinxi order by id desc";
        getdata(sql);
        DataGrid1.CurrentPageIndex = e.NewPageIndex;
        DataGrid1.DataBind();
    }
	public string riqigeshi(object str)
    {
        string strTmp = str.ToString();
        DateTime dt = Convert.ToDateTime(strTmp);
        string ss = dt.ToShortDateString();
        return ss;
        
    } 

}

