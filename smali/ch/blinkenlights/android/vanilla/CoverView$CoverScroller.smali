.class Lch/blinkenlights/android/vanilla/CoverView$CoverScroller;
.super Landroid/widget/Scroller;
.source "CoverView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/vanilla/CoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverScroller"
.end annotation


# instance fields
.field private mCoverIntent:I

.field final synthetic this$0:Lch/blinkenlights/android/vanilla/CoverView;


# direct methods
.method public constructor <init>(Lch/blinkenlights/android/vanilla/CoverView;Landroid/content/Context;)V
    .locals 1

    .line 619
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/CoverView$CoverScroller;->this$0:Lch/blinkenlights/android/vanilla/CoverView;

    .line 620
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 635
    iput v0, p0, Lch/blinkenlights/android/vanilla/CoverView$CoverScroller;->mCoverIntent:I

    .line 636
    invoke-super {p0}, Landroid/widget/Scroller;->abortAnimation()V

    return-void
.end method

.method public getCoverIntent()I
    .locals 1

    .line 630
    iget v0, p0, Lch/blinkenlights/android/vanilla/CoverView$CoverScroller;->mCoverIntent:I

    return v0
.end method

.method public handleFling(IIII)V
    .locals 6

    .line 647
    invoke-virtual {p0}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    .line 648
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/CoverView$CoverScroller;->abortAnimation()V

    .line 651
    :cond_0
    iput p4, p0, Lch/blinkenlights/android/vanilla/CoverView$CoverScroller;->mCoverIntent:I

    sub-int v3, p3, p2

    .line 654
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-double p3, p1

    invoke-static {}, Lch/blinkenlights/android/vanilla/CoverView;->access$000()D

    move-result-wide v0

    div-double/2addr p3, v0

    double-to-int p1, p3

    const/16 p3, 0xc8

    if-le p1, p3, :cond_1

    const/16 v5, 0xc8

    goto :goto_0

    :cond_1
    move v5, p1

    :goto_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p2

    .line 658
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method
