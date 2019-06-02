<%@ Import Namespace="System.IO" %>
<script language="vb" runat="server">
  sub Page_Load(sender as Object, e as EventArgs)
    'Open a file for reading
    Dim FILENAME as String = Server.MapPath("hostinfo.txt")

    'Get a StreamReader class that can be used to read the file
    Dim objStreamReader as StreamReader
    objStreamReader = File.OpenText(FILENAME)

    'Now, read the entire file into a string
    Dim contents as String = objStreamReader.ReadToEnd()

    'Set the text of the file to a Web control
    'lblRawOutput.Text = contents
    
    'We may wish to replace carraige returns with <br>s
    lblNicerOutput.Text = contents.Replace(vbCrLf, "<br>")
    
    objStreamReader.Close()
  end sub
</script>


    <br><b>This Page is being served from</b></br>
    <asp:label runat="server" id="lblNicerOutput" Font-Name="Verdana" />
