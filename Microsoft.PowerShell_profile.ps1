# Aliases
Set-Alias n "C:\Program Files\Notepad++\notepad++.exe"
Set-Alias cd  Push-Location -Option AllScope
Set-Alias cd- Pop-Location
Remove-Alias ls    -Force -ErrorAction SilentlyContinue
Remove-Alias where -Force -ErrorAction SilentlyContinue

# Functions
function e {
    Start-Process explorer.exe $PWD
}

# Wrap 'ls' to always show results in color
function ls {
    & "C:\Program Files\Git\usr\bin\ls.exe" --color=always $args
}

function find {
    & "C:\Program Files\Git\usr\bin\find.exe" $args
}

# Wrap 'grep' to always highlight the results in color, search recursively and show the matching line numbers
function grep {
    & "C:\Program Files\Git\usr\bin\grep.exe" --color=always -r -n $args
}

function where {
    & "C:\Windows\System32\where.exe" $args
}

# Set up a simple prompt, adding the git prompt parts inside git repos
function global:prompt {
    Write-Host($pwd.ProviderPath) -ForegroundColor blue -nonewline
    Write-Host [($(Get-Date -UFormat "%r"))] -ForegroundColor red -nonewline
    return "> "
}