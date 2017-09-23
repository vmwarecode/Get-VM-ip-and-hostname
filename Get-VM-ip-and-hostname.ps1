$vm = Get-VM
$vmview = $vm | Get-View
Foreach ($v in $vmview){
    echo "-----------------------"
    echo $v.Name
    echo $v.Config.uuid
    echo "-----------------------"
    $Name = $v.Guest.HostName
    
    If ($Name -ne $null -and $Name -ne ""){
        echo $Name
        Foreach ($nic in $v.Guest.Net){
            $IP = $nic.IPAddress
            echo $IP
            }
        }
    }
    echo "-----------------------"

