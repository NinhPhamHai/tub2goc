.class public Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockTextView;
.super Landroid/widget/TextView;
.source "LockTextView.java"


# instance fields
.field private mAnimating:Z

.field private mGradientMatrix:Landroid/graphics/Matrix;

.field private mLinearGradient:Landroid/graphics/LinearGradient;

.field private mPaint:Landroid/graphics/Paint;

.field private mScale:F

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockTextView;->mViewWidth:I

    const p1, 0x3dcccccd    # 0.1f

    .line 20
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockTextView;->mScale:F

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockTextView;->mAnimating:Z

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 43
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 44
    iget-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockTextView;->mAnimating:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockTextView;->mGradientMatrix:Landroid/graphics/Matrix;

    if-eqz p1, :cond_1

    .line 45
    iget p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockTextView;->mScale:F

    const v0, 0x3dcccccd    # 0.1f

    add-float/2addr p1, v0

    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockTextView;->mScale:F

    .line 46
    iget p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockTextView;->mScale:F

    const v1, 0x3f99999a    # 1.2f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    .line 47
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockTextView;->mScale:F

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockTextView;->mGradientMatrix:Landroid/graphics/Matrix;

    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockTextView;->mScale:F

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 50
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockTextView;->mLinearGradient:Landroid/graphics/LinearGradient;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockTextView;->mGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    const-wide/16 v0, 0x64

    .line 51
    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->postInvalidateDelayed(J)V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 28
    iget p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockTextView;->mViewWidth:I

    if-nez p1, :cond_0

    .line 29
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockTextView;->mViewWidth:I

    .line 30
    iget p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockTextView;->mViewWidth:I

    if-lez p1, :cond_0

    .line 31
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockTextView;->mPaint:Landroid/graphics/Paint;

    .line 32
    new-instance p1, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockTextView;->mViewWidth:I

    int-to-float v3, p2

    const/4 v4, 0x0

    const/4 p2, 0x3

    new-array v5, p2, [I

    fill-array-data v5, :array_0

    new-array v6, p2, [F

    fill-array-data v6, :array_1

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockTextView;->mLinearGradient:Landroid/graphics/LinearGradient;

    .line 35
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockTextView;->mPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockTextView;->mLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 36
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockTextView;->mGradientMatrix:Landroid/graphics/Matrix;

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x33ffffff
        -0x1
        0x33ffffff
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method
