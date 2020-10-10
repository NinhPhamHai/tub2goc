.class public Lch/blinkenlights/android/vanilla/FastScrollGuardedListView;
.super Landroid/widget/ListView;
.source "FastScrollGuardedListView.java"


# instance fields
.field private mEdgeProtectEndPx:F

.field private mEdgeProtectStartPx:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lch/blinkenlights/android/vanilla/FastScrollGuardedListView;->mEdgeProtectStartPx:F

    .line 44
    iput p1, p0, Lch/blinkenlights/android/vanilla/FastScrollGuardedListView;->mEdgeProtectEndPx:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lch/blinkenlights/android/vanilla/FastScrollGuardedListView;->mEdgeProtectStartPx:F

    .line 44
    iput p1, p0, Lch/blinkenlights/android/vanilla/FastScrollGuardedListView;->mEdgeProtectEndPx:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lch/blinkenlights/android/vanilla/FastScrollGuardedListView;->mEdgeProtectStartPx:F

    .line 44
    iput p1, p0, Lch/blinkenlights/android/vanilla/FastScrollGuardedListView;->mEdgeProtectEndPx:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lch/blinkenlights/android/vanilla/FastScrollGuardedListView;->mEdgeProtectStartPx:F

    .line 44
    iput p1, p0, Lch/blinkenlights/android/vanilla/FastScrollGuardedListView;->mEdgeProtectEndPx:F

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 67
    iget v0, p0, Lch/blinkenlights/android/vanilla/FastScrollGuardedListView;->mEdgeProtectStartPx:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v3, v3, v2

    sub-float/2addr v0, v3

    iput v0, p0, Lch/blinkenlights/android/vanilla/FastScrollGuardedListView;->mEdgeProtectStartPx:F

    .line 69
    :cond_0
    iget v0, p0, Lch/blinkenlights/android/vanilla/FastScrollGuardedListView;->mEdgeProtectEndPx:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 70
    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v2, v2, v1

    sub-float/2addr v0, v2

    iput v0, p0, Lch/blinkenlights/android/vanilla/FastScrollGuardedListView;->mEdgeProtectEndPx:F

    .line 72
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lch/blinkenlights/android/vanilla/FastScrollGuardedListView;->mEdgeProtectStartPx:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lch/blinkenlights/android/vanilla/FastScrollGuardedListView;->mEdgeProtectEndPx:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    iget v6, p0, Lch/blinkenlights/android/vanilla/FastScrollGuardedListView;->mEdgeProtectStartPx:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v8

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 76
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
