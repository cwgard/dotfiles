using System;
using System.Drawing;

// The 'windowHandle' parameter will contain the window handle for the:
//   - Active window when run by hotkey
//   - Trigger target when run by a Trigger rule
//   - TitleBar Button owner when run by a TitleBar Button
//   - Jump List owner when run from a Taskbar Jump List
//   - Currently focused window if none of these match
public static class DisplayFusionFunction
{
	public static void Run(IntPtr windowHandle)
	{
		Rectangle workArea = BFS.Monitor.GetMonitorWorkAreaByWindow(windowHandle);

		int newWidth = workArea.Width / 2;
		int newHeight = (int)(workArea.Height * 0.6667);
		int newX = workArea.X + (workArea.Width - newWidth) / 2;
		int newY = workArea.Y + (workArea.Height - newHeight);

		BFS.Window.SetSizeAndLocation(windowHandle, newX, newY, newWidth, newHeight);
	}
}
