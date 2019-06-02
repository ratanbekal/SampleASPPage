<!DOCTYPE html>
<html> 
<body> 
<h1>Customer Info Page</h1> 
     <p>Current Time:  @DateTime.Now</p>
@{
if (IsPost)
{ 
string companyname = Request["CompanyName"]; 
string contactname = Request["ContactName"]; 
<p>You entered: <br> 
Company Name: @companyname <br> 
Contact Name: @contactname </p> 
}
else
{
<form method="post" action="">
Company Name:<br> 
<input type="text" name="CompanyName" value=""><br>
Contact Name:<br><br>
<input type="text" name="ContactName" value=""><br><br>
<input type="submit" value="Submit" class="submit">
</form> 
}
} 

@{ 
var myChart = new Chart(width: 600, height: 400) 
   .AddTitle("Customers / City") 
   .AddSeries(chartType: "column",
      xValue: new[] { "Hartord", "Manchester", "Stamford", "WestPort, "Darien" }, 
      yValues: new[] { "2", "6", "4", "5", "3" }) 
   .Write();
}
</body> 
</html>
