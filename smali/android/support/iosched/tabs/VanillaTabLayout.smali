.class public Landroid/support/iosched/tabs/VanillaTabLayout;
.super Landroid/support/iosched/tabs/SlidingTabLayout;
.source "VanillaTabLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Landroid/support/iosched/tabs/VanillaTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Landroid/support/iosched/tabs/VanillaTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/support/iosched/tabs/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 42
    new-array p2, p2, [I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lch/blinkenlights/android/vanilla/R$color;->tabs_active_indicator:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const/4 p3, 0x0

    aput p1, p2, p3

    invoke-virtual {p0, p2}, Landroid/support/iosched/tabs/SlidingTabLayout;->setSelectedIndicatorColors([I)V

    .line 43
    invoke-virtual {p0, p3}, Landroid/support/iosched/tabs/SlidingTabLayout;->setDistributeEvenly(Z)V

    return-void
.end method


# virtual methods
.method protected createDefaultTabView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 2

    .line 51
    invoke-super {p0, p1}, Landroid/support/iosched/tabs/SlidingTabLayout;->createDefaultTabView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object p1

    .line 52
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lch/blinkenlights/android/vanilla/R$color;->tab_text_selector:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 53
    sget v0, Lch/blinkenlights/android/vanilla/R$drawable;->unbound_ripple_light:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/4 v0, 0x1

    .line 54
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 55
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/high16 v0, 0x41600000    # 14.0f

    .line 56
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    return-object p1
.end method
