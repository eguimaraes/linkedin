using System;
using Microsoft.SharePoint;
using Microsoft.SharePoint.Administration;
namespace EnableDeveloperDashboard {
class Program {
static void Main() {
SPDeveloperDashboardSettings settings =
SPWebService.ContentService.DeveloperDashboardSettings;
settings.DisplayLevel = SPDeveloperDashboardLevel.On;
settings.TraceEnabled = true;
settings.Update();
}
}
}
