<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MyValuableCalculator.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lab 1.2 Kassakvitto</title>
    <link href="~/Content/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="header">
            <h1>Lab 1.2 Kassakvitto</h1>
        </div>

    <div id="content">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="field-summary-errors"/>
        <asp:TextBox ID="Op1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Op1 kan inte vara tom." Display="Dynamic" Text="*" ControlToValidate="Op1" CssClass="field-validation-error"></asp:RequiredFieldValidator>
        <asp:CompareValidator CssClass="field-validation-error" ID="CompareValidator" runat="server" ErrorMessage="Köpsumman måste vara en siffra större än 0." Type="Double" Operator="GreaterThan" ValueToCompare="0" Display="Dynamic" ControlToValidate="Op1"></asp:CompareValidator>        
        <asp:Button ID="Compute" runat="server" Text="Beräkna" OnClick="Compute_Click" />
        <asp:Label ID="Result" runat="server" Text="Label"></asp:Label>
    </div>
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <div id="receipt">
                <h3 id="ReceiptTitle">Benjamins Livs</h3>
                <div id="ReceiptPhoneNumber">0772-28 80 00</div>
                <div id="ReceiptOpenTimes">Öppettider: 8 - 17</div>
                <div id="Message">FEL GER UNDERKÄNT</div>
                <div id="EpicDots">...................................</div>
                <div id="ReceiptResult">
                    
                    <div>
                        Totalt:
                        <asp:Label ID="paidSum" runat="server" Text=""></asp:Label>
                    </div>

                    <div>
                        Rabattsats
                        <asp:Label ID="discountProcentage" runat="server" Text="Label"></asp:Label>
                    </div>

                    <div>
                        Rabatt
                        <asp:Label ID="discount" runat="server" Text="Label"></asp:Label>
                    </div>

                    <div>
                        Att betala
                        <asp:Label ID="toPay" runat="server" Text="Label"></asp:Label>
                    </div>
                    </div>
                <div id="EpicDotsAgain">...................................</div>
                <div id="PlsComeAgain">Välkommen Åter!</div>

            </div>

        </asp:Panel>
    </form>
     <script type="text/javascript">
         var Op1 = document.getElementById("Op1");
         Op1.focus();
         Op1.select();
    </script>
</body>
</html>
