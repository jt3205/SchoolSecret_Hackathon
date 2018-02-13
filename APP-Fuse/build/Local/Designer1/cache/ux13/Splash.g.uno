[Uno.Compiler.UxGenerated]
public partial class Splash: Fuse.Controls.Page
{
    readonly Fuse.Navigation.Router router;
    internal global::Fuse.Reactive.EventBinding temp_eb11;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "router",
        "temp_eb11"
    };
    static Splash()
    {
    }
    [global::Uno.UX.UXConstructor]
    public Splash(
		[global::Uno.UX.UXParameter("router")] Fuse.Navigation.Router router)
    {
        this.router = router;
        InitializeUX();
    }
    void InitializeUX()
    {
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        var temp = new global::Fuse.Reactive.Data("Start");
        var temp1 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp2 = new global::Fuse.Controls.Image();
        var temp3 = new global::Fuse.Controls.ClientPanel();
        var temp4 = new global::Fuse.Controls.Rectangle();
        var temp5 = new global::Fuse.Controls.Text();
        var temp6 = new global::Fuse.Controls.Text();
        temp_eb11 = new global::Fuse.Reactive.EventBinding(temp);
        temp1.LineNumber = 3;
        temp1.FileName = "Page/Splash.ux";
        temp1.File = new global::Uno.UX.BundleFileSource(import("../../../../../controller/Splash.js"));
        temp2.StretchMode = Fuse.Elements.StretchMode.UniformToFill;
        temp2.Layer = Fuse.Layer.Background;
        temp2.File = new global::Uno.UX.BundleFileSource(import("../../../../../Asset/Splash.jpg"));
        temp3.Children.Add(temp4);
        temp3.Children.Add(temp6);
        temp4.Color = float4(1f, 1f, 1f, 1f);
        temp4.Width = new Uno.UX.Size(75f, Uno.UX.Unit.Percent);
        temp4.Height = new Uno.UX.Size(0.2f, Uno.UX.Unit.Percent);
        temp4.Alignment = Fuse.Elements.Alignment.Center;
        temp4.Margin = float4(0f, 0f, 0f, 30f);
        global::Fuse.Controls.DockPanel.SetDock(temp4, Fuse.Layouts.Dock.Bottom);
        temp4.Children.Add(temp5);
        temp5.Value = "Click To Start";
        temp5.FontSize = 18f;
        temp5.Color = float4(1f, 1f, 1f, 1f);
        temp5.Alignment = Fuse.Elements.Alignment.Center;
        temp5.Margin = float4(0f, 0f, 0f, 0f);
        temp5.Layer = Fuse.Layer.Overlay;
        temp6.Value = "Open Secret at Graduation";
        temp6.FontSize = 18f;
        temp6.Color = float4(1f, 1f, 1f, 1f);
        temp6.Alignment = Fuse.Elements.Alignment.BottomCenter;
        global::Fuse.Gestures.Clicked.AddHandler(temp6, temp_eb11.OnEvent);
        temp6.Bindings.Add(temp_eb11);
        __g_nametable.This = this;
        __g_nametable.Objects.Add(router);
        __g_nametable.Objects.Add(temp_eb11);
        this.Children.Add(temp1);
        this.Children.Add(temp2);
        this.Children.Add(temp3);
    }
}
