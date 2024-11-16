<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmButtonExtenderCtrl.aspx.cs" Inherits="AJAXintro.ConfirmButtonExtenderCtrl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 127px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <div>
                    <asp:Button ID="btnClick" runat="server" Text="Click" OnClick="btnClick_Click" />
                    <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server"
                        TargetControlID="btnClick" ConfirmText="Are you really want to display the message?" />
                </div>
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
            </div>
            <br />
            <br />
            <table>
                <tr>
                    <td>Search by ID
                    </td>
                    <td>
                        <asp:TextBox ID="txtBoxSearchbyId" runat="server"></asp:TextBox>
                        <br />
                        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Label2" Visible="false"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Name
                    </td>
                    <td>
                        <asp:TextBox ID="txtBoxName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Designation
                    </td>
                    <td>
                        <asp:TextBox ID="txtBoxDesignation" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                        <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender2" runat="server" TargetControlID="btnUpdate" ConfirmText="Are you really want to update data?" />
                        &nbsp;
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                        <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender3" runat="server" TargetControlID="btnDelete" ConfirmText="Are you really want to update data?"/>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>