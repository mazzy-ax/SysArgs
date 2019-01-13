# The script rebuilds files in the (Src, Test, Examples) directories based on *.xpo project files

#Requires -Version 5
#Requires -module @{ ModuleName="xpoTools"; ModuleVersion="1.2.0" }

'ax2009', 'ax2012', 'ax3', 'ax4' | 
    Get-ChildItem -filter '*.xpo' -ErrorAction SilentlyContinue |
    Import-Xpo | ForEach-Object {
        $_ | Split-xpo -xpp -PathStyle mazzy -Destination $_.SourceFile.DirectoryName -Exclude SharedProject_*.xpo -PassThru
    }
