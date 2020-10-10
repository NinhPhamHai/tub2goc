.class Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$6;
.super Ljava/lang/Object;
.source "CountryPicker.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->setSearchEditText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$6;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 477
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$6;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->access$1500(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    .line 478
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_0

    .line 480
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$6;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;

    invoke-static {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->access$1500(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
