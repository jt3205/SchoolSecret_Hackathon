[Uno.Compiler.UxGenerated]
public partial class Main: Fuse.Controls.Page
{
    readonly Fuse.Navigation.Router router;
    [Uno.Compiler.UxGenerated]
    public partial class Template: Uno.UX.Template
    {
        [Uno.WeakReference] internal readonly Main __parent;
        [Uno.WeakReference] internal readonly Main __parentInstance;
        public Template(Main parent, Main parentInstance): base(null, false)
        {
            __parent = parent;
            __parentInstance = parentInstance;
        }
        static Template()
        {
        }
        public override object New()
        {
            var __self = new global::Article();
            return __self;
        }
    }
    global::Uno.UX.Property<object> temp_Items_inst;
    internal global::Fuse.Reactive.EventBinding temp_eb5;
    internal global::Fuse.Reactive.EventBinding temp_eb6;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "router",
        "temp_eb5",
        "temp_eb6"
    };
    static Main()
    {
    }
    [global::Uno.UX.UXConstructor]
    public Main(
		[global::Uno.UX.UXParameter("router")] Fuse.Navigation.Router router)
    {
        this.router = router;
        InitializeUX();
    }
    void InitializeUX()
    {
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        var temp1 = new global::Fuse.Reactive.Data("Logout");
        var temp = new global::Fuse.Reactive.Each();
        temp_Items_inst = new Highthon_FuseReactiveEach_Items_Property(temp, __selector0);
        var temp2 = new global::Fuse.Reactive.Data("dataSource");
        var temp3 = new global::Fuse.Reactive.Data("Add");
        var temp4 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp5 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp6 = new global::Fuse.Controls.ClientPanel();
        var temp7 = new global::Fuse.Controls.Rectangle();
        var temp8 = new global::Fuse.Controls.Rectangle();
        var temp9 = new global::Fuse.Controls.Text();
        temp_eb5 = new global::Fuse.Reactive.EventBinding(temp1);
        var temp10 = new global::Fuse.Controls.Shadow();
        var temp11 = new global::Fuse.Controls.Text();
        var temp12 = new global::Fuse.Controls.ScrollView();
        var temp13 = new global::Fuse.Controls.StackPanel();
        var temp14 = new global::Fuse.Controls.Rectangle();
        var temp15 = new global::Fuse.Controls.Image();
        var temp16 = new global::Fuse.Controls.Rectangle();
        var temp17 = new global::Fuse.Controls.Shadow();
        var temp18 = new global::Fuse.Controls.Rectangle();
        var temp19 = new global::Fuse.Controls.Text();
        var temp20 = new global::Fuse.Controls.Text();
        var temp21 = new global::Fuse.Controls.Shadow();
        var temp22 = new Template(this, this);
        var temp23 = new global::Fuse.Reactive.DataBinding(temp_Items_inst, temp2, Fuse.Reactive.BindingMode.Default);
        var temp24 = new global::Fuse.Controls.Rectangle();
        var temp25 = new global::Fuse.Controls.Text();
        var temp26 = new global::Fuse.Controls.Rectangle();
        var temp27 = new global::Fuse.Rotation();
        var temp28 = new global::Fuse.Controls.Rectangle();
        var temp29 = new global::Fuse.Rotation();
        var temp30 = new global::Fuse.Controls.Rectangle();
        var temp31 = new global::Fuse.Rotation();
        var temp32 = new global::Fuse.Controls.Text();
        temp_eb6 = new global::Fuse.Reactive.EventBinding(temp3);
        this.Alignment = Fuse.Elements.Alignment.VerticalCenter;
        temp4.LineNumber = 3;
        temp4.FileName = "Page/Main.ux";
        temp4.File = new global::Uno.UX.BundleFileSource(import("../../../../../controller/Main.js"));
        temp5.LineNumber = 4;
        temp5.FileName = "Page/Main.ux";
        temp5.File = new global::Uno.UX.BundleFileSource(import("../../../../../controller/a.js"));
        temp6.Children.Add(temp7);
        temp6.Children.Add(temp12);
        temp6.Children.Add(temp24);
        temp7.Color = float4(0.04313726f, 0.2313726f, 0.2235294f, 1f);
        temp7.Height = new Uno.UX.Size(7f, Uno.UX.Unit.Percent);
        temp7.Alignment = Fuse.Elements.Alignment.Top;
        temp7.Children.Add(temp8);
        temp7.Children.Add(temp10);
        temp7.Children.Add(temp11);
        temp8.CornerRadius = float4(15f, 15f, 15f, 15f);
        temp8.Color = float4(0.04313726f, 0.3803922f, 0.2941177f, 1f);
        temp8.Width = new Uno.UX.Size(18f, Uno.UX.Unit.Percent);
        temp8.Height = new Uno.UX.Size(70f, Uno.UX.Unit.Percent);
        temp8.Alignment = Fuse.Elements.Alignment.CenterLeft;
        temp8.Margin = float4(10f, 0f, 0f, 0f);
        temp8.Children.Add(temp9);
        temp9.Value = "Log Out";
        temp9.Color = float4(1f, 1f, 1f, 1f);
        temp9.Alignment = Fuse.Elements.Alignment.Center;
        global::Fuse.Gestures.Clicked.AddHandler(temp9, temp_eb5.OnEvent);
        temp9.Bindings.Add(temp_eb5);
        temp11.Value = "대구소프트웨어고등학교";
        temp11.Color = float4(1f, 1f, 1f, 1f);
        temp11.Alignment = Fuse.Elements.Alignment.Center;
        temp11.Margin = float4(0f, 0f, 0f, 0f);
        temp12.Height = new Uno.UX.Size(630f, Uno.UX.Unit.Unspecified);
        temp12.Alignment = Fuse.Elements.Alignment.Top;
        temp12.Margin = float4(0f, 50f, 0f, 0f);
        temp12.Children.Add(temp13);
        temp13.Children.Add(temp14);
        temp13.Children.Add(temp);
        temp14.Color = float4(0.9372549f, 0.9843137f, 0.972549f, 1f);
        temp14.Height = new Uno.UX.Size(175f, Uno.UX.Unit.Unspecified);
        temp14.Margin = float4(0f, 5f, 0f, 0f);
        temp14.Children.Add(temp15);
        temp14.Children.Add(temp16);
        temp14.Children.Add(temp18);
        temp14.Children.Add(temp20);
        temp14.Children.Add(temp21);
        temp15.StretchMode = Fuse.Elements.StretchMode.UniformToFill;
        temp15.Layer = Fuse.Layer.Background;
        temp15.File = new global::Uno.UX.BundleFileSource(import("../../../../../Asset/lock.png"));
        temp16.Color = float4(0.9019608f, 0.9019608f, 0.9019608f, 1f);
        temp16.Height = new Uno.UX.Size(1f, Uno.UX.Unit.Unspecified);
        temp16.Alignment = Fuse.Elements.Alignment.Top;
        temp16.Children.Add(temp17);
        temp17.Angle = 360f;
        temp18.CornerRadius = float4(15f, 15f, 15f, 15f);
        temp18.Color = float4(0.04313726f, 0.2313726f, 0.2235294f, 1f);
        temp18.Width = new Uno.UX.Size(25f, Uno.UX.Unit.Percent);
        temp18.Height = new Uno.UX.Size(23f, Uno.UX.Unit.Percent);
        temp18.Alignment = Fuse.Elements.Alignment.BottomRight;
        temp18.Margin = float4(0f, 0f, 20f, 20f);
        temp18.Children.Add(temp19);
        temp19.Value = "나도 볼래 !";
        temp19.FontSize = 18f;
        temp19.Color = float4(1f, 1f, 1f, 1f);
        temp19.Alignment = Fuse.Elements.Alignment.Center;
        temp20.Value = "남현욱님 외 5명에게만 공개된 비밀입니다.";
        temp20.FontSize = 20f;
        temp20.Color = float4(1f, 1f, 1f, 1f);
        temp20.Alignment = Fuse.Elements.Alignment.Center;
        temp.Templates.Add(temp22);
        temp.Bindings.Add(temp23);
        temp24.Color = float4(0.04313726f, 0.2313726f, 0.2235294f, 1f);
        temp24.Height = new Uno.UX.Size(8f, Uno.UX.Unit.Percent);
        temp24.Alignment = Fuse.Elements.Alignment.Bottom;
        temp24.Layer = Fuse.Layer.Overlay;
        temp24.Children.Add(temp25);
        temp24.Children.Add(temp30);
        temp24.Children.Add(temp32);
        temp25.Value = "Option";
        temp25.Color = float4(1f, 1f, 1f, 1f);
        temp25.Alignment = Fuse.Elements.Alignment.CenterLeft;
        temp25.Margin = float4(75f, 0f, 0f, 0f);
        temp25.Children.Add(temp26);
        temp25.Children.Add(temp28);
        temp26.Color = float4(1f, 1f, 1f, 1f);
        temp26.Width = new Uno.UX.Size(50f, Uno.UX.Unit.Unspecified);
        temp26.Height = new Uno.UX.Size(5f, Uno.UX.Unit.Unspecified);
        temp26.Children.Add(temp27);
        temp27.Degrees = -45f;
        temp28.Color = float4(1f, 1f, 1f, 1f);
        temp28.Width = new Uno.UX.Size(50f, Uno.UX.Unit.Unspecified);
        temp28.Height = new Uno.UX.Size(5f, Uno.UX.Unit.Unspecified);
        temp28.Children.Add(temp29);
        temp29.Degrees = 45f;
        temp30.Color = float4(1f, 1f, 1f, 1f);
        temp30.Width = new Uno.UX.Size(0.4f, Uno.UX.Unit.Percent);
        temp30.Alignment = Fuse.Elements.Alignment.Default;
        temp30.Children.Add(temp31);
        temp31.Degrees = 45.378f;
        temp32.Value = "Add";
        temp32.Color = float4(1f, 1f, 1f, 1f);
        temp32.Alignment = Fuse.Elements.Alignment.CenterRight;
        temp32.Margin = float4(0f, 0f, 75f, 0f);
        global::Fuse.Gestures.Clicked.AddHandler(temp32, temp_eb6.OnEvent);
        temp32.Bindings.Add(temp_eb6);
        __g_nametable.This = this;
        __g_nametable.Objects.Add(router);
        __g_nametable.Objects.Add(temp_eb5);
        __g_nametable.Objects.Add(temp_eb6);
        this.Children.Add(temp4);
        this.Children.Add(temp5);
        this.Children.Add(temp6);
    }
    static global::Uno.UX.Selector __selector0 = "Items";
}
