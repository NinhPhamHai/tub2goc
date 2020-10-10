.class Lcom/mopub/nativeads/NativeFullScreenVideoView$LoadingBackground;
.super Landroid/graphics/drawable/Drawable;
.source "NativeFullScreenVideoView.java"


# annotations
.annotation build Lcom/mopub/common/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/NativeFullScreenVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadingBackground"
.end annotation


# instance fields
.field private final mButtonRect:Landroid/graphics/RectF;

.field final mCornerRadiusPx:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 401
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/mopub/nativeads/NativeFullScreenVideoView$LoadingBackground;-><init>(Landroid/content/Context;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0

    .line 406
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 407
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 408
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 409
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 411
    iput-object p2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView$LoadingBackground;->mButtonRect:Landroid/graphics/RectF;

    .line 412
    iput-object p3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView$LoadingBackground;->mPaint:Landroid/graphics/Paint;

    .line 413
    iget-object p2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView$LoadingBackground;->mPaint:Landroid/graphics/Paint;

    const/high16 p3, -0x1000000

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 414
    iget-object p2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView$LoadingBackground;->mPaint:Landroid/graphics/Paint;

    const/16 p3, 0x80

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 415
    iget-object p2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView$LoadingBackground;->mPaint:Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 p2, 0x40a00000    # 5.0f

    .line 416
    invoke-static {p2, p1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView$LoadingBackground;->mCornerRadiusPx:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 421
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView$LoadingBackground;->mButtonRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 424
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView$LoadingBackground;->mButtonRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView$LoadingBackground;->mCornerRadiusPx:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView$LoadingBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
