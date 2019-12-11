$url = $env:https://dev.azure.com/U89663
$token = $env:
$pool = $env:Default
$agentName = $env:dotnetagent

Write-Verbose -Verbose "Configuring agent $agentName for pool $pool"

.\config.cmd --unattended `
            --url $url  `
            --auth pat  `
            --token $token  `
            --pool $pool  `
            --agent $agentName  `
            --acceptteeeula `
            --replace `
            --gituseschannel

.\run.cmd
