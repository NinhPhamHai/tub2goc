.class public Lch/blinkenlights/android/vanilla/CoverCache;
.super Ljava/lang/Object;
.source "CoverCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/blinkenlights/android/vanilla/CoverCache$BitmapDiskCache;,
        Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;
    }
.end annotation


# static fields
.field public static final SIZE_LARGE:I

.field public static final SIZE_SMALL:I

.field public static mCoverLoadMode:I

.field private static sBitmapDiskCache:Lch/blinkenlights/android/vanilla/CoverCache$BitmapDiskCache;

.field private static final sDownloadsDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42300000    # 44.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lch/blinkenlights/android/vanilla/CoverCache;->SIZE_SMALL:I

    .line 53
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43480000    # 200.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lch/blinkenlights/android/vanilla/CoverCache;->SIZE_LARGE:I

    const/4 v0, 0x0

    .line 81
    sput v0, Lch/blinkenlights/android/vanilla/CoverCache;->mCoverLoadMode:I

    .line 85
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lch/blinkenlights/android/vanilla/CoverCache;->sDownloadsDir:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    sget-object v0, Lch/blinkenlights/android/vanilla/CoverCache;->sBitmapDiskCache:Lch/blinkenlights/android/vanilla/CoverCache$BitmapDiskCache;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lch/blinkenlights/android/vanilla/CoverCache$BitmapDiskCache;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-wide/32 v1, 0x1900000

    invoke-direct {v0, p1, v1, v2}, Lch/blinkenlights/android/vanilla/CoverCache$BitmapDiskCache;-><init>(Landroid/content/Context;J)V

    sput-object v0, Lch/blinkenlights/android/vanilla/CoverCache;->sBitmapDiskCache:Lch/blinkenlights/android/vanilla/CoverCache$BitmapDiskCache;

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/io/File;
    .locals 1

    .line 44
    sget-object v0, Lch/blinkenlights/android/vanilla/CoverCache;->sDownloadsDir:Ljava/io/File;

    return-object v0
.end method

.method public static evictAll()V
    .locals 1

    .line 146
    sget-object v0, Lch/blinkenlights/android/vanilla/CoverCache;->sBitmapDiskCache:Lch/blinkenlights/android/vanilla/CoverCache$BitmapDiskCache;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/CoverCache$BitmapDiskCache;->evictAll()V

    :cond_0
    return-void
.end method

.method private getStoredCover(Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;)Landroid/graphics/Bitmap;
    .locals 1

    .line 128
    sget-object v0, Lch/blinkenlights/android/vanilla/CoverCache;->sBitmapDiskCache:Lch/blinkenlights/android/vanilla/CoverCache$BitmapDiskCache;

    invoke-virtual {v0, p1}, Lch/blinkenlights/android/vanilla/CoverCache$BitmapDiskCache;->get(Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private storeCover(Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 139
    sget-object v0, Lch/blinkenlights/android/vanilla/CoverCache;->sBitmapDiskCache:Lch/blinkenlights/android/vanilla/CoverCache$BitmapDiskCache;

    invoke-virtual {v0, p1, p2}, Lch/blinkenlights/android/vanilla/CoverCache$BitmapDiskCache;->put(Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public getCoverFromSong(Landroid/content/Context;Lch/blinkenlights/android/vanilla/Song;I)Landroid/graphics/Bitmap;
    .locals 4

    .line 108
    new-instance v0, Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;

    iget-wide v1, p2, Lch/blinkenlights/android/vanilla/Song;->albumId:J

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2, p3}, Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;-><init>(IJI)V

    .line 109
    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/CoverCache;->getStoredCover(Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 111
    sget-object v1, Lch/blinkenlights/android/vanilla/CoverCache;->sBitmapDiskCache:Lch/blinkenlights/android/vanilla/CoverCache$BitmapDiskCache;

    mul-int p3, p3, p3

    int-to-long v2, p3

    invoke-virtual {v1, p1, p2, v2, v3}, Lch/blinkenlights/android/vanilla/CoverCache$BitmapDiskCache;->createBitmap(Landroid/content/Context;Lch/blinkenlights/android/vanilla/Song;J)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 113
    invoke-direct {p0, v0, v1}, Lch/blinkenlights/android/vanilla/CoverCache;->storeCover(Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;Landroid/graphics/Bitmap;)V

    .line 114
    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/CoverCache;->getStoredCover(Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_0
    return-object v1
.end method
