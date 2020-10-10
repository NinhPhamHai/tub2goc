.class public final Lch/blinkenlights/android/vanilla/CoverView;
.super Landroid/view/View;
.source "CoverView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/blinkenlights/android/vanilla/CoverView$CoverScroller;,
        Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;,
        Lch/blinkenlights/android/vanilla/CoverView$Callback;
    }
.end annotation


# static fields
.field private static sDensity:D = -1.0

.field private static sSnapVelocity:D = -1.0


# instance fields
.field private mBitmapBucket:Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;

.field private mCallback:Lch/blinkenlights/android/vanilla/CoverView$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCoverStyle:I

.field private mHandler:Landroid/os/Handler;

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mPendingQuery:Z

.field private mScrollX:I

.field private final mScroller:Lch/blinkenlights/android/vanilla/CoverView$CoverScroller;

.field private mUiHandler:Landroid/os/Handler;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 140
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 121
    iput p2, p0, Lch/blinkenlights/android/vanilla/CoverView;->mScrollX:I

    .line 125
    iput p2, p0, Lch/blinkenlights/android/vanilla/CoverView;->mCoverStyle:I

    .line 141
    sget-wide v0, Lch/blinkenlights/android/vanilla/CoverView;->sDensity:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double p2, v0, v2

    if-nez p2, :cond_0

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, p2

    sput-wide v0, Lch/blinkenlights/android/vanilla/CoverView;->sDensity:D

    .line 143
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    mul-int/lit8 p2, p2, 0x5

    int-to-double v0, p2

    sput-wide v0, Lch/blinkenlights/android/vanilla/CoverView;->sSnapVelocity:D

    .line 145
    :cond_0
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/CoverView;->mContext:Landroid/content/Context;

    .line 146
    new-instance p2, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;

    invoke-direct {p2, p0}, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;-><init>(Lch/blinkenlights/android/vanilla/CoverView;)V

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/CoverView;->mBitmapBucket:Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;

    .line 147
    new-instance p2, Lch/blinkenlights/android/vanilla/CoverView$CoverScroller;

    invoke-direct {p2, p0, p1}, Lch/blinkenlights/android/vanilla/CoverView$CoverScroller;-><init>(Lch/blinkenlights/android/vanilla/CoverView;Landroid/content/Context;)V

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/CoverView;->mScroller:Lch/blinkenlights/android/vanilla/CoverView$CoverScroller;

    return-void
.end method

