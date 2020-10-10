.class Lch/blinkenlights/android/vanilla/ui/FancyMenu$Adapter;
.super Landroid/widget/ArrayAdapter;
.source "FancyMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/vanilla/ui/FancyMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lch/blinkenlights/android/vanilla/ui/FancyMenu;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/ui/FancyMenu;Landroid/content/Context;I)V
    .locals 0

    .line 209
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenu$Adapter;->this$0:Lch/blinkenlights/android/vanilla/ui/FancyMenu;

    .line 210
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const-string p1, "layout_inflater"

    .line 211
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenu$Adapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 216
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    .line 217
    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->isSpacer()Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Lch/blinkenlights/android/vanilla/R$layout;->fancymenu_spacer:I

    goto :goto_0

    :cond_0
    sget p2, Lch/blinkenlights/android/vanilla/R$layout;->fancymenu_row:I

    .line 219
    :goto_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenu$Adapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 220
    sget p3, Lch/blinkenlights/android/vanilla/R$id;->text:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 221
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 223
    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->isSpacer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 226
    :cond_1
    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-object p2
.end method
