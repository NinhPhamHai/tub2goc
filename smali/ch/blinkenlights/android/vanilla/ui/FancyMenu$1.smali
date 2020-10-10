.class Lch/blinkenlights/android/vanilla/ui/FancyMenu$1;
.super Ljava/lang/Object;
.source "FancyMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/blinkenlights/android/vanilla/ui/FancyMenu;->show(Landroid/view/View;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/ui/FancyMenu;

.field final synthetic val$adapter:Lch/blinkenlights/android/vanilla/ui/FancyMenu$Adapter;

.field final synthetic val$sheet:Lch/blinkenlights/android/vanilla/ui/FancyMenu$Sheet;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/ui/FancyMenu;Lch/blinkenlights/android/vanilla/ui/FancyMenu$Adapter;Lch/blinkenlights/android/vanilla/ui/FancyMenu$Sheet;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenu$1;->this$0:Lch/blinkenlights/android/vanilla/ui/FancyMenu;

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenu$1;->val$adapter:Lch/blinkenlights/android/vanilla/ui/FancyMenu$Adapter;

    iput-object p3, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenu$1;->val$sheet:Lch/blinkenlights/android/vanilla/ui/FancyMenu$Sheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 180
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenu$1;->val$adapter:Lch/blinkenlights/android/vanilla/ui/FancyMenu$Adapter;

    invoke-virtual {p1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    .line 181
    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->isSpacer()Z

    move-result p2

    if-nez p2, :cond_0

    .line 182
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenu$1;->this$0:Lch/blinkenlights/android/vanilla/ui/FancyMenu;

    invoke-static {p2}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->access$000(Lch/blinkenlights/android/vanilla/ui/FancyMenu;)Lch/blinkenlights/android/vanilla/ui/FancyMenu$Callback;

    move-result-object p2

    invoke-interface {p2, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenu$Callback;->onFancyItemSelected(Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;)Z

    .line 184
    :cond_0
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenu$1;->val$sheet:Lch/blinkenlights/android/vanilla/ui/FancyMenu$Sheet;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
