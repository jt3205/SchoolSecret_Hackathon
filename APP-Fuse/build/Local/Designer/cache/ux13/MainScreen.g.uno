[Uno.Compiler.UxGenerated]
public partial class MainScreen: Fuse.Controls.Page
{
    readonly Fuse.Navigation.Router router;
    internal global::Fuse.Controls.Rectangle myRectangle;
    static MainScreen()
    {
    }
    [global::Uno.UX.UXConstructor]
    public MainScreen(
		[global::Uno.UX.UXParameter("router")] Fuse.Navigation.Router router)
    {
        this.router = router;
        InitializeUX();
    }
    void InitializeUX()
    {
        var temp = new global::Fuse.Controls.ClientPanel();
        var temp1 = new global::Fuse.Controls.StackPanel();
        var temp2 = new global::Fuse.Controls.Image();
        var temp3 = new global::Fuse.Controls.Grid();
        var temp4 = new global::Fuse.Controls.Rectangle();
        var temp5 = new global::Fuse.Controls.Shadow();
        var temp6 = new global::Fuse.Controls.TextInput();
        var temp7 = new global::Fuse.Controls.Rectangle();
        var temp8 = new global::Fuse.Controls.Shadow();
        var temp9 = new global::Fuse.Controls.TextInput();
        myRectangle = new global::Fuse.Controls.Rectangle();
        var temp10 = new global::Fuse.Controls.Shadow();
        var temp11 = new global::Fuse.Controls.Text();
        var temp12 = new global::Fuse.Controls.Image();
        temp.Children.Add(temp1);
        temp.Children.Add(temp12);
        temp1.Children.Add(temp2);
        temp1.Children.Add(temp3);
        temp2.Width = new Uno.UX.Size(128f, Uno.UX.Unit.Unspecified);
        temp2.Height = new Uno.UX.Size(128f, Uno.UX.Unit.Unspecified);
        temp2.Alignment = Fuse.Elements.Alignment.TopCenter;
        temp2.Margin = float4(0f, 40f, 0f, 120f);
        temp2.File = new global::Uno.UX.BundleFileSource(import("../../../../../Asset/logo.png"));
        temp3.Alignment = Fuse.Elements.Alignment.Default;
        temp3.Margin = float4(0f, 0f, 0f, 0f);
        temp3.Children.Add(temp4);
        temp3.Children.Add(temp7);
        temp3.Children.Add(myRectangle);
        temp4.CornerRadius = float4(2f, 2f, 2f, 2f);
        temp4.Color = float4(1f, 1f, 1f, 1f);
        temp4.Width = new Uno.UX.Size(80f, Uno.UX.Unit.Percent);
        temp4.Height = new Uno.UX.Size(45f, Uno.UX.Unit.Unspecified);
        temp4.MinWidth = new Uno.UX.Size(200f, Uno.UX.Unit.Unspecified);
        temp4.Alignment = Fuse.Elements.Alignment.Top;
        temp4.Margin = float4(0f, 0f, 0f, 0f);
        temp4.Children.Add(temp5);
        temp4.Children.Add(temp6);
        temp5.Angle = 90f;
        temp5.Distance = 3f;
        temp5.Size = 2f;
        temp5.Color = float4(0.4f, 0.4f, 0.4f, 1f);
        temp6.PlaceholderText = "ID";
        temp6.PlaceholderColor = float4(0.4666667f, 0.4666667f, 0.4666667f, 1f);
        temp6.Margin = float4(15f, 0f, 0f, 0f);
        temp7.CornerRadius = float4(2f, 2f, 2f, 2f);
        temp7.Color = float4(1f, 1f, 1f, 1f);
        temp7.Width = new Uno.UX.Size(80f, Uno.UX.Unit.Percent);
        temp7.Height = new Uno.UX.Size(45f, Uno.UX.Unit.Unspecified);
        temp7.MinWidth = new Uno.UX.Size(200f, Uno.UX.Unit.Unspecified);
        temp7.Alignment = Fuse.Elements.Alignment.Top;
        temp7.Margin = float4(0f, 30f, 0f, 0f);
        temp7.Children.Add(temp8);
        temp7.Children.Add(temp9);
        temp8.Angle = 90f;
        temp8.Distance = 3f;
        temp8.Size = 2f;
        temp8.Color = float4(0.4f, 0.4f, 0.4f, 1f);
        temp9.PlaceholderText = "PW";
        temp9.PlaceholderColor = float4(0.4666667f, 0.4666667f, 0.4666667f, 1f);
        temp9.Margin = float4(15f, 0f, 0f, 0f);
        myRectangle.CornerRadius = float4(30f, 30f, 30f, 30f);
        myRectangle.Color = float4(0.8392157f, 0.2901961f, 0.1686275f, 1f);
        myRectangle.Width = new Uno.UX.Size(80f, Uno.UX.Unit.Percent);
        myRectangle.Height = new Uno.UX.Size(45f, Uno.UX.Unit.Unspecified);
        myRectangle.MinWidth = new Uno.UX.Size(200f, Uno.UX.Unit.Unspecified);
        myRectangle.Alignment = Fuse.Elements.Alignment.Top;
        myRectangle.Margin = float4(0f, 90f, 0f, 0f);
        myRectangle.Name = __selector0;
        myRectangle.Children.Add(temp10);
        myRectangle.Children.Add(temp11);
        temp10.Angle = 90f;
        temp10.Distance = 3f;
        temp10.Size = 2f;
        temp10.Color = float4(0f, 0f, 0f, 1f);
        temp11.Value = "로그인";
        temp11.TextColor = float4(1f, 1f, 1f, 1f);
        temp11.Alignment = Fuse.Elements.Alignment.Center;
        temp12.StretchMode = Fuse.Elements.StretchMode.UniformToFill;
        temp12.Alignment = Fuse.Elements.Alignment.Center;
        global::Fuse.Controls.DockPanel.SetDock(temp12, Fuse.Layouts.Dock.Fill);
        temp12.File = new global::Uno.UX.BundleFileSource(import("../../../../../Asset/bg.jpg"));
        this.Children.Add(temp);
    }
    static global::Uno.UX.Selector __selector0 = "myRectangle";
}
