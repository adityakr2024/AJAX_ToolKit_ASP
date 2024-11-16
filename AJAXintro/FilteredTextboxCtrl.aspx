<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FilteredTextboxCtrl.aspx.cs" Inherits="AJAXintro.FilteredTextboxCtrl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <table style="font-family: Arial; font-weight: bold">
                <tr>
                    <td>Enter Numbers:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" TargetControlID="TextBox1"
                            runat="server" FilterType="Numbers" />
                    </td>
                </tr>
                <tr>
                    <td>Enter Alphabets(UpperCase):</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" TargetControlID="TextBox2"
                            FilterType="UppercaseLetters" runat="server" />
                    </td>

                </tr>
                <tr>
                    <td>Enter Alphabets(LowerCase):</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" TargetControlID="TextBox3"
                            FilterType="LowercaseLetters" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>Enter Alphabets(Both Case):</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" TargetControlID="TextBox4"
                            FilterType="UppercaseLetters, LowercaseLetters" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>Enter Alphabets with Space:</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender5" TargetControlID="TextBox5"
                            FilterType="Custom, UppercaseLetters, LowercaseLetters" ValidChars=" " runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>Enter Alphanumeric
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender6" TargetControlID="TextBox6"
                            runat="server" FilterType="Custom, UppercaseLetters, LowercaseLetters, Numbers" />
                    </td>
                </tr>
                <tr>
                    <td>Enter Email 
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender7" TargetControlID="TextBox7"
                            runat="server" FilterType="Custom, UppercaseLetters, LowercaseLetters, Numbers" ValidChars="@." />
                    </td>
                </tr>
                <tr>
                    <td>Enter Marks
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender8" TargetControlID="TextBox8"
                            runat="server" FilterType="Custom, Numbers" ValidChars="." />
                    </td>
                </tr>
                <tr>
                    <td>Enter Salary
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender9" TargetControlID="TextBox9"
                            runat="server" FilterType="Custom, Numbers" ValidChars=",." />
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
