<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MoreDataOnButtonClick.aspx.cs" Inherits="AJAXintro.MoreDataOnButtonClick" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Details</title>
    <style>
        table{
            margin:auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="1">
                <tr>
                    <th colspan="6" align="center" >Employee Details</th>
                </tr>
                <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate>
                        <tr>
                            <th>ID</th>
                            <th>NAME</th>
                            <th>GENDER</th>
                            <th>AGE</th>
                            <th>DESIGNATION</th>
                            <th>SALARY</th>
                        </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("Id") %></td>
                            <td><%# Eval("Name") %></td>
                            <td><%# Eval("Gender") %></td>
                            <td><%# Eval("Age") %></td>
                            <td><%# Eval("Designation") %></td>
                            <td><%# Eval("Salary") %></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
                <tr>
                    <td colspan="6" align="center">
                        <asp:Button ID="Button1" runat="server" Text="Load More" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

