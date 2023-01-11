using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MyAdminDashBoardProject6.Startup))]
namespace MyAdminDashBoardProject6
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
