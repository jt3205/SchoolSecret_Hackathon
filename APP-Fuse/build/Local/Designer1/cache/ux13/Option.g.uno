[Uno.Compiler.UxGenerated]
public partial class Option: Fuse.Controls.Page
{
    readonly Fuse.Navigation.Router router;
    static Option()
    {
    }
    [global::Uno.UX.UXConstructor]
    public Option(
		[global::Uno.UX.UXParameter("router")] Fuse.Navigation.Router router)
    {
        this.router = router;
        InitializeUX();
    }
    void InitializeUX()
    {
        var temp = new global::Fuse.Controls.ClientPanel();
        var temp1 = new global::Fuse.Controls.StackPanel();
        temp.Children.Add(temp1);
        this.Children.Add(temp);
    }
}
