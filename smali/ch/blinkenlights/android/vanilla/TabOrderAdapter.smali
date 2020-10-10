.class public Lch/blinkenlights/android/vanilla/TabOrderAdapter;
.super Landroid/widget/BaseAdapter;
.source "TabOrderAdapter.java"


# instance fields
.field private final mActivity:Lch/blinkenlights/android/vanilla/TabOrderActivity;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mTabIds:[I


# direct methods
.method public constructor <init>(Lch/blinkenlights/android/vanilla/TabOrderActivity;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 48
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/TabOrderAdapter;->mActivity:Lch/blinkenlights/android/vanilla/TabOrderActivity;

    const-string v0, "layout_inflater"

    .line 49
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/TabOrderAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 84
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/TabOrderAdapter;->mTabIds:[I

    aget p1, v0, p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getTabIds()[I
    .locals 1

    .line 66
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/TabOrderAdapter;->mTabIds:[I

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 92
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/TabOrderAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lch/blinkenlights/android/vanilla/R$layout;->draggable_row:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lch/blinkenlights/android/vanilla/DraggableRow;

    const/4 p3, 0x1

    .line 93
    invoke-virtual {p2, p3}, Lch/blinkenlights/android/vanilla/DraggableRow;->setupLayout(I)V

    goto :goto_0

    .line 95
    :cond_0
    check-cast p2, Lch/blinkenlights/android/vanilla/DraggableRow;

    .line 97
    :goto_0
    iget-object p3, p0, Lch/blinkenlights/android/vanilla/TabOrderAdapter;->mActivity:Lch/blinkenlights/android/vanilla/TabOrderActivity;

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget-object v0, Lch/blinkenlights/android/vanilla/LibraryPagerAdapter;->TITLES:[I

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/TabOrderAdapter;->mTabIds:[I

    aget p1, v1, p1

    aget p1, v0, p1

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Lch/blinkenlights/android/vanilla/DraggableRow;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setTabIds([I)V
    .locals 0

    .line 57
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/TabOrderAdapter;->mTabIds:[I

    .line 58
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
