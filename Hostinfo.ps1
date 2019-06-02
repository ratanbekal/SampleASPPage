$webclient = new-object net.webclient
$instanceid = $webclient.Downloadstring('http://169.254.169.254/latest/meta-data/instance-id')
$instancename =$webclient.Downloadstring('http://169.254.169.254/latest/meta-data/hostname')
$instancenamepublic =$webclient.Downloadstring('http://169.254.169.254/latest/meta-data/public-hostname')
$instancelocalipv4 =$webclient.Downloadstring('http://169.254.169.254/latest/meta-data/local-ipv4')
$instanceipv4 =$webclient.Downloadstring('http://169.254.169.254/latest/meta-data/public-ipv4')
Clear-Content -Path C:\temp\hostinfo.txt
 
add-content -Path C:\temp\hostinfo.txt -Value "Instance ID :  $($instanceid)"
add-content -Path C:\temp\hostinfo.txt -Value "Host Name :  $($instancename)"
add-content -Path C:\temp\hostinfo.txt -Value "Public Host Name :  $($instancenamepublic)"
add-content -Path C:\temp\hostinfo.txt -Value "Local IP V4 :  $($instancelocalipv4)"
add-content -Path C:\temp\hostinfo.txt -Value "Public IP V4 :  $($instanceipv4)"

Copy-Item -Force -path C:\temp\hostinfo.txt -destination C:\inetpub\wwwroot\gbweb

