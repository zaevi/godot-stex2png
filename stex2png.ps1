[CmdletBinding()]
param (
    [Parameter(ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$true)]
    [Alias("FullName")]
    [string]
    $FilePath
)

process
{
    $file = $FilePath
    try {
        [System.IO.FileStream]$fin = [System.IO.File]::OpenRead($file)
        [System.IO.FileStream]$fout = [System.IO.File]::OpenWrite([System.IO.Path]::ChangeExtension($file, ".png"))

        $fin.Seek(32, [System.IO.SeekOrigin]::Begin);
        $fin.CopyTo($fout);
    }
    catch {
        throw
    }
    finally {
        $fin.Close();
        $fout.Close();
    }
}
