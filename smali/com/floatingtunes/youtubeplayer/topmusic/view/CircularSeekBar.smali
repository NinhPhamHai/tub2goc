.class public Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;
.super Landroid/view/View;
.source "CircularSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar$OnCircularSeekBarChangeListener;
    }
.end annotation


# static fields
.field protected static final DEFAULT_CIRCLE_PROGRESS_COLOR:I

.field protected static final DEFAULT_POINTER_COLOR:I

.field protected static final DEFAULT_POINTER_HALO_COLOR:I

.field protected static final DEFAULT_POINTER_HALO_COLOR_ONTOUCH:I


# instance fields
.field protected final DPTOPX_SCALE:F

.field protected final MIN_TOUCH_TARGET_DP:F

.field protected ccwDistanceFromEnd:F

.field protected ccwDistanceFromPointer:F

.field protected ccwDistanceFromStart:F

.field protected cwDistanceFromEnd:F

.field protected cwDistanceFromPointer:F

.field protected cwDistanceFromStart:F

.field protected isTouchEnabled:Z

.field protected lastCWDistanceFromStart:F

.field protected lockAtEnd:Z

.field protected lockAtStart:Z

.field protected lockEnabled:Z

.field protected mCircleColor:I

.field protected mCircleFillColor:I

.field protected mCircleFillPaint:Landroid/graphics/Paint;

.field protected mCircleHeight:F

.field protected mCirclePaint:Landroid/graphics/Paint;

.field protected mCirclePath:Landroid/graphics/Path;

.field protected mCircleProgressColor:I

.field protected mCircleProgressGlowPaint:Landroid/graphics/Paint;

.field protected mCircleProgressPaint:Landroid/graphics/Paint;

.field protected mCircleProgressPath:Landroid/graphics/Path;

.field protected mCircleRectF:Landroid/graphics/RectF;

.field protected mCircleStrokeWidth:F

.field protected mCircleWidth:F

.field protected mCircleXRadius:F

.field protected mCircleYRadius:F

.field protected mCustomRadii:Z

.field protected mEndAngle:F

.field protected mIsMovingCW:Z

.field protected mMaintainEqualCircle:Z

.field protected mMax:I

.field protected mMoveOutsideCircle:Z

.field protected mOnCircularSeekBarChangeListener:Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar$OnCircularSeekBarChangeListener;

.field protected mPointerAlpha:I

.field protected mPointerAlphaOnTouch:I

.field protected mPointerColor:I

.field protected mPointerHaloBorderPaint:Landroid/graphics/Paint;

.field protected mPointerHaloBorderWidth:F

.field protected mPointerHaloColor:I

.field protected mPointerHaloColorOnTouch:I

.field protected mPointerHaloPaint:Landroid/graphics/Paint;

.field protected mPointerHaloWidth:F

.field protected mPointerPaint:Landroid/graphics/Paint;

.field protected mPointerPosition:F

