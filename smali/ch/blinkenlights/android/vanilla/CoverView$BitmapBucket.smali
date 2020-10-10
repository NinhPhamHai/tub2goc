.class Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;
.super Ljava/lang/Object;
.source "CoverView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/vanilla/CoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapBucket"
.end annotation


# instance fields
.field private final mCacheBitmaps:[Landroid/graphics/Bitmap;

.field private final mCacheSongs:[Lch/blinkenlights/android/vanilla/Song;

.field private final mSnapshotBitmaps:[Landroid/graphics/Bitmap;

.field private final mSnapshotSongs:[Lch/blinkenlights/android/vanilla/Song;

.field final synthetic this$0:Lch/blinkenlights/android/vanilla/CoverView;


# direct methods
.method public constructor <init>(Lch/blinkenlights/android/vanilla/CoverView;)V
    .locals 1

    .line 523
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->this$0:Lch/blinkenlights/android/vanilla/CoverView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    .line 504
    new-array v0, p1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->mCacheBitmaps:[Landroid/graphics/Bitmap;

    .line 508
    new-array v0, p1, [Lch/blinkenlights/android/vanilla/Song;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->mCacheSongs:[Lch/blinkenlights/android/vanilla/Song;

    .line 513
    new-array v0, p1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->mSnapshotBitmaps:[Landroid/graphics/Bitmap;

    .line 519
    new-array p1, p1, [Lch/blinkenlights/android/vanilla/Song;

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->mSnapshotSongs:[Lch/blinkenlights/android/vanilla/Song;

    return-void
.end method


# virtual methods
.method public abortScroll()V
    .locals 4

    .line 593
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->mSnapshotBitmaps:[Landroid/graphics/Bitmap;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->mCacheBitmaps:[Landroid/graphics/Bitmap;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 594
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->mSnapshotSongs:[Lch/blinkenlights/android/vanilla/Song;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->mCacheSongs:[Lch/blinkenlights/android/vanilla/Song;

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 595
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->finalizeScroll()V

    return-void
.end method

.method public finalizeScroll()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 600
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->mSnapshotBitmaps:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 601
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->mSnapshotSongs:[Lch/blinkenlights/android/vanilla/Song;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBitmap(I)Landroid/graphics/Bitmap;
    .locals 1

    .line 531
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->mCacheBitmaps:[Landroid/graphics/Bitmap;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getSnapshot(I)Landroid/graphics/Bitmap;
    .locals 1

    .line 535
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->mSnapshotBitmaps:[Landroid/graphics/Bitmap;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getSong(I)Lch/blinkenlights/android/vanilla/Song;
    .locals 1

    .line 527
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->mCacheSongs:[Lch/blinkenlights/android/vanilla/Song;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public grepBitmap(Lch/blinkenlights/android/vanilla/Song;)Landroid/graphics/Bitmap;
    .locals 3

    .line 544
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->mCacheSongs:[Lch/blinkenlights/android/vanilla/Song;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    if-eqz p1, :cond_0

    .line 546
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->mCacheSongs:[Lch/blinkenlights/android/vanilla/Song;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lch/blinkenlights/android/vanilla/Song;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 547
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->mCacheBitmaps:[Landroid/graphics/Bitmap;

    aget-object p1, p1, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public prepareScroll(I)V
    .locals 8

    .line 564
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->mCacheBitmaps:[Landroid/graphics/Bitmap;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->mSnapshotBitmaps:[Landroid/graphics/Bitmap;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 565
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->mCacheSongs:[Lch/blinkenlights/android/vanilla/Song;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->mSnapshotSongs:[Lch/blinkenlights/android/vanilla/Song;

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-lez p1, :cond_0

    .line 572
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->mCacheBitmaps:[Landroid/graphics/Bitmap;

    aget-object v6, p1, v5

    aput-object v6, p1, v3

    .line 573
    iget-object v6, p0, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->mCacheSongs:[Lch/blinkenlights/android/vanilla/Song;

    aget-object v7, v6, v5

    aput-object v7, v6, v3

    .line 574
    aget-object v3, p1, v4

    aput-object v3, p1, v5

    .line 575
    aget-object v3, v6, v4

    aput-object v3, v6, v5

    .line 576
    aput-object v2, p1, v4

    .line 577
    new-instance p1, Lch/blinkenlights/android/vanilla/Song;

    invoke-direct {p1, v0, v1}, Lch/blinkenlights/android/vanilla/Song;-><init>(J)V

    aput-object p1, v6, v4

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    .line 579
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->mCacheBitmaps:[Landroid/graphics/Bitmap;

    aget-object v6, p1, v5

    aput-object v6, p1, v4

    .line 580
    iget-object v6, p0, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->mCacheSongs:[Lch/blinkenlights/android/vanilla/Song;

    aget-object v7, v6, v5

    aput-object v7, v6, v4

    .line 581
    aget-object v4, p1, v3

    aput-object v4, p1, v5

    .line 582
    aget-object v4, v6, v3

    aput-object v4, v6, v5

    .line 583
    aput-object v2, p1, v3

    .line 584
    new-instance p1, Lch/blinkenlights/android/vanilla/Song;

    invoke-direct {p1, v0, v1}, Lch/blinkenlights/android/vanilla/Song;-><init>(J)V

    aput-object p1, v6, v3

    :cond_1
    :goto_0
    return-void
.end method

.method public setSongBitmap(ILch/blinkenlights/android/vanilla/Song;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 539
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->mCacheSongs:[Lch/blinkenlights/android/vanilla/Song;

    aput-object p2, v0, p1

    .line 540
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/CoverView$BitmapBucket;->mCacheBitmaps:[Landroid/graphics/Bitmap;

    aput-object p3, p2, p1

    return-void
.end method
