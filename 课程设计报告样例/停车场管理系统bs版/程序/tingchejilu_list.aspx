<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tingchejilu_list.aspx.cs" Inherits="tingchejilu_list" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>�ޱ���ҳ</title><script language="javascript" src="js/Calendar.js"></script><LINK href="images/StyleSheet.css" type=text/css rel=stylesheet>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="98%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
            <tbody>
                <tr class="tr2">
                    <td bgcolor="#f1f8f5" style="padding-left: 5px; height: 25px">����ͣ����¼�б�</td>
                </tr>
                <tr class="tr1">
                    <td style="padding-left: 5px; height: 25px">
                        &nbsp; ���ƣ�<asp:TextBox ID="chepai" runat="server" Style="border-right: #000000 1px solid;
                            border-top: #000000 1px solid; border-left: #000000 1px solid; color: #666666;
                            border-bottom: #000000 1px solid" Width="80px"></asp:TextBox>
                        ���ͣ�<asp:TextBox ID=chexing runat="server" style='border:solid 1px #000000; color:#666666' Width="80px"></asp:TextBox> ������<asp:TextBox ID=xingming runat="server" style='border:solid 1px #000000; color:#666666' Width="80px"></asp:TextBox> ���֤�ţ�<asp:TextBox ID=shenfenzheng runat="server" style='border:solid 1px #000000; color:#666666' Width="80px"></asp:TextBox> �绰��<asp:TextBox ID=dianhua runat="server" style='border:solid 1px #000000; color:#666666' Width="80px"></asp:TextBox> ��λ��<asp:TextBox ID="chewei" runat="server" Style="border-right: #000000 1px solid;
                            border-top: #000000 1px solid; border-left: #000000 1px solid; color: #666666;
                            border-bottom: #000000 1px solid" Width="80px"></asp:TextBox>
                        �Ʒ����ͣ�<asp:DropDownList ID='jifeileixing' runat='server'></asp:DropDownList>
						&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="����" style='border:solid 1px #000000; color:#666666' /> &nbsp;<asp:DataGrid ID="DataGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
                            BorderColor="Black" CellPadding="2" font-name="verdana" Font-Names="verdana"
                            Font-Size="8pt" HeaderStyle-BackColor="#F8FAFC" PageSize="8" Width="100%" OnPageIndexChanged="DataGrid1_PageIndexChanged" AllowPaging="True">
                            <HeaderStyle BackColor="#F8FAFC" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <PagerStyle Font-Bold="True" Font-Names="����" ForeColor="Blue" HorizontalAlign="Right"
                NextPageText="��һҳ" PrevPageText="��һҳ" />
                            <EditItemStyle BackColor="#E9F0F8" CssClass="input_text" Font-Bold="False" Font-Italic="False"
                                Font-Overline="False" Font-Size="Smaller" Font-Strikeout="False" Font-Underline="False"
                                HorizontalAlign="Left" VerticalAlign="Middle" Wrap="False" />
                            <Columns>
                                <asp:TemplateColumn HeaderText="���">
                                    <HeaderStyle Width="50px" />
                                    <ItemTemplate>
                                    <%#Container.ItemIndex+1 %>
                                </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:BoundColumn DataField=chepai HeaderText='����'></asp:BoundColumn><asp:BoundColumn DataField=chexing HeaderText='����'></asp:BoundColumn><asp:BoundColumn DataField=xingming HeaderText='����'></asp:BoundColumn><asp:BoundColumn DataField=shenfenzheng HeaderText='���֤��'></asp:BoundColumn><asp:BoundColumn DataField=dianhua HeaderText='�绰'></asp:BoundColumn><asp:BoundColumn DataField=chewei HeaderText='��λ'></asp:BoundColumn><asp:BoundColumn DataField=tingrushijian HeaderText='ͣ��ʱ��'></asp:BoundColumn><asp:BoundColumn DataField=kaichushijian HeaderText='����ʱ��'></asp:BoundColumn><asp:BoundColumn DataField=tingcheshichang HeaderText='ͣ��ʱ��'></asp:BoundColumn><asp:BoundColumn DataField=jifeileixing HeaderText='�Ʒ�����'></asp:BoundColumn><asp:BoundColumn DataField=feiyong HeaderText='����'></asp:BoundColumn><asp:BoundColumn DataField=beizhu HeaderText='��ע'></asp:BoundColumn>
                                
                                <asp:TemplateColumn HeaderText="ʻ������">
                               		<ItemTemplate>
                                    	<a href='tingchejilu_updtlb.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>ʻ������</a>
                                	</ItemTemplate>
								<HeaderStyle Width="100px" />
					
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="ɾ��">
                                	<ItemTemplate>
                                    	<a href='delid.aspx?delid=<%#DataBinder.Eval(Container.DataItem, "id") %>&tablename=tingchejilu&npage=tingchejilu_list.aspx' onclick="return confirm('ȷ��Ҫɾ����')">ɾ��</a>
                               		</ItemTemplate>
								<HeaderStyle Width="50px" />
					
                                </asp:TemplateColumn>
								
                            </Columns>
                            <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                Font-Underline="False" HorizontalAlign="Center" />
                        </asp:DataGrid></td>
                </tr>
                <tr class="tr1">
                    <td bgcolor="#f1f8f5" style="padding-left: 5px; height: 25px">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                       <a href="#" onclick="javascript:window.print();">��ӡ��ҳ</a></td>
                </tr>
            </tbody>
        </table>
    
    </div>
    </form>
</body>
</html>