.field protected mPointerPositionXY:[F

.field protected mPointerRadius:F

.field protected mProgress:I

.field protected mProgressDegrees:F

.field protected mStartAngle:F

.field protected mTotalCircleDegrees:F

.field protected mUserIsMovingPointer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xeb

    const/16 v1, 0xff

    const/16 v2, 0x8a

    const/16 v3, 0x4a

    .line 72
    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    sput v4, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->DEFAULT_CIRCLE_PROGRESS_COLOR:I

    .line 73
    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->DEFAULT_POINTER_COLOR:I

    const/16 v0, 0x87

    .line 74
    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    sput v4, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->DEFAULT_POINTER_HALO_COLOR:I

    .line 75
    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->DEFAULT_POINTER_HALO_COLOR_ONTOUCH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 836
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->DPTOPX_SCALE:F

    const/high16 p1, 0x42400000    # 48.0f

    .line 58
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->MIN_TOUCH_TARGET_DP:F

    .line 168
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleRectF:Landroid/graphics/RectF;

    .line 173
    sget p1, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->DEFAULT_POINTER_COLOR:I

    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerColor:I

    .line 178
    sget p1, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->DEFAULT_POINTER_HALO_COLOR:I

    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloColor:I

    .line 183
    sget p1, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->DEFAULT_POINTER_HALO_COLOR_ONTOUCH:I

    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloColorOnTouch:I

    const p1, -0xbbbbbc

    .line 188
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleColor:I

    const/4 p1, 0x0

    .line 193
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleFillColor:I

    .line 198
    sget v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->DEFAULT_CIRCLE_PROGRESS_COLOR:I

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleProgressColor:I

    const/16 v0, 0x87

    .line 203
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerAlpha:I

    const/16 v0, 0x64

    .line 208
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerAlphaOnTouch:I

    const/4 v0, 0x1

    .line 263
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockEnabled:Z

    .line 269
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockAtStart:Z

    .line 275
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockAtEnd:Z

    .line 281
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mUserIsMovingPointer:Z

    const/4 v1, 0x2

    .line 354
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerPositionXY:[F

    .line 365
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->isTouchEnabled:Z

    const/4 v0, 0x0

    .line 837
    invoke-virtual {p0, v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 841
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->DPTOPX_SCALE:F

    const/high16 p1, 0x42400000    # 48.0f

    .line 58
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->MIN_TOUCH_TARGET_DP:F

    .line 168
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleRectF:Landroid/graphics/RectF;

    .line 173
    sget p1, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->DEFAULT_POINTER_COLOR:I

    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerColor:I

    .line 178
    sget p1, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->DEFAULT_POINTER_HALO_COLOR:I

    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloColor:I

    .line 183
    sget p1, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->DEFAULT_POINTER_HALO_COLOR_ONTOUCH:I

    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloColorOnTouch:I

    const p1, -0xbbbbbc

    .line 188
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleColor:I

    const/4 p1, 0x0

    .line 193
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleFillColor:I

    .line 198
    sget v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->DEFAULT_CIRCLE_PROGRESS_COLOR:I

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleProgressColor:I

    const/16 v0, 0x87

    .line 203
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerAlpha:I

    const/16 v0, 0x64

    .line 208
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerAlphaOnTouch:I

    const/4 v0, 0x1

    .line 263
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockEnabled:Z

    .line 269
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockAtStart:Z

    .line 275
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockAtEnd:Z

    .line 281
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mUserIsMovingPointer:Z

    const/4 v1, 0x2

    .line 354
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerPositionXY:[F

    .line 365
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->isTouchEnabled:Z

    .line 842
    invoke-virtual {p0, p2, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 846
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->DPTOPX_SCALE:F

    const/high16 p1, 0x42400000    # 48.0f

    .line 58
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->MIN_TOUCH_TARGET_DP:F

    .line 168
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleRectF:Landroid/graphics/RectF;

    .line 173
    sget p1, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->DEFAULT_POINTER_COLOR:I

    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerColor:I

    .line 178
    sget p1, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->DEFAULT_POINTER_HALO_COLOR:I

    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloColor:I

    .line 183
    sget p1, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->DEFAULT_POINTER_HALO_COLOR_ONTOUCH:I

    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloColorOnTouch:I

    const p1, -0xbbbbbc

    .line 188
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleColor:I

    const/4 p1, 0x0

    .line 193
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleFillColor:I

    .line 198
    sget v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->DEFAULT_CIRCLE_PROGRESS_COLOR:I

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleProgressColor:I

    const/16 v0, 0x87

    .line 203
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerAlpha:I

    const/16 v0, 0x64

    .line 208
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerAlphaOnTouch:I

    const/4 v0, 0x1

    .line 263
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockEnabled:Z

    .line 269
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockAtStart:Z

    .line 275
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockAtEnd:Z

    .line 281
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mUserIsMovingPointer:Z

    const/4 p1, 0x2

    .line 354
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerPositionXY:[F

    .line 365
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->isTouchEnabled:Z

    .line 847
    invoke-virtual {p0, p2, p3}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected calculatePointerAngle()V
    .locals 2

    .line 488
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mProgress:I

    int-to-float v0, v0

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 489
    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mTotalCircleDegrees:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mStartAngle:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerPosition:F

    .line 490
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerPosition:F

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerPosition:F

    return-void
.end method

.method protected calculatePointerXYPosition()V
    .locals 5

    .line 494
    new-instance v0, Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleProgressPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 495
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerPositionXY:[F

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    new-instance v0, Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCirclePath:Landroid/graphics/Path;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 v1, 0x0

    .line 498
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerPositionXY:[F

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    :cond_0
    return-void
.end method

.method protected calculateProgressDegrees()V
    .locals 2

    .line 479
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerPosition:F

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mStartAngle:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mProgressDegrees:F

    .line 480
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mProgressDegrees:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    :cond_0
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mProgressDegrees:F

    return-void
.end method

.method protected calculateTotalDegrees()V
    .locals 3

    .line 468
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mStartAngle:F

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mEndAngle:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    sub-float v0, v1, v0

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mTotalCircleDegrees:F

    .line 469
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mTotalCircleDegrees:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    .line 470
    iput v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mTotalCircleDegrees:F

    :cond_0
    return-void
.end method

.method public getCircleColor()I
    .locals 1

    .line 926
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleColor:I

    return v0
.end method

.method public getCircleFillColor()I
    .locals 1

    .line 1036
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleFillColor:I

    return v0
.end method

.method public getCircleProgressColor()I
    .locals 1

    .line 944
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleProgressColor:I

    return v0
.end method

.method public getIsTouchEnabled()Z
    .locals 1

    .line 1081
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->isTouchEnabled:Z

    return v0
.end method

.method public declared-synchronized getMax()I
    .locals 1

    monitor-enter p0

    .line 1065
    :try_start_0
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPointerAlpha()I
    .locals 1

    .line 1000
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerAlpha:I

    return v0
.end method

.method public getPointerAlphaOnTouch()I
    .locals 1

    .line 1018
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerAlphaOnTouch:I

    return v0
.end method

.method public getPointerColor()I
    .locals 1

    .line 962
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerColor:I

    return v0
.end method

.method public getPointerHaloColor()I
    .locals 1

    .line 980
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloColor:I

    return v0
.end method

.method public getProgress()I
    .locals 2

    .line 544
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mMax:I

    int-to-float v0, v0

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mProgressDegrees:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mTotalCircleDegrees:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method protected init(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 826
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/R$styleable;->CircularSeekBar:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 828
    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->initAttributes(Landroid/content/res/TypedArray;)V

    .line 830
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 832
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->initPaints()V

    return-void
.end method

.method protected initAttributes(Landroid/content/res/TypedArray;)V
    .locals 5

    .line 373
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->DPTOPX_SCALE:F

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float v0, v0, v1

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleXRadius:F

    .line 374
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->DPTOPX_SCALE:F

    mul-float v0, v0, v1

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleYRadius:F

    .line 375
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->DPTOPX_SCALE:F

    const/high16 v1, 0x40e00000    # 7.0f

    mul-float v0, v0, v1

    const/16 v1, 0x11

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerRadius:F

    .line 376
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->DPTOPX_SCALE:F

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float v0, v0, v1

    const/16 v1, 0x10

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloWidth:F

    .line 377
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->DPTOPX_SCALE:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloBorderWidth:F

    .line 378
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->DPTOPX_SCALE:F

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float v0, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleStrokeWidth:F

    .line 380
    sget v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->DEFAULT_POINTER_COLOR:I

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerColor:I

    .line 381
    sget v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->DEFAULT_POINTER_HALO_COLOR:I

    const/16 v1, 0xe

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloColor:I

    .line 382
    sget v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->DEFAULT_POINTER_HALO_COLOR_ONTOUCH:I

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloColorOnTouch:I

    const/4 v0, 0x0

    const v1, -0xbbbbbc

    .line 383
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleColor:I

    .line 384
    sget v1, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->DEFAULT_CIRCLE_PROGRESS_COLOR:I

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleProgressColor:I

    const/4 v1, 0x1

    .line 385
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleFillColor:I

    .line 387
    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloColor:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    iput v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerAlpha:I

    const/16 v2, 0x64

    const/16 v3, 0xb

    .line 389
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerAlphaOnTouch:I

    .line 390
    iget v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerAlphaOnTouch:I

    const/16 v4, 0xff

    if-gt v3, v4, :cond_0

    if-gez v3, :cond_1

    .line 391
    :cond_0
    iput v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerAlphaOnTouch:I

    :cond_1
    const/16 v3, 0x9

    .line 394
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mMax:I

    const/16 v2, 0x12

    .line 395
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mProgress:I

    const/16 v2, 0x14

    .line 396
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCustomRadii:Z

    const/16 v2, 0x8

    .line 397
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mMaintainEqualCircle:Z

    const/16 v2, 0xa

    .line 398
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mMoveOutsideCircle:Z

    const/4 v0, 0x7

    .line 399
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockEnabled:Z

    const/16 v0, 0x13

    const/high16 v1, 0x43870000    # 270.0f

    .line 402
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr v0, v2

    add-float/2addr v0, v2

    rem-float/2addr v0, v2

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mStartAngle:F

    const/4 v0, 0x6

    .line 403
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    rem-float/2addr p1, v2

    add-float/2addr p1, v2

    rem-float/2addr p1, v2

    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mEndAngle:F

    .line 405
    iget p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mStartAngle:F

    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mEndAngle:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    const p1, 0x3dcccccd    # 0.1f

    sub-float/2addr v0, p1

    .line 407
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mEndAngle:F

    :cond_2
    return-void
.end method

.method protected initPaints()V
    .locals 5

    .line 415
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCirclePaint:Landroid/graphics/Paint;

    .line 416
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 417
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 418
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCirclePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 419
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCirclePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 420
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 421
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 422
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 424
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleFillPaint:Landroid/graphics/Paint;

    .line 425
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 426
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 427
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleFillPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleFillColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 428
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleFillPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 430
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleProgressPaint:Landroid/graphics/Paint;

    .line 431
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 432
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 433
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleProgressPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleProgressColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 434
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleProgressPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 435
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleProgressPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 436
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleProgressPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 437
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleProgressPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 439
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleProgressGlowPaint:Landroid/graphics/Paint;

    .line 440
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleProgressGlowPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 441
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleProgressGlowPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BlurMaskFilter;

    iget v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->DPTOPX_SCALE:F

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float v3, v3, v4

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 443
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerPaint:Landroid/graphics/Paint;

    .line 444
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 445
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 446
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 447
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 448
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerRadius:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 450
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloPaint:Landroid/graphics/Paint;

    .line 451
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 452
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 453
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 454
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerRadius:F

    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloWidth:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 456
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloBorderPaint:Landroid/graphics/Paint;

    .line 457
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloBorderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 458
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloBorderWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 459
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method protected initPaths()V
    .locals 4

    .line 506
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCirclePath:Landroid/graphics/Path;

    .line 507
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCirclePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mStartAngle:F

    iget v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mTotalCircleDegrees:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 509
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleProgressPath:Landroid/graphics/Path;

    .line 510
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleProgressPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mStartAngle:F

    iget v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mProgressDegrees:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    return-void
.end method

.method protected initRects()V
    .locals 5

    .line 517
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleWidth:F

    neg-float v2, v1

    iget v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleHeight:F

    neg-float v4, v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 522
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 524
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 526
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCirclePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 527
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleProgressPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleProgressGlowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 528
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleProgressPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 530
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCirclePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 532
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerPositionXY:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    iget v4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerRadius:F

    iget v5, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloWidth:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 533
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerPositionXY:[F

    aget v2, v0, v1

    aget v0, v0, v3

    iget v4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerRadius:F

    iget-object v5, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 534
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mUserIsMovingPointer:Z

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerPositionXY:[F

    aget v1, v0, v1

    aget v0, v0, v3

    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerRadius:F

    iget v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloWidth:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloBorderWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 585
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result p2

    .line 586
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result p1

    .line 587
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mMaintainEqualCircle:Z

    if-eqz v0, :cond_0

    .line 588
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 589
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    .line 591
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_0
    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    .line 595
    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleStrokeWidth:F

    sub-float/2addr p2, v1

    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerRadius:F

    sub-float/2addr p2, v2

    iget v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloBorderWidth:F

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float v5, v3, v4

    sub-float/2addr p2, v5

    iput p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleHeight:F

    int-to-float p1, p1

    div-float/2addr p1, v0

    sub-float/2addr p1, v1

    sub-float/2addr p1, v2

    mul-float p2, v3, v4

    sub-float/2addr p1, p2

    .line 596
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleWidth:F

    .line 599
    iget-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCustomRadii:Z

    if-eqz p1, :cond_2

    .line 601
    iget p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleYRadius:F

    sub-float p2, p1, v1

    sub-float/2addr p2, v2

    sub-float/2addr p2, v3

    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleHeight:F

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    sub-float/2addr p1, v1

    sub-float/2addr p1, v2

    mul-float v3, v3, v4

    sub-float/2addr p1, v3

    .line 602
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleHeight:F

    .line 605
    :cond_1
    iget p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleXRadius:F

    iget p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleStrokeWidth:F

    sub-float v0, p1, p2

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerRadius:F

    sub-float/2addr v0, v1

    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloBorderWidth:F

    sub-float/2addr v0, v2

    iget v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleWidth:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    sub-float/2addr p1, p2

    sub-float/2addr p1, v1

    mul-float v2, v2, v4

    sub-float/2addr p1, v2

    .line 606
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleWidth:F

    .line 610
    :cond_2
    iget-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mMaintainEqualCircle:Z

    if-eqz p1, :cond_3

    .line 611
    iget p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleHeight:F

    iget p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleWidth:F

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 612
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleHeight:F

    .line 613
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleWidth:F

    .line 616
    :cond_3
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->recalculateAll()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 873
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "PARENT"

    .line 875
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 876
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "MAX"

    .line 878
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mMax:I

    const-string v0, "PROGRESS"

    .line 879
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mProgress:I

    const-string v0, "mCircleColor"

    .line 880
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleColor:I

    const-string v0, "mCircleProgressColor"

    .line 881
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleProgressColor:I

    const-string v0, "mPointerColor"

    .line 882
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerColor:I

    const-string v0, "mPointerHaloColor"

    .line 883
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloColor:I

    const-string v0, "mPointerHaloColorOnTouch"

    .line 884
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloColorOnTouch:I

    const-string v0, "mPointerAlpha"

    .line 885
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerAlpha:I

    const-string v0, "mPointerAlphaOnTouch"

    .line 886
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerAlphaOnTouch:I

    const-string v0, "lockEnabled"

    .line 887
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockEnabled:Z

    const-string v0, "isTouchEnabled"

    .line 888
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->isTouchEnabled:Z

    .line 890
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->initPaints()V

    .line 892
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->recalculateAll()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 852
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 854
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "PARENT"

    .line 855
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 856
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mMax:I

    const-string v2, "MAX"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 857
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mProgress:I

    const-string v2, "PROGRESS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 858
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleColor:I

    const-string v2, "mCircleColor"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 859
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleProgressColor:I

    const-string v2, "mCircleProgressColor"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 860
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerColor:I

    const-string v2, "mPointerColor"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 861
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloColor:I

    const-string v2, "mPointerHaloColor"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 862
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloColorOnTouch:I

    const-string v2, "mPointerHaloColorOnTouch"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 863
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerAlpha:I

    const-string v2, "mPointerAlpha"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 864
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerAlphaOnTouch:I

    const-string v2, "mPointerAlphaOnTouch"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 865
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockEnabled:Z

    const-string v2, "lockEnabled"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 866
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->isTouchEnabled:Z

    const-string v2, "isTouchEnabled"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    .line 637
    iget-boolean v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->isTouchEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 642
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v1, v3

    .line 643
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/2addr v5, v4

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 646
    iget-object v5, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    sub-float/2addr v5, v1

    .line 647
    iget-object v6, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleRectF:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    sub-float/2addr v6, v3

    float-to-double v7, v5

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 650
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    float-to-double v5, v6

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    const/high16 v6, 0x42400000    # 48.0f

    .line 652
    iget v7, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->DPTOPX_SCALE:F

    mul-float v7, v7, v6

    .line 655
    iget v6, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleStrokeWidth:F

    const/high16 v8, 0x40000000    # 2.0f

    cmpg-float v9, v6, v7

    if-gez v9, :cond_1

    div-float v6, v7, v8

    goto :goto_0

    :cond_1
    div-float/2addr v6, v8

    .line 661
    :goto_0
    iget v9, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleHeight:F

    iget v10, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleWidth:F

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    add-float/2addr v9, v6

    .line 662
    iget v10, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleHeight:F

    iget v11, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleWidth:F

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    sub-float/2addr v10, v6

    .line 664
    iget v6, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerRadius:F

    div-float/2addr v7, v8

    cmpg-float v6, v6, v7

    float-to-double v6, v3

    float-to-double v11, v1

    .line 672
    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v11

    const-wide v13, 0x4066800000000000L    # 180.0

    mul-double v6, v6, v13

    const-wide v13, 0x4076800000000000L    # 360.0

    rem-double/2addr v6, v13

    double-to-float v1, v6

    const/4 v3, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    cmpg-float v7, v1, v3

    if-gez v7, :cond_2

    add-float/2addr v1, v6

    .line 675
    :cond_2
    iget v7, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mStartAngle:F

    sub-float v7, v1, v7

    iput v7, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->cwDistanceFromStart:F

    .line 676
    iget v7, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->cwDistanceFromStart:F

    cmpg-float v8, v7, v3

    if-gez v8, :cond_3

    add-float/2addr v7, v6

    :cond_3
    iput v7, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->cwDistanceFromStart:F

    .line 677
    iget v7, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->cwDistanceFromStart:F

    sub-float v7, v6, v7

    iput v7, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->ccwDistanceFromStart:F

    .line 679
    iget v7, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mEndAngle:F

    sub-float v7, v1, v7

    iput v7, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->cwDistanceFromEnd:F

    .line 680
    iget v7, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->cwDistanceFromEnd:F

    cmpg-float v8, v7, v3

    if-gez v8, :cond_4

    add-float/2addr v7, v6

    :cond_4
    iput v7, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->cwDistanceFromEnd:F

    .line 681
    iget v7, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->cwDistanceFromEnd:F

    sub-float v7, v6, v7

    iput v7, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->ccwDistanceFromEnd:F

    .line 683
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/high16 v8, 0x43340000    # 180.0f

    const/4 v13, 0x1

    if-eqz v7, :cond_17

    if-eq v7, v13, :cond_15

    if-eq v7, v4, :cond_6

    const/4 v1, 0x3

    if-eq v7, v1, :cond_5

    goto/16 :goto_3

    .line 811
    :cond_5
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerAlpha:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 812
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 813
    iput-boolean v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mUserIsMovingPointer:Z

    .line 814
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_3

    .line 729
    :cond_6
    iget-boolean v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mUserIsMovingPointer:Z

    if-eqz v3, :cond_14

    .line 730
    iget v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lastCWDistanceFromStart:F

    iget v6, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->cwDistanceFromStart:F

    cmpg-float v7, v3, v6

    if-gez v7, :cond_8

    sub-float/2addr v6, v3

    cmpl-float v3, v6, v8

    if-lez v3, :cond_7

    .line 731
    iget-boolean v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mIsMovingCW:Z

    if-nez v3, :cond_7

    .line 732
    iput-boolean v13, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockAtStart:Z

    .line 733
    iput-boolean v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockAtEnd:Z

    goto :goto_1

    .line 735
    :cond_7
    iput-boolean v13, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mIsMovingCW:Z

    goto :goto_1

    :cond_8
    sub-float/2addr v3, v6

    cmpl-float v3, v3, v8

    if-lez v3, :cond_9

    .line 738
    iget-boolean v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mIsMovingCW:Z

    if-eqz v3, :cond_9

    .line 739
    iput-boolean v13, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockAtEnd:Z

    .line 740
    iput-boolean v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockAtStart:Z

    goto :goto_1

    .line 742
    :cond_9
    iput-boolean v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mIsMovingCW:Z

    .line 746
    :goto_1
    iget-boolean v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockAtStart:Z

    if-eqz v3, :cond_a

    iget-boolean v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mIsMovingCW:Z

    if-eqz v3, :cond_a

    .line 747
    iput-boolean v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockAtStart:Z

    .line 749
    :cond_a
    iget-boolean v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockAtEnd:Z

    if-eqz v3, :cond_b

    iget-boolean v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mIsMovingCW:Z

    if-nez v3, :cond_b

    .line 750
    iput-boolean v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockAtEnd:Z

    .line 752
    :cond_b
    iget-boolean v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockAtStart:Z

    const/high16 v6, 0x42b40000    # 90.0f

    if-eqz v3, :cond_c

    iget-boolean v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mIsMovingCW:Z

    if-nez v3, :cond_c

    iget v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->ccwDistanceFromStart:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_c

    .line 753
    iput-boolean v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockAtStart:Z

    .line 755
    :cond_c
    iget-boolean v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockAtEnd:Z

    if-eqz v3, :cond_d

    iget-boolean v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mIsMovingCW:Z

    if-eqz v3, :cond_d

    iget v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->cwDistanceFromEnd:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_d

    .line 756
    iput-boolean v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockAtEnd:Z

    .line 759
    :cond_d
    iget-boolean v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockAtEnd:Z

    if-nez v3, :cond_e

    iget v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->cwDistanceFromStart:F

    iget v6, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mTotalCircleDegrees:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_e

    iget-boolean v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mIsMovingCW:Z

    if-eqz v3, :cond_e

    iget v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lastCWDistanceFromStart:F

    cmpg-float v3, v3, v6

    if-gez v3, :cond_e

    .line 760
    iput-boolean v13, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockAtEnd:Z

    .line 763
    :cond_e
    iget-boolean v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockAtStart:Z

    if-eqz v3, :cond_f

    iget-boolean v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockEnabled:Z

    if-eqz v3, :cond_f

    .line 765
    iput v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mProgress:I

    .line 766
    invoke-virtual/range {p0 .. p0}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->recalculateAll()V

    .line 767
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 768
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mOnCircularSeekBarChangeListener:Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar$OnCircularSeekBarChangeListener;

    if-eqz v1, :cond_13

    .line 769
    iget v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mProgress:I

    invoke-interface {v1, v0, v2, v13}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar$OnCircularSeekBarChangeListener;->onProgressChanged(Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;IZ)V

    goto :goto_2

    .line 772
    :cond_f
    iget-boolean v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockAtEnd:Z

    if-eqz v2, :cond_10

    iget-boolean v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockEnabled:Z

    if-eqz v2, :cond_10

    .line 773
    iget v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mMax:I

    iput v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mProgress:I

    .line 774
    invoke-virtual/range {p0 .. p0}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->recalculateAll()V

    .line 775
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 776
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mOnCircularSeekBarChangeListener:Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar$OnCircularSeekBarChangeListener;

    if-eqz v1, :cond_13

    .line 777
    iget v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mProgress:I

    invoke-interface {v1, v0, v2, v13}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar$OnCircularSeekBarChangeListener;->onProgressChanged(Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;IZ)V

    goto :goto_2

    .line 779
    :cond_10
    iget-boolean v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mMoveOutsideCircle:Z

    if-nez v2, :cond_11

    cmpg-float v2, v5, v9

    if-gtz v2, :cond_1e

    .line 780
    :cond_11
    iget v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->cwDistanceFromStart:F

    iget v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mTotalCircleDegrees:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_12

    .line 781
    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->setProgressBasedOnAngle(F)V

    .line 783
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->recalculateAll()V

    .line 784
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 785
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mOnCircularSeekBarChangeListener:Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar$OnCircularSeekBarChangeListener;

    if-eqz v1, :cond_13

    .line 786
    iget v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mProgress:I

    invoke-interface {v1, v0, v2, v13}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar$OnCircularSeekBarChangeListener;->onProgressChanged(Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;IZ)V

    .line 792
    :cond_13
    :goto_2
    iget v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->cwDistanceFromStart:F

    iput v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lastCWDistanceFromStart:F

    goto/16 :goto_3

    :cond_14
    return v2

    .line 798
    :cond_15
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerAlpha:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 799
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 800
    iget-boolean v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mUserIsMovingPointer:Z

    if-eqz v1, :cond_16

    .line 801
    iput-boolean v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mUserIsMovingPointer:Z

    .line 802
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 803
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mOnCircularSeekBarChangeListener:Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar$OnCircularSeekBarChangeListener;

    if-eqz v1, :cond_1e

    .line 804
    invoke-interface {v1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar$OnCircularSeekBarChangeListener;->onStopTrackingTouch(Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;)V

    goto/16 :goto_3

    :cond_16
    return v2

    .line 686
    :cond_17
    iget v7, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerRadius:F

    mul-float v7, v7, v8

    float-to-double v7, v7

    iget v14, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleHeight:F

    iget v15, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleWidth:F

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    float-to-double v14, v14

    mul-double v14, v14, v11

    div-double/2addr v7, v14

    double-to-float v7, v7

    .line 687
    iget v8, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerPosition:F

    sub-float v8, v1, v8

    iput v8, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->cwDistanceFromPointer:F

    .line 688
    iget v8, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->cwDistanceFromPointer:F

    cmpg-float v3, v8, v3

    if-gez v3, :cond_18

    add-float/2addr v8, v6

    :cond_18
    iput v8, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->cwDistanceFromPointer:F

    .line 689
    iget v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->cwDistanceFromPointer:F

    sub-float/2addr v6, v3

    iput v6, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->ccwDistanceFromPointer:F

    cmpl-float v6, v5, v10

    if-ltz v6, :cond_1b

    cmpg-float v8, v5, v9

    if-gtz v8, :cond_1b

    cmpg-float v3, v3, v7

    if-lez v3, :cond_19

    .line 691
    iget v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->ccwDistanceFromPointer:F

    cmpg-float v3, v3, v7

    if-gtz v3, :cond_1b

    .line 692
    :cond_19
    iget v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerPosition:F

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->setProgressBasedOnAngle(F)V

    .line 693
    iget v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->cwDistanceFromStart:F

    iput v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lastCWDistanceFromStart:F

    .line 694
    iput-boolean v13, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mIsMovingCW:Z

    .line 695
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerAlphaOnTouch:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 696
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloColorOnTouch:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 697
    invoke-virtual/range {p0 .. p0}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->recalculateAll()V

    .line 698
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 699
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mOnCircularSeekBarChangeListener:Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar$OnCircularSeekBarChangeListener;

    if-eqz v1, :cond_1a

    .line 700
    invoke-interface {v1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar$OnCircularSeekBarChangeListener;->onStartTrackingTouch(Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;)V

    .line 702
    :cond_1a
    iput-boolean v13, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mUserIsMovingPointer:Z

    .line 703
    iput-boolean v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockAtEnd:Z

    .line 704
    iput-boolean v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockAtStart:Z

    goto :goto_3

    .line 705
    :cond_1b
    iget v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->cwDistanceFromStart:F

    iget v7, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mTotalCircleDegrees:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_1c

    .line 706
    iput-boolean v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mUserIsMovingPointer:Z

    return v2

    :cond_1c
    if-ltz v6, :cond_20

    cmpg-float v3, v5, v9

    if-gtz v3, :cond_20

    .line 709
    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->setProgressBasedOnAngle(F)V

    .line 710
    iget v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->cwDistanceFromStart:F

    iput v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lastCWDistanceFromStart:F

    .line 711
    iput-boolean v13, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mIsMovingCW:Z

    .line 712
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerAlphaOnTouch:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 713
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloColorOnTouch:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 714
    invoke-virtual/range {p0 .. p0}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->recalculateAll()V

    .line 715
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 716
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mOnCircularSeekBarChangeListener:Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar$OnCircularSeekBarChangeListener;

    if-eqz v1, :cond_1d

    .line 717
    invoke-interface {v1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar$OnCircularSeekBarChangeListener;->onStartTrackingTouch(Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;)V

    .line 718
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mOnCircularSeekBarChangeListener:Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar$OnCircularSeekBarChangeListener;

    iget v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mProgress:I

    invoke-interface {v1, v0, v3, v13}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar$OnCircularSeekBarChangeListener;->onProgressChanged(Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;IZ)V

    .line 720
    :cond_1d
    iput-boolean v13, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mUserIsMovingPointer:Z

    .line 721
    iput-boolean v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockAtEnd:Z

    .line 722
    iput-boolean v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockAtStart:Z

    .line 818
    :cond_1e
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_1f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 819
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1f
    return v13

    .line 724
    :cond_20
    iput-boolean v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mUserIsMovingPointer:Z

    return v2
.end method

.method protected recalculateAll()V
    .locals 0

    .line 572
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->calculateTotalDegrees()V

    .line 573
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->calculatePointerAngle()V

    .line 574
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->calculateProgressDegrees()V

    .line 576
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->initRects()V

    .line 578
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->initPaths()V

    .line 580
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->calculatePointerXYPosition()V

    return-void
.end method

.method public setCircleColor(I)V
    .locals 1

    .line 916
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleColor:I

    .line 917
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCirclePaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 918
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCircleFillColor(I)V
    .locals 1

    .line 1026
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleFillColor:I

    .line 1027
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleFillPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleFillColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1028
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCircleProgressColor(I)V
    .locals 1

    .line 934
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleProgressColor:I

    .line 935
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleProgressPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mCircleProgressColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 936
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setIsTouchEnabled(Z)V
    .locals 0

    .line 1073
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->isTouchEnabled:Z

    return-void
.end method

.method public setLockEnabled(Z)V
    .locals 0

    .line 632
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->lockEnabled:Z

    return-void
.end method

.method public setMax(I)V
    .locals 3

    if-lez p1, :cond_1

    .line 1047
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mProgress:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 1048
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mProgress:I

    .line 1049
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mOnCircularSeekBarChangeListener:Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar$OnCircularSeekBarChangeListener;

    if-eqz v1, :cond_0

    .line 1050
    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mProgress:I

    invoke-interface {v1, p0, v2, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar$OnCircularSeekBarChangeListener;->onProgressChanged(Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;IZ)V

    .line 1053
    :cond_0
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mMax:I

    .line 1055
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->recalculateAll()V

    .line 1056
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar$OnCircularSeekBarChangeListener;)V
    .locals 0

    .line 896
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mOnCircularSeekBarChangeListener:Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar$OnCircularSeekBarChangeListener;

    return-void
.end method

.method public setPointerAlpha(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 989
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerAlpha:I

    .line 990
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 991
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setPointerAlphaOnTouch(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 1009
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerAlphaOnTouch:I

    :cond_0
    return-void
.end method

.method public setPointerColor(I)V
    .locals 1

    .line 952
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerColor:I

    .line 953
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 954
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPointerHaloColor(I)V
    .locals 1

    .line 970
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloColor:I

    .line 971
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerHaloColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 972
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgress(I)V
    .locals 2

    .line 554
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mProgress:I

    if-eq v0, p1, :cond_1

    .line 555
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mProgress:I

    .line 556
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mOnCircularSeekBarChangeListener:Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar$OnCircularSeekBarChangeListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 557
    invoke-interface {v0, p0, p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar$OnCircularSeekBarChangeListener;->onProgressChanged(Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;IZ)V

    .line 560
    :cond_0
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->recalculateAll()V

    .line 561
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method protected setProgressBasedOnAngle(F)V
    .locals 1

    .line 566
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mPointerPosition:F

    .line 567
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->calculateProgressDegrees()V

    .line 568
    iget p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mMax:I

    int-to-float p1, p1

    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mProgressDegrees:F

    mul-float p1, p1, v0

    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mTotalCircleDegrees:F

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;->mProgress:I

    return-void
.end method
