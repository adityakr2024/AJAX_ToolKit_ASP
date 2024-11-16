<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AutoCompleteExtenderCtrl.aspx.cs" Inherits="AJAXintro.AutoCompleteExtenderCtrl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 399px;
        }
        .auto-style2 {
            width: 150px;
        }
        .auto-style3 {
            width: 155px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <table cellpadding="4" cellspacing="4" class="auto-style1">
                
                <tr>
                    <td class="auto-style2">Select City</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                        <ajaxToolkit:AutoCompleteExtender ID="TextBox1AutoCompleteExtender1" runat="server" 
                            CompletionInterval="100" MinimumPrefixLength="1" TargetControlID="TextBox1" 
                            ServiceMethod="GetCompletionList"></ajaxToolkit:AutoCompleteExtender>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" Text="Submit" Width="200px" />
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
