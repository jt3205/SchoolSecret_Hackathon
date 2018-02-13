[Uno.Compiler.UxGenerated]
public partial class SelectPeople: Fuse.Controls.Page
{
    readonly Fuse.Navigation.Router router;
    internal global::Fuse.Reactive.EventBinding temp_eb7;
    internal global::Fuse.Reactive.EventBinding temp_eb8;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "router",
        "temp_eb7",
        "temp_eb8"
    };
    static SelectPeople()
    {
    }
    [global::Uno.UX.UXConstructor]
    public SelectPeople(
		[global::Uno.UX.UXParameter("router")] Fuse.Navigation.Router router)
    {
        this.router = router;
        InitializeUX();
    }
    void InitializeUX()
    {
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        var temp = new global::Fuse.Reactive.Data("Back");
        var temp1 = new global::Fuse.Reactive.Data("Back");
        var temp2 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp3 = new global::Fuse.Controls.ClientPanel();
        var temp4 = new global::Fuse.Controls.StackPanel();
        var temp5 = new global::Fuse.Controls.Rectangle();
        var temp6 = new global::Fuse.Controls.Text();
        temp_eb7 = new global::Fuse.Reactive.EventBinding(temp);
        var temp7 = new global::Fuse.Controls.Text();
        temp_eb8 = new global::Fuse.Reactive.EventBinding(temp1);
        var temp8 = new global::Fuse.Controls.Text();
        var temp9 = new global::Fuse.Controls.Shadow();
        var temp10 = new global::Fuse.Controls.ScrollView();
        var temp11 = new global::Fuse.Controls.StackPanel();
        var temp12 = new global::Fuse.Controls.Rectangle();
        var temp13 = new global::Fuse.Controls.Image();
        var temp14 = new global::Fuse.Controls.Text();
        var temp15 = new global::Fuse.Controls.Button();
        var temp16 = new global::Fuse.Controls.Rectangle();
        var temp17 = new global::Fuse.Controls.Rectangle();
        var temp18 = new global::Fuse.Rotation();
        var temp19 = new global::Fuse.Controls.Rectangle();
        var temp20 = new global::Fuse.Controls.Rectangle();
        var temp21 = new global::Fuse.Controls.Rectangle();
        var temp22 = new global::Fuse.Controls.Rectangle();
        var temp23 = new global::Fuse.Controls.Rectangle();
        var temp24 = new global::Fuse.Controls.Rectangle();
        var temp25 = new global::Fuse.Controls.Rectangle();
        var temp26 = new global::Fuse.Controls.Rectangle();
        var temp27 = new global::Fuse.Controls.Rectangle();
        this.Color = float4(1f, 1f, 1f, 1f);
        temp2.LineNumber = 3;
        temp2.FileName = "Page/SelectPeople.ux";
        temp2.File = new global::Uno.UX.BundleFileSource(import("../../../../../controller/SelectPeople.js"));
        temp3.Children.Add(temp4);
        temp4.Children.Add(temp5);
        temp4.Children.Add(temp10);
        temp5.Color = float4(0.04313726f, 0.2313726f, 0.2235294f, 1f);
        temp5.Height = new Uno.UX.Size(55f, Uno.UX.Unit.Unspecified);
        temp5.Alignment = Fuse.Elements.Alignment.Top;
        temp5.Children.Add(temp6);
        temp5.Children.Add(temp7);
        temp5.Children.Add(temp8);
        temp6.Value = "Back";
        temp6.FontSize = 17f;
        temp6.TextAlignment = Fuse.Controls.TextAlignment.Center;
        temp6.Color = float4(1f, 1f, 1f, 1f);
        temp6.Alignment = Fuse.Elements.Alignment.CenterLeft;
        temp6.Margin = float4(15f, 0f, 0f, 0f);
        temp6.Layer = Fuse.Layer.Overlay;
        global::Fuse.Gestures.Clicked.AddHandler(temp6, temp_eb7.OnEvent);
        temp6.Bindings.Add(temp_eb7);
        temp7.Value = "OK";
        temp7.FontSize = 17f;
        temp7.Color = float4(1f, 1f, 1f, 1f);
        temp7.Alignment = Fuse.Elements.Alignment.CenterRight;
        temp7.Margin = float4(0f, 0f, 15f, 0f);
        temp7.Layer = Fuse.Layer.Overlay;
        global::Fuse.Gestures.Clicked.AddHandler(temp7, temp_eb8.OnEvent);
        temp7.Bindings.Add(temp_eb8);
        temp8.Value = "졸업하는 비밀 친구";
        temp8.FontSize = 18f;
        temp8.Color = float4(1f, 1f, 1f, 1f);
        temp8.Alignment = Fuse.Elements.Alignment.Center;
        temp8.Children.Add(temp9);
        temp9.Angle = 360f;
        temp9.Size = 15f;
        temp10.Height = new Uno.UX.Size(630f, Uno.UX.Unit.Unspecified);
        temp10.Children.Add(temp11);
        temp11.Children.Add(temp12);
        temp11.Children.Add(temp19);
        temp11.Children.Add(temp20);
        temp11.Children.Add(temp21);
        temp11.Children.Add(temp22);
        temp11.Children.Add(temp23);
        temp11.Children.Add(temp24);
        temp11.Children.Add(temp25);
        temp11.Children.Add(temp26);
        temp11.Children.Add(temp27);
        temp12.Color = float4(0.03137255f, 0.5411765f, 0.4078431f, 1f);
        temp12.Height = new Uno.UX.Size(75f, Uno.UX.Unit.Unspecified);
        temp12.Children.Add(temp13);
        temp12.Children.Add(temp14);
        temp12.Children.Add(temp15);
        temp13.Width = new Uno.UX.Size(50f, Uno.UX.Unit.Unspecified);
        temp13.Height = new Uno.UX.Size(50f, Uno.UX.Unit.Unspecified);
        temp13.Alignment = Fuse.Elements.Alignment.CenterLeft;
        temp13.Margin = float4(25f, 0f, 0f, 0f);
        temp13.File = new global::Uno.UX.BundleFileSource(import("../../../../../Asset/Profile_one.png"));
        temp14.Value = "김 건";
        temp14.FontSize = 20f;
        temp14.Color = float4(1f, 1f, 1f, 1f);
        temp14.Alignment = Fuse.Elements.Alignment.Center;
        temp14.Margin = float4(0f, 0f, 180f, 0f);
        temp15.Color = float4(0.01568628f, 0.7058824f, 0.5254902f, 1f);
        temp15.Width = new Uno.UX.Size(40f, Uno.UX.Unit.Unspecified);
        temp15.Height = new Uno.UX.Size(40f, Uno.UX.Unit.Unspecified);
        temp15.Alignment = Fuse.Elements.Alignment.CenterRight;
        temp15.Margin = float4(0f, 0f, 40f, 0f);
        temp15.Children.Add(temp16);
        temp15.Children.Add(temp17);
        temp16.Color = float4(1f, 1f, 1f, 1f);
        temp16.Width = new Uno.UX.Size(50f, Uno.UX.Unit.Percent);
        temp16.Height = new Uno.UX.Size(5f, Uno.UX.Unit.Unspecified);
        temp17.Color = float4(1f, 1f, 1f, 1f);
        temp17.Width = new Uno.UX.Size(50f, Uno.UX.Unit.Percent);
        temp17.Height = new Uno.UX.Size(5f, Uno.UX.Unit.Unspecified);
        temp17.Children.Add(temp18);
        temp18.Degrees = -90.756f;
        temp19.Color = float4(0.03137255f, 0.5411765f, 0.4078431f, 1f);
        temp19.Height = new Uno.UX.Size(75f, Uno.UX.Unit.Unspecified);
        temp19.Margin = float4(0f, 5f, 0f, 0f);
        temp20.Color = float4(0.03137255f, 0.5411765f, 0.4078431f, 1f);
        temp20.Height = new Uno.UX.Size(75f, Uno.UX.Unit.Unspecified);
        temp20.Margin = float4(0f, 5f, 0f, 0f);
        temp21.Color = float4(0.03137255f, 0.5411765f, 0.4078431f, 1f);
        temp21.Height = new Uno.UX.Size(75f, Uno.UX.Unit.Unspecified);
        temp21.Margin = float4(0f, 5f, 0f, 0f);
        temp22.Color = float4(0.03137255f, 0.5411765f, 0.4078431f, 1f);
        temp22.Height = new Uno.UX.Size(75f, Uno.UX.Unit.Unspecified);
        temp22.Margin = float4(0f, 5f, 0f, 0f);
        temp23.Color = float4(0.03137255f, 0.5411765f, 0.4078431f, 1f);
        temp23.Height = new Uno.UX.Size(75f, Uno.UX.Unit.Unspecified);
        temp23.Margin = float4(0f, 5f, 0f, 0f);
        temp24.Color = float4(0.03137255f, 0.5411765f, 0.4078431f, 1f);
        temp24.Height = new Uno.UX.Size(75f, Uno.UX.Unit.Unspecified);
        temp24.Margin = float4(0f, 5f, 0f, 0f);
        temp25.Color = float4(0.03137255f, 0.5411765f, 0.4078431f, 1f);
        temp25.Height = new Uno.UX.Size(75f, Uno.UX.Unit.Unspecified);
        temp25.Margin = float4(0f, 5f, 0f, 0f);
        temp26.Color = float4(0.03137255f, 0.5411765f, 0.4078431f, 1f);
        temp26.Height = new Uno.UX.Size(75f, Uno.UX.Unit.Unspecified);
        temp26.Margin = float4(0f, 5f, 0f, 0f);
        temp27.Color = float4(0.03137255f, 0.5411765f, 0.4078431f, 1f);
        temp27.Height = new Uno.UX.Size(75f, Uno.UX.Unit.Unspecified);
        temp27.Margin = float4(0f, 5f, 0f, 0f);
        __g_nametable.This = this;
        __g_nametable.Objects.Add(router);
        __g_nametable.Objects.Add(temp_eb7);
        __g_nametable.Objects.Add(temp_eb8);
        this.Children.Add(temp2);
        this.Children.Add(temp3);
    }
}