.method private DEBUG(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic access$000()D
    .locals 2

    .line 50
    sget-wide v0, Lch/blinkenlights/android/vanilla/CoverView;->sDensity:D

    return-wide v0
.end method

.method private advanceScroll()V
    .locals 4

    .line 334
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/CoverView;->mScroller:Lch/blinkenlights/android/vanilla/CoverView$CoverScroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 336
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/CoverView;->mScroller:Lch/blinkenlights/android/vanilla/CoverView$CoverScroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Lch/blinkenlights/android/vanilla/CoverView;->mScrollX:I

    .line 337
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/CoverView;->mScroller:Lch/blinkenlights/android/vanilla/CoverView$CoverScroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/CoverView;->mBitmapBucket:Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->finalizeScroll()V

    .line 340
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lch/blinkenlights/android/vanilla/CoverView;->mScrollX:I

    .line 342
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/CoverView;->mScroller:Lch/blinkenlights/android/vanilla/CoverView$CoverScroller;

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/CoverView$CoverScroller;->getCoverIntent()I

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/CoverView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    const-string v0, "Scroll finished, invalidating all snapshot bitmaps!"

    .line 346
    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/CoverView;->DEBUG(Ljava/lang/String;)V

    .line 348
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method private generateBitmap(Lch/blinkenlights/android/vanilla/Song;)Landroid/graphics/Bitmap;
    .locals 6

    .line 229
    iget v1, p0, Lch/blinkenlights/android/vanilla/CoverView;->mCoverStyle:I

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/CoverView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lch/blinkenlights/android/vanilla/Song;->getCover(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 233
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/CoverView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v0, v2, v3}, Lch/blinkenlights/android/vanilla/CoverBitmap;->generateDefaultCover(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    move-object v2, v0

    .line 236
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/CoverView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lch/blinkenlights/android/vanilla/CoverBitmap;->createBitmap(Landroid/content/Context;ILandroid/graphics/Bitmap;Lch/blinkenlights/android/vanilla/Song;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private querySongsInternal()V
    .locals 7

    const-string v0, "querySongsInternal"

    .line 184
    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/CoverView;->DEBUG(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 191
    :cond_0
    iget v0, p0, Lch/blinkenlights/android/vanilla/CoverView;->mScrollX:I

    if-gez v0, :cond_1

    .line 192
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lch/blinkenlights/android/vanilla/CoverView;->mScrollX:I

    .line 195
    :cond_1
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/CoverView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 196
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/CoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object v0

    .line 198
    new-array v3, v2, [Lch/blinkenlights/android/vanilla/Song;

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Lch/blinkenlights/android/vanilla/PlaybackService;->getSong(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v5}, Lch/blinkenlights/android/vanilla/PlaybackService;->getSong(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x2

    invoke-virtual {v0, v1}, Lch/blinkenlights/android/vanilla/PlaybackService;->getSong(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object v0

    aput-object v0, v3, v4

    .line 199
    array-length v0, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 202
    aget-object v4, v3, v1

    .line 203
    iget-object v6, p0, Lch/blinkenlights/android/vanilla/CoverView;->mBitmapBucket:Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;

    invoke-virtual {v6, v1}, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->getSong(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object v6

    if-eq v6, v4, :cond_2

    .line 204
    iget-object v6, p0, Lch/blinkenlights/android/vanilla/CoverView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v2, v1, v5, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 187
    :cond_4
    :goto_1
    iput-boolean v1, p0, Lch/blinkenlights/android/vanilla/CoverView;->mPendingQuery:Z

    return-void
.end method

.method private scrollIsNotSignificant()Z
    .locals 5

    .line 487
    iget v0, p0, Lch/blinkenlights/android/vanilla/CoverView;->mLastMotionX:F

    iget v1, p0, Lch/blinkenlights/android/vanilla/CoverView;->mInitialMotionX:F

    sub-float/2addr v0, v1

    .line 488
    iget v1, p0, Lch/blinkenlights/android/vanilla/CoverView;->mLastMotionY:F

    iget v2, p0, Lch/blinkenlights/android/vanilla/CoverView;->mInitialMotionY:F

    sub-float/2addr v1, v2

    .line 489
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setSongBitmap(ILch/blinkenlights/android/vanilla/Song;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/CoverView;->mBitmapBucket:Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;

    invoke-virtual {v0, p2}, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->grepBitmap(Lch/blinkenlights/android/vanilla/Song;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 219
    invoke-direct {p0, p2}, Lch/blinkenlights/android/vanilla/CoverView;->generateBitmap(Lch/blinkenlights/android/vanilla/Song;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 221
    :cond_0
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/CoverView;->mBitmapBucket:Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;

    invoke-virtual {v1, p1, p2, v0}, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->setSongBitmap(ILch/blinkenlights/android/vanilla/Song;Landroid/graphics/Bitmap;)V

    .line 222
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 247
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 259
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 262
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/CoverView;->scrollIsNotSignificant()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 263
    invoke-virtual {p0}, Landroid/view/View;->performLongClick()Z

    goto :goto_0

    .line 260
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "MSG_UI_LONG_CLICK must be run from the UI thread"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 267
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lch/blinkenlights/android/vanilla/Song;

    invoke-direct {p0, v0, p1}, Lch/blinkenlights/android/vanilla/CoverView;->setSongBitmap(ILch/blinkenlights/android/vanilla/Song;)V

    goto :goto_0

    .line 252
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shifting to song: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/CoverView;->DEBUG(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/CoverView;->mCallback:Lch/blinkenlights/android/vanilla/CoverView$Callback;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lch/blinkenlights/android/vanilla/CoverView$Callback;->shiftCurrentSong(I)V

    goto :goto_0

    .line 249
    :cond_4
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/CoverView;->querySongsInternal()V

    :cond_5
    :goto_0
    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 310
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 311
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 313
    iget v2, p0, Lch/blinkenlights/android/vanilla/CoverView;->mScrollX:I

    .line 314
    sget-wide v3, Lch/blinkenlights/android/vanilla/CoverView;->sDensity:D

    const-wide/high16 v5, -0x3fd4000000000000L    # -14.0

    mul-double v3, v3, v5

    .line 315
    iget-object v5, p0, Lch/blinkenlights/android/vanilla/CoverView;->mScroller:Lch/blinkenlights/android/vanilla/CoverView$CoverScroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x2

    if-gt v6, v8, :cond_3

    if-eqz v5, :cond_1

    .line 319
    iget-object v9, p0, Lch/blinkenlights/android/vanilla/CoverView;->mBitmapBucket:Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;

    invoke-virtual {v9, v6}, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->getSnapshot(I)Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_2

    :cond_1
    iget-object v9, p0, Lch/blinkenlights/android/vanilla/CoverView;->mBitmapBucket:Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;

    invoke-virtual {v9, v6}, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v9

    :goto_2
    if-eqz v9, :cond_2

    add-int v10, v2, v0

    if-le v10, v7, :cond_2

    add-int v10, v7, v0

    if-ge v2, v10, :cond_2

    .line 321
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int v10, v0, v10

    div-int/2addr v10, v8

    .line 322
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sub-int v11, v1, v11

    div-int/2addr v11, v8

    int-to-double v11, v11

    add-double/2addr v11, v3

    double-to-int v8, v11

    add-int/2addr v10, v7

    sub-int/2addr v10, v2

    int-to-float v10, v10

    int-to-float v8, v8

    const/4 v11, 0x0

    .line 323
    invoke-virtual {p1, v9, v10, v8, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    add-int/2addr v7, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 327
    :cond_3
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/CoverView;->advanceScroll()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 293
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 294
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 295
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p1, v2, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    if-ne p1, v2, :cond_0

    .line 297
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    .line 300
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 301
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 278
    iget-boolean p3, p0, Lch/blinkenlights/android/vanilla/CoverView;->mPendingQuery:Z

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 279
    iput-boolean p1, p0, Lch/blinkenlights/android/vanilla/CoverView;->mPendingQuery:Z

    .line 280
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/CoverView;->querySongs()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 357
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 358
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 359
    iget v2, p0, Lch/blinkenlights/android/vanilla/CoverView;->mScrollX:I

    .line 360
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 363
    iget-object v4, p0, Lch/blinkenlights/android/vanilla/CoverView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_0

    .line 364
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lch/blinkenlights/android/vanilla/CoverView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 365
    :cond_0
    iget-object v4, p0, Lch/blinkenlights/android/vanilla/CoverView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 367
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz p1, :cond_e

    const/4 v8, 0x0

    if-eq p1, v7, :cond_5

    if-eq p1, v5, :cond_1

    goto/16 :goto_7

    .line 404
    :cond_1
    iget p1, p0, Lch/blinkenlights/android/vanilla/CoverView;->mLastMotionX:F

    sub-float/2addr p1, v0

    .line 405
    iget v4, p0, Lch/blinkenlights/android/vanilla/CoverView;->mLastMotionY:F

    sub-float/2addr v4, v1

    .line 407
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v9, v4

    if-lez v4, :cond_4

    cmpg-float v4, p1, v8

    if-gez v4, :cond_3

    .line 409
    iget-object v4, p0, Lch/blinkenlights/android/vanilla/CoverView;->mBitmapBucket:Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;

    invoke-virtual {v4, v6}, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->getSong(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    sub-int/2addr v2, v3

    if-lez v2, :cond_4

    .line 411
    iget v3, p0, Lch/blinkenlights/android/vanilla/CoverView;->mScrollX:I

    neg-int v2, v2

    float-to-int p1, p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr v3, p1

    iput v3, p0, Lch/blinkenlights/android/vanilla/CoverView;->mScrollX:I

    goto :goto_1

    :cond_3
    cmpl-float v4, p1, v8

    if-lez v4, :cond_4

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v2

    if-lez v3, :cond_4

    .line 417
    iget v2, p0, Lch/blinkenlights/android/vanilla/CoverView;->mScrollX:I

    float-to-int p1, p1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/2addr v2, p1

    iput v2, p0, Lch/blinkenlights/android/vanilla/CoverView;->mScrollX:I

    :goto_1
    const/4 v6, 0x1

    .line 423
    :cond_4
    iput v0, p0, Lch/blinkenlights/android/vanilla/CoverView;->mLastMotionX:F

    .line 424
    iput v1, p0, Lch/blinkenlights/android/vanilla/CoverView;->mLastMotionY:F

    goto/16 :goto_7

    .line 428
    :cond_5
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/CoverView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    .line 429
    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 430
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 431
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    float-to-int p1, p1

    .line 432
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/CoverView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    .line 433
    iput-object v1, p0, Lch/blinkenlights/android/vanilla/CoverView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 435
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 436
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 437
    iget v5, p0, Lch/blinkenlights/android/vanilla/CoverView;->mLastMotionX:F

    iget v9, p0, Lch/blinkenlights/android/vanilla/CoverView;->mInitialMotionX:F

    sub-float/2addr v5, v9

    .line 440
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/CoverView;->scrollIsNotSignificant()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 441
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/CoverView;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 443
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    goto :goto_3

    .line 445
    :cond_6
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    div-int/lit8 v10, v3, 0x2

    int-to-float v10, v10

    const/4 v11, -0x1

    cmpl-float v9, v9, v10

    if-lez v9, :cond_7

    cmpg-float p1, v5, v8

    if-gez p1, :cond_c

    :goto_2
    const/4 v11, 0x1

    goto :goto_4

    :cond_7
    int-to-double v8, v1

    .line 447
    sget-wide v12, Lch/blinkenlights/android/vanilla/CoverView;->sSnapVelocity:D

    cmpl-double v5, v8, v12

    if-gtz v5, :cond_8

    int-to-double v8, v2

    cmpl-double v5, v8, v12

    if-lez v5, :cond_a

    :cond_8
    if-le v2, v1, :cond_b

    if-lez p1, :cond_9

    .line 450
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/CoverView;->mCallback:Lch/blinkenlights/android/vanilla/CoverView$Callback;

    invoke-interface {p1}, Lch/blinkenlights/android/vanilla/CoverView$Callback;->downSwipe()V

    goto :goto_3

    .line 452
    :cond_9
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/CoverView;->mCallback:Lch/blinkenlights/android/vanilla/CoverView$Callback;

    invoke-interface {p1}, Lch/blinkenlights/android/vanilla/CoverView$Callback;->upSwipe()V

    :cond_a
    :goto_3
    const/4 v11, 0x0

    goto :goto_4

    :cond_b
    if-gez v0, :cond_c

    goto :goto_2

    .line 460
    :cond_c
    :goto_4
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/CoverView;->mBitmapBucket:Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;

    add-int/lit8 v1, v11, 0x1

    invoke-virtual {p1, v1}, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->getSong(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object p1

    if-nez p1, :cond_d

    goto :goto_5

    :cond_d
    move v6, v11

    :goto_5
    mul-int p1, v6, v3

    add-int/2addr v3, p1

    .line 465
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/CoverView;->mBitmapBucket:Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;

    invoke-virtual {p1, v6}, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->prepareScroll(I)V

    .line 466
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/CoverView;->mScroller:Lch/blinkenlights/android/vanilla/CoverView$CoverScroller;

    iget v1, p0, Lch/blinkenlights/android/vanilla/CoverView;->mScrollX:I

    invoke-virtual {p1, v0, v1, v3, v6}, Lch/blinkenlights/android/vanilla/CoverView$CoverScroller;->handleFling(IIII)V

    .line 469
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/CoverView;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v6, 0x1

    goto :goto_7

    .line 370
    :cond_e
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/CoverView;->mScroller:Lch/blinkenlights/android/vanilla/CoverView$CoverScroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 371
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/CoverView;->mUiHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6

    .line 376
    :cond_f
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/CoverView;->mScroller:Lch/blinkenlights/android/vanilla/CoverView$CoverScroller;

    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/CoverView$CoverScroller;->getCoverIntent()I

    move-result p1

    .line 377
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/CoverView;->mBitmapBucket:Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;

    invoke-virtual {v2}, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->abortScroll()V

    .line 378
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/CoverView;->mScroller:Lch/blinkenlights/android/vanilla/CoverView$CoverScroller;

    invoke-virtual {v2}, Lch/blinkenlights/android/vanilla/CoverView$CoverScroller;->abortAnimation()V

    if-eqz p1, :cond_10

    .line 384
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/CoverView;->mBitmapBucket:Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;

    invoke-virtual {v2, p1}, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->prepareScroll(I)V

    .line 386
    iget v2, p0, Lch/blinkenlights/android/vanilla/CoverView;->mScrollX:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    mul-int v3, v3, p1

    sub-int/2addr v2, v3

    iput v2, p0, Lch/blinkenlights/android/vanilla/CoverView;->mScrollX:I

    .line 389
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/CoverView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 390
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/CoverView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, p1, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 395
    :cond_10
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/CoverView;->mBitmapBucket:Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;

    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->finalizeScroll()V

    .line 398
    :goto_6
    iput v0, p0, Lch/blinkenlights/android/vanilla/CoverView;->mInitialMotionX:F

    iput v0, p0, Lch/blinkenlights/android/vanilla/CoverView;->mLastMotionX:F

    .line 399
    iput v1, p0, Lch/blinkenlights/android/vanilla/CoverView;->mInitialMotionY:F

    iput v1, p0, Lch/blinkenlights/android/vanilla/CoverView;->mLastMotionY:F

    :goto_7
    if-eqz v6, :cond_11

    .line 477
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_11
    return v7
.end method

.method public querySongs()V
    .locals 2

    .line 167
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/CoverView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 168
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/CoverView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public replaceSong(ILch/blinkenlights/android/vanilla/Song;)V
    .locals 0

    .line 177
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/CoverView;->querySongs()V

    return-void
.end method

.method public setup(Landroid/os/Looper;Lch/blinkenlights/android/vanilla/CoverView$Callback;I)V
    .locals 1

    .line 154
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/CoverView;->mUiHandler:Landroid/os/Handler;

    .line 155
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/CoverView;->mHandler:Landroid/os/Handler;

    .line 156
    iput-object p2, p0, Lch/blinkenlights/android/vanilla/CoverView;->mCallback:Lch/blinkenlights/android/vanilla/CoverView$Callback;

    .line 157
    iput p3, p0, Lch/blinkenlights/android/vanilla/CoverView;->mCoverStyle:I

    return-void
.end method
