[Uno.Compiler.UxGenerated]
public partial class Add: Fuse.Controls.Page
{
    readonly Fuse.Navigation.Router router;
    internal global::Fuse.Reactive.EventBinding temp_eb0;
    internal global::Fuse.Reactive.EventBinding temp_eb1;
    internal global::Fuse.Reactive.EventBinding temp_eb2;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "router",
        "temp_eb0",
        "temp_eb1",
        "temp_eb2"
    };
    static Add()
    {
    }
    [global::Uno.UX.UXConstructor]
    public Add(
		[global::Uno.UX.UXParameter("router")] Fuse.Navigation.Router router)
    {
        this.router = router;
        InitializeUX();
    }
    void InitializeUX()
    {
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        var temp = new global::Fuse.Reactive.Data("Select");
        var temp1 = new global::Fuse.Reactive.Data("Back");
        var temp2 = new global::Fuse.Reactive.Data("Back");
        var temp3 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp4 = new global::Fuse.Controls.ClientPanel();
        var temp5 = new global::Fuse.Controls.Rectangle();
        var temp6 = new global::Fuse.Controls.Text();
        var temp7 = new global::Fuse.Controls.Shadow();
        var temp8 = new global::Fuse.Controls.Shadow();
        var temp9 = new global::Fuse.Controls.Text();
        var temp10 = new global::Fuse.Controls.Rectangle();
        var temp11 = new global::Fuse.Controls.TextInput();
        var temp12 = new global::Fuse.Drawing.Stroke();
        var temp13 = new global::Fuse.Controls.Rectangle();
        var temp14 = new global::Fuse.Controls.Text();
        var temp15 = new global::Fuse.Drawing.LinearGradient();
        var temp16 = new global::Fuse.Drawing.GradientStop();
        var temp17 = new global::Fuse.Drawing.GradientStop();
        var temp18 = new global::Fuse.Controls.Rectangle();
        var temp19 = new global::Fuse.Controls.Text();
        temp_eb0 = new global::Fuse.Reactive.EventBinding(temp);
        var temp20 = new global::Fuse.Drawing.LinearGradient();
        var temp21 = new global::Fuse.Drawing.GradientStop();
        var temp22 = new global::Fuse.Drawing.GradientStop();
        var temp23 = new global::Fuse.Controls.Rectangle();
        var temp24 = new global::Fuse.Controls.Text();
        temp_eb1 = new global::Fuse.Reactive.EventBinding(temp1);
        var temp25 = new global::Fuse.Drawing.LinearGradient();
        var temp26 = new global::Fuse.Drawing.GradientStop();
        var temp27 = new global::Fuse.Drawing.GradientStop();
        var temp28 = new global::Fuse.Controls.Shadow();
        var temp29 = new global::Fuse.Controls.Rectangle();
        var temp30 = new global::Fuse.Controls.Text();
        temp_eb2 = new global::Fuse.Reactive.EventBinding(temp2);
        var temp31 = new global::Fuse.Drawing.LinearGradient();
        var temp32 = new global::Fuse.Drawing.GradientStop();
        var temp33 = new global::Fuse.Drawing.GradientStop();
        temp3.LineNumber = 3;
        temp3.FileName = "Page/Add.ux";
        temp3.File = new global::Uno.UX.BundleFileSource(import("../../../../../controller/Add.js"));
        temp4.Children.Add(temp5);
        temp4.Children.Add(temp9);
        temp4.Children.Add(temp10);
        temp4.Children.Add(temp13);
        temp4.Children.Add(temp18);
        temp4.Children.Add(temp23);
        temp4.Children.Add(temp29);
        temp5.Color = float4(0.04313726f, 0.3803922f, 0.2941177f, 1f);
        temp5.Height = new Uno.UX.Size(7f, Uno.UX.Unit.Percent);
        temp5.Alignment = Fuse.Elements.Alignment.Top;
        temp5.Children.Add(temp6);
        temp5.Children.Add(temp8);
        temp6.Value = "Secret Open★";
        temp6.FontSize = 17f;
        temp6.Color = float4(1f, 1f, 1f, 1f);
        temp6.Alignment = Fuse.Elements.Alignment.Center;
        temp6.Children.Add(temp7);
        temp7.Size = 20f;
        temp9.Value = "비밀 입력";
        temp9.FontSize = 22f;
        temp9.Color = float4(0f, 0f, 0f, 1f);
        temp9.Alignment = Fuse.Elements.Alignment.TopLeft;
        temp9.Margin = float4(35f, 85f, 0f, 0f);
        temp10.Width = new Uno.UX.Size(85f, Uno.UX.Unit.Percent);
        temp10.Height = new Uno.UX.Size(60f, Uno.UX.Unit.Percent);
        temp10.Strokes.Add(temp12);
        temp10.Children.Add(temp11);
        temp11.PlaceholderText = "입력";
        temp11.TextAlignment = Fuse.Controls.TextAlignment.Center;
        temp11.TextColor = float4(0f, 0f, 0f, 1f);
        temp12.Color = float4(0.04313726f, 0.3803922f, 0.2941177f, 1f);
        temp12.Width = 3f;
        temp13.CornerRadius = float4(15f, 15f, 15f, 15f);
        temp13.Color = float4(0.04313726f, 0.3803922f, 0.2941177f, 1f);
        temp13.Width = new Uno.UX.Size(23f, Uno.UX.Unit.Percent);
        temp13.Height = new Uno.UX.Size(40f, Uno.UX.Unit.Unspecified);
        temp13.Alignment = Fuse.Elements.Alignment.Bottom;
        temp13.Margin = float4(200f, 0f, 0f, 60f);
        temp13.Fills.Add(temp15);
        temp13.Children.Add(temp14);
        temp14.Value = "전체에게";
        temp14.Color = float4(1f, 1f, 1f, 1f);
        temp14.Alignment = Fuse.Elements.Alignment.Center;
        temp15.Stops.Add(temp16);
        temp15.Stops.Add(temp17);
        temp16.Offset = 0f;
        temp16.Color = float4(0.04313726f, 0.3803922f, 0.2941177f, 1f);
        temp17.Offset = 1f;
        temp17.Color = float4(0.03137255f, 0.5411765f, 0.4078431f, 1f);
        temp18.CornerRadius = float4(15f, 15f, 15f, 15f);
        temp18.Color = float4(0.04313726f, 0.3803922f, 0.2941177f, 1f);
        temp18.Width = new Uno.UX.Size(30f, Uno.UX.Unit.Percent);
        temp18.Height = new Uno.UX.Size(40f, Uno.UX.Unit.Unspecified);
        temp18.Alignment = Fuse.Elements.Alignment.Bottom;
        temp18.Margin = float4(-30f, 0f, 0f, 60f);
        temp18.Fills.Add(temp20);
        temp18.Children.Add(temp19);
        temp19.Value = "원하는 사람에게";
        temp19.Color = float4(1f, 1f, 1f, 1f);
        temp19.Alignment = Fuse.Elements.Alignment.Center;
        temp19.Margin = float4(0f, 0f, 0f, 0f);
        global::Fuse.Gestures.Clicked.AddHandler(temp19, temp_eb0.OnEvent);
        temp19.Bindings.Add(temp_eb0);
        temp20.Stops.Add(temp21);
        temp20.Stops.Add(temp22);
        temp21.Offset = 0f;
        temp21.Color = float4(0.04313726f, 0.3803922f, 0.2941177f, 1f);
        temp22.Offset = 1f;
        temp22.Color = float4(0.03137255f, 0.5411765f, 0.4078431f, 1f);
        temp23.CornerRadius = float4(15f, 15f, 15f, 15f);
        temp23.Color = float4(0.04313726f, 0.3803922f, 0.2941177f, 1f);
        temp23.Width = new Uno.UX.Size(23f, Uno.UX.Unit.Percent);
        temp23.Height = new Uno.UX.Size(40f, Uno.UX.Unit.Unspecified);
        temp23.Alignment = Fuse.Elements.Alignment.BottomRight;
        temp23.Margin = float4(0f, 0f, 45f, 10f);
        temp23.Fills.Add(temp25);
        temp23.Children.Add(temp24);
        temp23.Children.Add(temp28);
        temp24.Value = "Next";
        temp24.FontSize = 17f;
        temp24.Color = float4(1f, 1f, 1f, 1f);
        temp24.Alignment = Fuse.Elements.Alignment.Center;
        global::Fuse.Gestures.Clicked.AddHandler(temp24, temp_eb1.OnEvent);
        temp24.Bindings.Add(temp_eb1);
        temp25.Stops.Add(temp26);
        temp25.Stops.Add(temp27);
        temp26.Offset = 0f;
        temp26.Color = float4(0.04313726f, 0.3803922f, 0.2941177f, 1f);
        temp27.Offset = 1f;
        temp27.Color = float4(0.03137255f, 0.5411765f, 0.4078431f, 1f);
        temp29.CornerRadius = float4(15f, 15f, 15f, 15f);
        temp29.Width = new Uno.UX.Size(23f, Uno.UX.Unit.Percent);
        temp29.Height = new Uno.UX.Size(40f, Uno.UX.Unit.Unspecified);
        temp29.Alignment = Fuse.Elements.Alignment.Bottom;
        temp29.Margin = float4(-5f, 0f, 0f, 10f);
        temp29.Fills.Add(temp31);
        temp29.Children.Add(temp30);
        temp30.Value = "Back";
        temp30.Color = float4(1f, 1f, 1f, 1f);
        temp30.Alignment = Fuse.Elements.Alignment.Center;
        global::Fuse.Gestures.Clicked.AddHandler(temp30, temp_eb2.OnEvent);
        temp30.Bindings.Add(temp_eb2);
        temp31.Stops.Add(temp32);
        temp31.Stops.Add(temp33);
        temp32.Offset = 0f;
        temp32.Color = float4(0.04313726f, 0.3803922f, 0.2941177f, 1f);
        temp33.Offset = 1f;
        temp33.Color = float4(0.03137255f, 0.5411765f, 0.4078431f, 1f);
        __g_nametable.This = this;
        __g_nametable.Objects.Add(router);
        __g_nametable.Objects.Add(temp_eb0);
        __g_nametable.Objects.Add(temp_eb1);
        __g_nametable.Objects.Add(temp_eb2);
        this.Children.Add(temp3);
        this.Children.Add(temp4);
    }
}
