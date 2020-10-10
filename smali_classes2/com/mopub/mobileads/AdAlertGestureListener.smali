.class public Lcom/mopub/mobileads/AdAlertGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AdAlertGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;
    }
.end annotation


# instance fields
.field private mAdAlertReporter:Lcom/mopub/mobileads/AdAlertReporter;

.field private final mAdReport:Lcom/mopub/common/AdReport;

.field private mCurrentThresholdInDips:F

.field private mCurrentZigZagState:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

.field private mHasCrossedLeftThreshold:Z

.field private mHasCrossedRightThreshold:Z

.field mIsClicked:Z

.field private mNumberOfZigZags:I

.field private mPivotPositionX:F

.field private mPreviousPositionX:F

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/mopub/common/AdReport;)V
    .locals 3

    .line 36
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/high16 v0, 0x42c80000    # 100.0f

    .line 20
    iput v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mCurrentThresholdInDips:F

    .line 29
    sget-object v1, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;->UNSET:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    iput-object v1, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mCurrentZigZagState:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mCurrentThresholdInDips:F

    :cond_0
    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mIsClicked:Z

    .line 41
    iput-object p1, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mView:Landroid/view/View;

    .line 42
    iput-object p2, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mAdReport:Lcom/mopub/common/AdReport;

    return-void
.end method

.method private incrementNumberOfZigZags()V
    .locals 2

    .line 123
    iget v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mNumberOfZigZags:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mNumberOfZigZags:I

    .line 124
    iget v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mNumberOfZigZags:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 125
    sget-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;->FINISHED:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mCurrentZigZagState:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    :cond_0
    return-void
.end method

.method private isMovingLeft(F)Z
    .locals 1

    .line 159
    iget v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mPreviousPositionX:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isMovingRight(F)Z
    .locals 1

    .line 155
    iget v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mPreviousPositionX:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isTouchOutOfBoundsOnYAxis(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 98
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p2, p1

    .line 99
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x42c80000    # 100.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private leftThresholdReached(F)Z
    .locals 3

    .line 142
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mHasCrossedLeftThreshold:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 144
    :cond_0
    iget v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mPivotPositionX:F

    iget v2, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mCurrentThresholdInDips:F

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    .line 145
    iput-boolean v2, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mHasCrossedRightThreshold:Z

    .line 146
    iput-boolean v1, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mHasCrossedLeftThreshold:Z

    .line 147
    invoke-direct {p0}, Lcom/mopub/mobileads/AdAlertGestureListener;->incrementNumberOfZigZags()V

    return v1

    :cond_1
    return v2
.end method

.method private rightThresholdReached(F)Z
    .locals 3

    .line 130
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mHasCrossedRightThreshold:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 132
    :cond_0
    iget v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mPivotPositionX:F

    iget v2, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mCurrentThresholdInDips:F

    add-float/2addr v0, v2

    const/4 v2, 0x0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    .line 133
    iput-boolean v2, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mHasCrossedLeftThreshold:Z

    .line 134
    iput-boolean v1, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mHasCrossedRightThreshold:Z

    return v1

    :cond_1
    return v2
.end method

.method private updateInitialState(F)V
    .locals 1

    .line 103
    iget v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mPivotPositionX:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 104
    sget-object p1, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;->GOING_RIGHT:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    iput-object p1, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mCurrentZigZagState:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    :cond_0
    return-void
.end method

.method private updateZag(F)V
    .locals 1

    .line 116
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdAlertGestureListener;->leftThresholdReached(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdAlertGestureListener;->isMovingRight(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;->GOING_RIGHT:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mCurrentZigZagState:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    .line 118
    iput p1, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mPivotPositionX:F

    :cond_0
    return-void
.end method

.method private updateZig(F)V
    .locals 1

    .line 109
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdAlertGestureListener;->rightThresholdReached(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdAlertGestureListener;->isMovingLeft(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;->GOING_LEFT:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mCurrentZigZagState:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    .line 111
    iput p1, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mPivotPositionX:F

    :cond_0
    return-void
.end method


# virtual methods
.method finishGestureDetection()V
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mCurrentZigZagState:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    sget-object v1, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;->FINISHED:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    if-ne v0, v1, :cond_0

    .line 82
    new-instance v0, Lcom/mopub/mobileads/AdAlertReporter;

    iget-object v1, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mAdReport:Lcom/mopub/common/AdReport;

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/mobileads/AdAlertReporter;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/mopub/common/AdReport;)V

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mAdAlertReporter:Lcom/mopub/mobileads/AdAlertReporter;

    .line 83
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mAdAlertReporter:Lcom/mopub/mobileads/AdAlertReporter;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdAlertReporter;->send()V

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdAlertGestureListener;->reset()V

    return-void
.end method

.method isClicked()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mIsClicked:Z

    return v0
.end method

.method onResetUserClick()V
    .locals 1

    const/4 v0, 0x0

    .line 183
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mIsClicked:Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mCurrentZigZagState:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    sget-object v1, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;->FINISHED:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    if-ne v0, v1, :cond_0

    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1

    .line 53
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/AdAlertGestureListener;->isTouchOutOfBoundsOnYAxis(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    sget-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;->FAILED:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mCurrentZigZagState:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1

    .line 58
    :cond_1
    sget-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$1;->$SwitchMap$com$mopub$mobileads$AdAlertGestureListener$ZigZagState:[I

    iget-object v1, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mCurrentZigZagState:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/AdAlertGestureListener;->updateZag(F)V

    goto :goto_0

    .line 64
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/AdAlertGestureListener;->updateZig(F)V

    goto :goto_0

    .line 60
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mPivotPositionX:F

    .line 61
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/AdAlertGestureListener;->updateInitialState(F)V

    .line 75
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mPreviousPositionX:F

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mIsClicked:Z

    .line 193
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mNumberOfZigZags:I

    .line 90
    sget-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;->UNSET:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->mCurrentZigZagState:Lcom/mopub/mobileads/AdAlertGestureListener$ZigZagState;

    return-void
.end method
