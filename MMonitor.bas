Attribute VB_Name = "MMonitor"
Option Explicit

Private Declare Function SendScreenMessage Lib "user32" _
   Alias "SendMessageA" _
  (ByVal hwnd As Long, _
   ByVal wMsg As Long, _
   ByVal wParam As Long, _
   lParam As Any) As Long

Private Const MONITOR_ON = -1&
Private Const MONITOR_LOWPOWER = 1&
Private Const MONITOR_OFF = 2&
Private Const SC_MONITORPOWER = &HF170&
Private Const WM_SYSCOMMAND = &H112

Public Function MonitorOff(Form As Form)
    
    Call SendScreenMessage(Form.hwnd, WM_SYSCOMMAND, SC_MONITORPOWER, ByVal MONITOR_OFF)

End Function

Public Function MonitorOn(Form As Form)
    
    Call SendScreenMessage(Form.hwnd, WM_SYSCOMMAND, SC_MONITORPOWER, ByVal MONITOR_ON)

End Function

Public Function MonitorPowerDown(Form As Form)
    
    Call SendScreenMessage(Form.hwnd, WM_SYSCOMMAND, SC_MONITORPOWER, ByVal MONITOR_LOWPOWER)
    
End Function
