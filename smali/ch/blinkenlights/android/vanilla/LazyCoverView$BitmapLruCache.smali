.class Lch/blinkenlights/android/vanilla/LazyCoverView$BitmapLruCache;
.super Landroid/util/LruCache;
.source "LazyCoverView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/vanilla/LazyCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapLruCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 224
    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected sizeOf(Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;Landroid/graphics/Bitmap;)I
    .locals 0

    .line 232
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    return p1
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 217
    check-cast p1, Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lch/blinkenlights/android/vanilla/LazyCoverView$BitmapLruCache;->sizeOf(Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method
