<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShowUsers.aspx.cs" Inherits="pages_ShowUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .imgCss {
            height: 35px;
            width: 35px;
        }

            .imgCss:hover {
                cursor: pointer;
            }
    </style>
    <script type="text/javascript" lang="ja">
        function UpdateRed(mail) {
            location.href = "../pages/Update.aspx?mail=" + mail + "";
        }
        function DeleteRed(mail)
        {
            location.href = "../pages/Delete.aspx?mail=" + mail + "";
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDataBound="GridView1_RowDataBound" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="MemberFname" HeaderText="שם פרטי" />
            <asp:BoundField DataField="MemberLname" HeaderText="שם משפחה" />
            <asp:BoundField DataField="MemberMail" HeaderText="מייל" />
            <asp:BoundField DataField="MemberPass" HeaderText="סיסמא" />
            <asp:BoundField DataField="CityName" HeaderText="עיר" />
            <asp:BoundField DataField="MemberGender" HeaderText="מגדר" />
            <asp:BoundField DataField="MemberHobbies" HeaderText="תחביבים" />
            <asp:TemplateField HeaderText="תמונה">
                <ItemTemplate>
                    <asp:Image ID="MemberImage" runat="server" Height="50px" Width="50px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="עדכן">
                <ItemTemplate>
                    <asp:Image ID="ImageUpdate" runat="server" ImageUrl="~/img/UpdatePic.png" CssClass="imgCss"></asp:Image>
                    <%--<asp:Image ID="UpdateBtn" runat="server" ImageUrl="~/img/UpdatePic.png" OnClick="UpdateBtn_Click" Height="35px" Width="35px" />--%>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="מחק">
                <ItemTemplate>
                    <asp:Image ID="DeleteBtn" runat="server" ImageUrl="~/img/deletePic.png" CssClass="imgCss" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
        </center>
</asp:Content>

