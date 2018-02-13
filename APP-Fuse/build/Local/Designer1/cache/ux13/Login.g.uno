[Uno.Compiler.UxGenerated]
public partial class Login: Fuse.Controls.Page
{
    readonly Fuse.Navigation.Router router;
    internal global::Fuse.Reactive.EventBinding temp_eb3;
    internal global::Fuse.Reactive.EventBinding temp_eb4;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "router",
        "temp_eb3",
        "temp_eb4"
    };
    static Login()
    {
    }
    [global::Uno.UX.UXConstructor]
    public Login(
		[global::Uno.UX.UXParameter("router")] Fuse.Navigation.Router router)
    {
        this.router = router;
        InitializeUX();
    }
    void InitializeUX()
    {
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        var temp = new global::Fuse.Reactive.Data("Main");
        var temp1 = new global::Fuse.Reactive.Data("Sign");
        var temp2 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp3 = new global::Fuse.Controls.ClientPanel();
        var temp4 = new global::Fuse.Controls.StackPanel();
        var temp5 = new global::Fuse.Controls.Panel();
        var temp6 = new global::Fuse.Controls.Image();
        var temp7 = new global::Fuse.Controls.Text();
        var temp8 = new global::Fuse.Controls.Image();
        var temp9 = new global::Fuse.Controls.Rectangle();
        var temp10 = new global::Fuse.Controls.Text();
        var temp11 = new global::Fuse.Controls.TextInput();
        var temp12 = new global::Fuse.Controls.Rectangle();
        var temp13 = new global::Fuse.Controls.Rectangle();
        var temp14 = new global::Fuse.Controls.Text();
        var temp15 = new global::Fuse.Controls.TextInput();
        var temp16 = new global::Fuse.Controls.Rectangle();
        var temp17 = new global::Fuse.Controls.Rectangle();
        var temp18 = new global::Fuse.Controls.Text();
        var temp19 = new global::Fuse.Controls.TextInput();
        var temp20 = new global::Fuse.Controls.Rectangle();
        var temp21 = new global::Fuse.Controls.Rectangle();
        var temp22 = new global::Fuse.Controls.Text();
        temp_eb3 = new global::Fuse.Reactive.EventBinding(temp);
        var temp23 = new global::Fuse.Controls.Rectangle();
        var temp24 = new global::Fuse.Controls.Text();
        temp_eb4 = new global::Fuse.Reactive.EventBinding(temp1);
        this.Color = float4(0.003921569f, 0.8745098f, 0.6470588f, 1f);
        temp2.LineNumber = 3;
        temp2.FileName = "Page/Login.ux";
        temp2.File = new global::Uno.UX.BundleFileSource(import("../../../../../controller/Login.js"));
        temp3.Height = new Uno.UX.Size(730f, Uno.UX.Unit.Unspecified);
        temp3.Children.Add(temp4);
        temp4.Children.Add(temp5);
        temp4.Children.Add(temp7);
        temp4.Children.Add(temp8);
        temp4.Children.Add(temp9);
        temp4.Children.Add(temp13);
        temp4.Children.Add(temp17);
        temp4.Children.Add(temp21);
        temp4.Children.Add(temp23);
        temp5.Children.Add(temp6);
        temp6.StretchMode = Fuse.Elements.StretchMode.UniformToFill;
        temp6.Margin = float4(0f, 40f, 0f, 0f);
        temp6.Layer = Fuse.Layer.Layout;
        temp6.File = new global::Uno.UX.BundleFileSource(import("../../../../../Asset/Login.jpg"));
        temp7.Value = "Login";
        temp7.FontSize = 27f;
        temp7.Color = float4(1f, 1f, 1f, 1f);
        temp7.Alignment = Fuse.Elements.Alignment.TopCenter;
        temp7.Margin = float4(0f, 25f, 0f, 0f);
        temp8.Width = new Uno.UX.Size(70f, Uno.UX.Unit.Unspecified);
        temp8.Height = new Uno.UX.Size(70f, Uno.UX.Unit.Unspecified);
        temp8.Margin = float4(0f, 10f, 0f, 0f);
        temp8.File = new global::Uno.UX.BundleFileSource(import("../../../../../Asset/logo.png"));
        temp9.Width = new Uno.UX.Size(85f, Uno.UX.Unit.Percent);
        temp9.Alignment = Fuse.Elements.Alignment.Default;
        temp9.Margin = float4(0f, 50f, 0f, 0f);
        temp9.Children.Add(temp10);
        temp9.Children.Add(temp11);
        temp10.Value = "School";
        temp10.FontSize = 22f;
        temp10.Color = float4(1f, 1f, 1f, 1f);
        temp10.Margin = float4(0f, 0f, 0f, 0f);
        temp11.PlaceholderText = "School";
        temp11.PlaceholderColor = float4(0.4509804f, 0.4431373f, 0.4431373f, 1f);
        temp11.TextAlignment = Fuse.Controls.TextAlignment.Center;
        temp11.TextColor = float4(0f, 0f, 0f, 1f);
        temp11.Width = new Uno.UX.Size(75f, Uno.UX.Unit.Percent);
        temp11.Alignment = Fuse.Elements.Alignment.BottomRight;
        temp11.Margin = float4(0f, 0f, 0f, 0f);
        temp11.Layer = Fuse.Layer.Overlay;
        temp11.Children.Add(temp12);
        temp12.Color = float4(1f, 1f, 1f, 1f);
        temp12.Width = new Uno.UX.Size(100f, Uno.UX.Unit.Percent);
        temp12.Height = new Uno.UX.Size(3f, Uno.UX.Unit.Unspecified);
        temp12.Alignment = Fuse.Elements.Alignment.BottomRight;
        temp13.Width = new Uno.UX.Size(85f, Uno.UX.Unit.Percent);
        temp13.Margin = float4(0f, 20f, 0f, 0f);
        temp13.Children.Add(temp14);
        temp13.Children.Add(temp15);
        temp14.Value = "ID";
        temp14.FontSize = 22f;
        temp14.Color = float4(1f, 1f, 1f, 1f);
        temp14.Margin = float4(25f, 0f, 0f, 0f);
        temp15.PlaceholderText = "ID";
        temp15.PlaceholderColor = float4(0.4509804f, 0.4431373f, 0.4431373f, 1f);
        temp15.TextAlignment = Fuse.Controls.TextAlignment.Center;
        temp15.TextColor = float4(0f, 0f, 0f, 1f);
        temp15.Width = new Uno.UX.Size(75f, Uno.UX.Unit.Percent);
        temp15.Alignment = Fuse.Elements.Alignment.BottomRight;
        temp15.Layer = Fuse.Layer.Overlay;
        temp15.Children.Add(temp16);
        temp16.Color = float4(1f, 1f, 1f, 1f);
        temp16.Width = new Uno.UX.Size(100f, Uno.UX.Unit.Percent);
        temp16.Height = new Uno.UX.Size(3f, Uno.UX.Unit.Unspecified);
        temp16.Alignment = Fuse.Elements.Alignment.Bottom;
        temp17.Width = new Uno.UX.Size(85f, Uno.UX.Unit.Percent);
        temp17.Margin = float4(0f, 20f, 0f, 0f);
        temp17.Children.Add(temp18);
        temp17.Children.Add(temp19);
        temp18.Value = "PW";
        temp18.FontSize = 22f;
        temp18.Color = float4(1f, 1f, 1f, 1f);
        temp18.Margin = float4(20f, 0f, 0f, 0f);
        temp19.PlaceholderText = "PW";
        temp19.PlaceholderColor = float4(0.4509804f, 0.4431373f, 0.4431373f, 1f);
        temp19.TextAlignment = Fuse.Controls.TextAlignment.Center;
        temp19.TextColor = float4(0f, 0f, 0f, 1f);
        temp19.Width = new Uno.UX.Size(75f, Uno.UX.Unit.Percent);
        temp19.Alignment = Fuse.Elements.Alignment.BottomRight;
        temp19.Layer = Fuse.Layer.Overlay;
        temp19.Children.Add(temp20);
        temp20.Color = float4(1f, 1f, 1f, 1f);
        temp20.Width = new Uno.UX.Size(100f, Uno.UX.Unit.Percent);
        temp20.Height = new Uno.UX.Size(3f, Uno.UX.Unit.Unspecified);
        temp20.Alignment = Fuse.Elements.Alignment.Bottom;
        temp21.CornerRadius = float4(15f, 15f, 15f, 15f);
        temp21.Color = float4(0.03137255f, 0.5411765f, 0.4078431f, 1f);
        temp21.Width = new Uno.UX.Size(23f, Uno.UX.Unit.Percent);
        temp21.Height = new Uno.UX.Size(40f, Uno.UX.Unit.Unspecified);
        temp21.Alignment = Fuse.Elements.Alignment.CenterRight;
        temp21.Margin = float4(0f, 20f, 30f, 0f);
        temp21.Children.Add(temp22);
        temp22.Value = "Login";
        temp22.Color = float4(1f, 1f, 1f, 1f);
        temp22.Alignment = Fuse.Elements.Alignment.Center;
        global::Fuse.Gestures.Clicked.AddHandler(temp22, temp_eb3.OnEvent);
        temp22.Bindings.Add(temp_eb3);
        temp23.CornerRadius = float4(15f, 15f, 15f, 15f);
        temp23.Color = float4(0.03137255f, 0.5411765f, 0.4078431f, 1f);
        temp23.Width = new Uno.UX.Size(23f, Uno.UX.Unit.Percent);
        temp23.Height = new Uno.UX.Size(40f, Uno.UX.Unit.Unspecified);
        temp23.Margin = float4(55f, -40f, 0f, 0f);
        temp23.Children.Add(temp24);
        temp24.Value = "Sign up";
        temp24.Color = float4(1f, 1f, 1f, 1f);
        temp24.Alignment = Fuse.Elements.Alignment.Center;
        global::Fuse.Gestures.Clicked.AddHandler(temp24, temp_eb4.OnEvent);
        temp24.Bindings.Add(temp_eb4);
        __g_nametable.This = this;
        __g_nametable.Objects.Add(router);
        __g_nametable.Objects.Add(temp_eb3);
        __g_nametable.Objects.Add(temp_eb4);
        this.Children.Add(temp2);
        this.Children.Add(temp3);
    }
}
