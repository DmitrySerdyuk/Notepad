function Unit2()
{
  TestedApps.RunAll();
  Aliases.notepad.wndNotepad.MainMenu.Click("File|Open...");
  Aliases.notepad.dlgOpen.ComboBoxEx32.wText = "C:\\Documents and Settings\\Tester\\My Documents\\Testfile";
  Aliases.notepad.dlgOpen.btnOpen.ClickButton();
  Aliases.notepad.wndNotepad.Edit.Keys("^aIts all works!!");
  Aliases.notepad.wndNotepad.MainMenu.Click("File|Save");
  aqObject.CompareProperty(Aliases.notepad.wndNotepad.Edit.wText, 0, "Its all works!", false);
  Aliases.notepad.wndNotepad.Close();
  Aliases.Explorer.wndShell_TrayWnd.btnStart.ClickButton();
  Aliases.Explorer.wndDV2ControlHost.DesktopSFTBarHost.SysListView32.ClickItem("My Documents");
  Aliases.Explorer.wndCabinetWClass.SHELLDLL_DefView.FolderView.ClickItemR("Testfile");
  Aliases.Explorer.wndCabinetWClass.SHELLDLL_DefView.FolderView.PopupMenu.Click("Delete");
  Aliases.Explorer.dlgConfirmFileDelete.btnYes.ClickButton();
}
