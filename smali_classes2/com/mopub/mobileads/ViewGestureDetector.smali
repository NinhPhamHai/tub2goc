.class public Lcom/mopub/mobileads/ViewGestureDetector;
.super Landroid/view/GestureDetector;
.source "ViewGestureDetector.java"


# instance fields
.field private mAdAlertGestureListener:Lcom/mopub/mobileads/AdAlertGestureListener;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/mopub/common/AdReport;)V
    .locals 1

    .line 23
    new-instance v0, Lcom/mopub/mobileads/AdAlertGestureListener;

    invoke-direct {v0, p2, p3}, Lcom/mopub/mobileads/AdAlertGestureListener;-><init>(Landroid/view/View;Lcom/mopub/common/AdReport;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/mopub/mobileads/ViewGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/mopub/mobileads/AdAlertGestureListener;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/mopub/mobileads/AdAlertGestureListener;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 29
    iput-object p3, p0, Lcom/mopub/mobileads/ViewGestureDetector;->mAdAlertGestureListener:Lcom/mopub/mobileads/AdAlertGestureListener;

    .line 30
    iput-object p2, p0, Lcom/mopub/mobileads/ViewGestureDetector;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 32
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method private isMotionEventInView(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_1

    .line 67
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_1

    cmpl-float v1, p1, v2

    if-ltz v1, :cond_1

    .line 68
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public isClicked()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/mopub/mobileads/ViewGestureDetector;->mAdAlertGestureListener:Lcom/mopub/mobileads/AdAlertGestureListener;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdAlertGestureListener;->isClicked()Z

    move-result v0

    return v0
.end method

.method public onResetUserClick()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/mopub/mobileads/ViewGestureDetector;->mAdAlertGestureListener:Lcom/mopub/mobileads/AdAlertGestureListener;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdAlertGestureListener;->onResetUserClick()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 37
    invoke-super {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/mopub/mobileads/ViewGestureDetector;->mView:Landroid/view/View;

    invoke-direct {p0, p1, v1}, Lcom/mopub/mobileads/ViewGestureDetector;->isMotionEventInView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 45
    invoke-virtual {p0}, Lcom/mopub/mobileads/ViewGestureDetector;->resetAdFlaggingGesture()V

    goto :goto_0

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/mopub/mobileads/ViewGestureDetector;->mAdAlertGestureListener:Lcom/mopub/mobileads/AdAlertGestureListener;

    invoke-virtual {p1}, Lcom/mopub/mobileads/AdAlertGestureListener;->finishGestureDetection()V

    :cond_2
    :goto_0
    return v0
.end method

.method resetAdFlaggingGesture()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/mopub/mobileads/ViewGestureDetector;->mAdAlertGestureListener:Lcom/mopub/mobileads/AdAlertGestureListener;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdAlertGestureListener;->reset()V

    return-void
.end method

.method public setClicked(Z)V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/mopub/mobileads/ViewGestureDetector;->mAdAlertGestureListener:Lcom/mopub/mobileads/AdAlertGestureListener;

    iput-boolean p1, v0, Lcom/mopub/mobileads/AdAlertGestureListener;->mIsClicked:Z

    return-void
.end method
