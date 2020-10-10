.class public Lch/blinkenlights/android/vanilla/VanillaImageButton;
.super Landroid/widget/ImageButton;
.source "VanillaImageButton.java"


# static fields
.field private static mActiveTint:I

.field private static mNormalTint:I


# instance fields
.field private mCirclePaint:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lch/blinkenlights/android/vanilla/VanillaImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lch/blinkenlights/android/vanilla/VanillaImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/VanillaImageButton;->mContext:Landroid/content/Context;

    .line 56
    sget p1, Lch/blinkenlights/android/vanilla/R$attr;->controls_normal:I

    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/VanillaImageButton;->fetchAttrColor(I)I

    move-result p1

    sput p1, Lch/blinkenlights/android/vanilla/VanillaImageButton;->mNormalTint:I

    .line 57
    sget p1, Lch/blinkenlights/android/vanilla/R$attr;->controls_active:I

    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/VanillaImageButton;->fetchAttrColor(I)I

    move-result p1

    sput p1, Lch/blinkenlights/android/vanilla/VanillaImageButton;->mActiveTint:I

    if-eqz p2, :cond_0

    .line 60
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/VanillaImageButton;->mContext:Landroid/content/Context;

    sget-object p3, Lch/blinkenlights/android/vanilla/R$styleable;->VanillaImageButton:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 61
    sget p2, Lch/blinkenlights/android/vanilla/R$styleable;->VanillaImageButton_backgroundCircleColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 62
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/VanillaImageButton;->mCirclePaint:Landroid/graphics/Paint;

    .line 65
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/VanillaImageButton;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/VanillaImageButton;->mCirclePaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_0
    const/4 p1, -0x1

    .line 69
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/VanillaImageButton;->updateImageTint(I)V

    return-void
.end method

.method private fetchAttrColor(I)I
    .locals 4

    .line 103
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 104
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/VanillaImageButton;->mContext:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->data:I

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 105
    invoke-virtual {p1, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 106
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method

.method private updateImageTint(I)V
    .locals 2

    .line 93
    sget v0, Lch/blinkenlights/android/vanilla/VanillaImageButton;->mNormalTint:I

    .line 95
    sget v1, Lch/blinkenlights/android/vanilla/R$drawable;->repeat_active:I

    if-eq p1, v1, :cond_0

    sget v1, Lch/blinkenlights/android/vanilla/R$drawable;->repeat_current_active:I

    if-eq p1, v1, :cond_0

    sget v1, Lch/blinkenlights/android/vanilla/R$drawable;->stop_current_active:I

    if-eq p1, v1, :cond_0

    sget v1, Lch/blinkenlights/android/vanilla/R$drawable;->shuffle_active:I

    if-eq p1, v1, :cond_0

    sget v1, Lch/blinkenlights/android/vanilla/R$drawable;->shuffle_album_active:I

    if-eq p1, v1, :cond_0

    sget v1, Lch/blinkenlights/android/vanilla/R$drawable;->random_active:I

    if-ne p1, v1, :cond_1

    .line 96
    :cond_0
    sget v0, Lch/blinkenlights/android/vanilla/VanillaImageButton;->mActiveTint:I

    .line 99
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setColorFilter(I)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 80
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/VanillaImageButton;->mCirclePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 84
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    int-to-float v2, v2

    int-to-float v0, v0

    int-to-float v1, v1

    const v3, 0x3f4ccccd    # 0.8f

    mul-float v2, v2, v3

    .line 87
    iget-object v3, p0, Lch/blinkenlights/android/vanilla/VanillaImageButton;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 89
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 75
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/VanillaImageButton;->updateImageTint(I)V

    return-void
.end method
