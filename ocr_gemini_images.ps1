$folder = "E:\robi dp\backup slides gemini image"
$files = Get-ChildItem -Path $folder -Filter "*.jpg"

[Windows.Security.Cryptography.CryptographicBuffer, Windows.Security.Cryptography, ContentType = WindowsRuntime] | Out-Null
[Windows.Media.Ocr.OcrEngine, Windows.Media.Ocr, ContentType = WindowsRuntime] | Out-Null
[Windows.Graphics.Imaging.BitmapDecoder, Windows.Graphics.Imaging, ContentType = WindowsRuntime] | Out-Null
[Windows.Storage.StorageFile, Windows.Storage, ContentType = WindowsRuntime] | Out-Null

$engine = [Windows.Media.Ocr.OcrEngine]::TryCreateFromUserProfileLanguages()

foreach ($f in $files) {
    $asyncOp = [Windows.Storage.StorageFile]::GetFileFromPathAsync($f.FullName)
    $file = $asyncOp.GetAwaiter().GetResult()
    
    $streamOp = $file.OpenAsync([Windows.Storage.FileAccessMode]::Read)
    $stream = $streamOp.GetAwaiter().GetResult()
    
    $decoderOp = [Windows.Graphics.Imaging.BitmapDecoder]::CreateAsync($stream)
    $decoder = $decoderOp.GetAwaiter().GetResult()
    
    $bmpOp = $decoder.GetSoftwareBitmapAsync()
    $softwareBitmap = $bmpOp.GetAwaiter().GetResult()
    
    $ocrOp = $engine.RecognizeAsync($softwareBitmap)
    $ocrResult = $ocrOp.GetAwaiter().GetResult()
    
    $text = $ocrResult.Text
    $lines = $text -split "`r?`n"
    $firstLines = ($lines | Select-Object -First 5) -join " | "
    Write-Output "FILE: $($f.Name)"
    Write-Output "OCR: $firstLines"
    Write-Output "FULL: $($text.Substring(0, [Math]::Min(200, $text.Length)))"
    Write-Output "---"
}
