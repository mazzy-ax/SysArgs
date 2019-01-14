# The script rebuilds files in the (Src, Test, Examples) directories based on *.xpo project files

#Requires -Version 5
#Requires -module @{ ModuleName="xpoTools"; ModuleVersion="1.2.0" }

Import-Xpo ax2009\*.xpo, ax2012\*.xpo, ax3\*.xpo, ax4\*.xpo -ErrorAction SilentlyContinue | ForEach-Object {
    Split-xpo -Item $_ -Destination $_.SourceFile.DirectoryName -Exclude SharedProject_*.xpo -xpp -PathStyle mazzy -PassThru
}

