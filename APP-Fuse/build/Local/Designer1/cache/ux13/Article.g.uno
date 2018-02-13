[Uno.Compiler.UxGenerated]
public partial class Article: Fuse.Controls.Rectangle
{
    global::Uno.UX.Property<string> temp_Value_inst;
    global::Uno.UX.Property<string> temp1_Value_inst;
    static Article()
    {
    }
    [global::Uno.UX.UXConstructor]
    public Article()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        var temp2 = new global::Fuse.Reactive.Data("from");
        var temp3 = "   >  김건";
        var temp4 = new global::Fuse.Reactive.Constant(temp3);
        var temp = new global::Fuse.Controls.Text();
        temp_Value_inst = new Highthon_FuseControlsTextControl_Value_Property(temp, __selector0);
        var temp5 = new global::Fuse.Reactive.Add(temp2, temp4);
        var temp1 = new global::Fuse.Controls.Text();
        temp1_Value_inst = new Highthon_FuseControlsTextControl_Value_Property(temp1, __selector0);
        var temp6 = new global::Fuse.Reactive.Data("contents");
        var temp7 = new global::Fuse.Reactive.DataBinding(temp_Value_inst, temp5, Fuse.Reactive.BindingMode.Default);
        var temp8 = new global::Fuse.Controls.Rectangle();
        var temp9 = new global::Fuse.Controls.Rectangle();
        var temp10 = new global::Fuse.Controls.Image();
        var temp11 = new global::Fuse.Controls.Rectangle();
        var temp12 = new global::Fuse.Controls.Shadow();
        var temp13 = new global::Fuse.Controls.Rectangle();
        var temp14 = new global::Fuse.Reactive.DataBinding(temp1_Value_inst, temp6, Fuse.Reactive.BindingMode.Default);
        var temp15 = new global::Fuse.Controls.Shadow();
        this.Color = float4(0.9372549f, 0.9843137f, 0.972549f, 1f);
        this.Height = new Uno.UX.Size(175f, Uno.UX.Unit.Unspecified);
        this.Margin = float4(0f, 5f, 0f, 0f);
        temp.FontSize = 18f;
        temp.Color = float4(0f, 0f, 0f, 1f);
        temp.Alignment = Fuse.Elements.Alignment.TopLeft;
        temp.Margin = float4(75f, 23f, 0f, 0f);
        temp.Bindings.Add(temp7);
        temp8.Color = float4(0.6431373f, 0.6431373f, 0.6431373f, 1f);
        temp8.Width = new Uno.UX.Size(85f, Uno.UX.Unit.Percent);
        temp8.Height = new Uno.UX.Size(0.5f, Uno.UX.Unit.Percent);
        temp8.Alignment = Fuse.Elements.Alignment.CenterLeft;
        temp8.Margin = float4(20f, 0f, 0f, 35f);
        temp9.Width = new Uno.UX.Size(13f, Uno.UX.Unit.Percent);
        temp9.Height = new Uno.UX.Size(30f, Uno.UX.Unit.Percent);
        temp9.Alignment = Fuse.Elements.Alignment.TopLeft;
        temp9.Margin = float4(10f, 10f, 0f, 0f);
        temp9.Children.Add(temp10);
        temp10.StretchMode = Fuse.Elements.StretchMode.UniformToFill;
        temp10.Alignment = Fuse.Elements.Alignment.Default;
        temp10.Margin = float4(0f, 0f, 0f, 0f);
        temp10.File = new global::Uno.UX.BundleFileSource(import("../../../../../Asset/Profile_one.png"));
        temp11.Color = float4(0.9019608f, 0.9019608f, 0.9019608f, 1f);
        temp11.Height = new Uno.UX.Size(1f, Uno.UX.Unit.Unspecified);
        temp11.Alignment = Fuse.Elements.Alignment.Top;
        temp11.Children.Add(temp12);
        temp12.Angle = 360f;
        temp13.Width = new Uno.UX.Size(90f, Uno.UX.Unit.Percent);
        temp13.Height = new Uno.UX.Size(50f, Uno.UX.Unit.Percent);
        temp13.Alignment = Fuse.Elements.Alignment.CenterLeft;
        temp13.Margin = float4(20f, 40f, 0f, 0f);
        temp13.Children.Add(temp1);
        temp1.Color = float4(0f, 0f, 0f, 1f);
        temp1.Bindings.Add(temp14);
        this.Children.Add(temp);
        this.Children.Add(temp8);
        this.Children.Add(temp9);
        this.Children.Add(temp11);
        this.Children.Add(temp13);
        this.Children.Add(temp15);
    }
    static global::Uno.UX.Selector __selector0 = "Value";
}
