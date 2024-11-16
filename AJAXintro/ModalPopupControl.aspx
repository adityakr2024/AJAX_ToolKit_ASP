<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModalPopupControl.aspx.cs" Inherits="AJAXintro.ModalPopupControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <div>
                <asp:Button ID="Button3" runat="server" Text="Click to see Modal Popup" Height="50" Width="200" />
                <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="Button3" 
                    PopupControlID="Panel1" DropShadow="True" ></ajaxToolkit:ModalPopupExtender>
            </div>


            <asp:Panel ID="Panel1" runat="server" Width="400" BackColor="WhiteSmoke">
                <table>
                    <tr>
                        <td>
                            Enter Name
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Width="150"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>

                        </td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Submit" /> &nbsp 
                            <asp:Button ID="Button2" runat="server" Text="Cancel" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>

        </div>
    </form>
</body>
</html>
