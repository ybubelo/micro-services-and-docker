Param (
    [string]$url
)

Try
{
  $res = Invoke-WebRequest -URI $url
  If ($res.StatusCode -eq 200)
  {
    Write-Host $res.Content
    Exit 0
  }
  Else
  {
    Write-Host $res.Content
    Exit 1
  }
}
Catch
{
    Write-Host $_.Exception.Message
    Exit 1
}