using System.Diagnostics;

string fpath = @"C:\WINDOWS\system32\drivers\etc\hosts";
File.SetAttributes(@fpath, FileAttributes.Normal);
Process.Start("notepad.exe", fpath).WaitForExit();
File.SetAttributes(fpath, FileAttributes.ReadOnly | FileAttributes.System );