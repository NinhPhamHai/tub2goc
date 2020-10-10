.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ProgressDrawable.java"


# instance fields
.field private mBackgroundColor:I

.field private mForegroundColor:I

.field private mMarqueeHandler:Landroid/os/Handler;

.field private mMarqueeLine:Landroid/graphics/Path;

.field private mMarqueeNext:J

.field private mMarqueeProgress:F

.field private mMarqueeSize:I

.field private mProgress:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mMarqueeLine:Landroid/graphics/Path;

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mMarqueeProgress:F

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mMarqueeSize:I

    const-wide/16 v0, 0x0

    .line 31
    iput-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mMarqueeNext:J

    return-void
.end method

.method private setupMarquee(II)V
    .locals 2

    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 125
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mMarqueeSize:I

    .line 127
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mMarqueeLine:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    .line 128
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mMarqueeLine:Landroid/graphics/Path;

    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mMarqueeSize:I

    neg-int v1, v0

    int-to-float v1, v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 129
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mMarqueeLine:Landroid/graphics/Path;

    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mMarqueeSize:I

    neg-int v1, v0

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    add-int/2addr p2, v0

    int-to-float p2, p2

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 130
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mMarqueeLine:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 56
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 57
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 59
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 61
    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mBackgroundColor:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v9, v0

    int-to-float v10, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v5, v9

    move v6, v10

    move-object v7, v8

    .line 62
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 64
    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mForegroundColor:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mMarqueeLine:Landroid/graphics/Path;

    if-eqz v2, :cond_4

    .line 67
    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mMarqueeSize:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->setupMarquee(II)V

    .line 69
    :cond_0
    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mMarqueeSize:I

    .line 70
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 71
    iget v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mForegroundColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v1

    .line 72
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    mul-int/lit8 v1, v1, 0x2

    .line 77
    iget v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mMarqueeProgress:F

    int-to-float v4, v1

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v6, v3, v4

    if-ltz v6, :cond_1

    .line 78
    iput v5, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mMarqueeProgress:F

    goto :goto_0

    :cond_1
    add-float/2addr v3, v5

    .line 80
    iput v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mMarqueeProgress:F

    :goto_0
    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v0, v3

    .line 85
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    neg-int v1, v1

    int-to-float v1, v1

    :goto_1
    int-to-float v5, v0

    cmpg-float v5, v1, v5

    if-gez v5, :cond_2

    .line 87
    iget-object v5, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mMarqueeLine:Landroid/graphics/Path;

    iget v6, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mMarqueeProgress:F

    add-float/2addr v6, v1

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;FF)V

    add-float/2addr v1, v4

    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 91
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mMarqueeNext:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_3

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x96

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mMarqueeNext:J

    .line 96
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mMarqueeHandler:Landroid/os/Handler;

    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/-$$Lambda$569VJZcltidQHrhj2mjZX3CexfY;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/-$$Lambda$569VJZcltidQHrhj2mjZX3CexfY;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;)V

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void

    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 101
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mProgress:F

    mul-float v0, v0, v9

    float-to-int v0, v0

    int-to-float v5, v0

    move-object v2, p1

    move v6, v10

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mMarqueeLine:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->setupMarquee(II)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setColors(II)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mBackgroundColor:I

    .line 36
    iput p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mForegroundColor:I

    return-void
.end method

.method public setMarquee(Z)V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mMarqueeLine:Landroid/graphics/Path;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 48
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    iput-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mMarqueeLine:Landroid/graphics/Path;

    if-eqz p1, :cond_3

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_3
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mMarqueeHandler:Landroid/os/Handler;

    .line 50
    iput v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mMarqueeSize:I

    const-wide/16 v0, 0x0

    .line 51
    iput-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mMarqueeNext:J

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->mProgress:F

    .line 41
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
