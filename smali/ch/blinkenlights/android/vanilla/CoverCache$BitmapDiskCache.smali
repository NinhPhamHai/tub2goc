.class Lch/blinkenlights/android/vanilla/CoverCache$BitmapDiskCache;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CoverCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/vanilla/CoverCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapDiskCache"
.end annotation


# static fields
.field private static final COVER_MATCHES:[Ljava/util/regex/Pattern;

.field private static final FULL_PROJECTION:[Ljava/lang/String;

.field private static final META_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mCacheSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    .line 203
    new-array v0, v0, [Ljava/util/regex/Pattern;

    const-string v1, "(?i).+/(COVER|ALBUM)\\.(JPE?G|PNG)$"

    .line 204
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "(?i).+/ALBUMART(_\\{[-0-9A-F]+\\}_LARGE)?\\.(JPE?G|PNG)$"

    .line 205
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "(?i).+/(CD|FRONT|ARTWORK|FOLDER)\\.(JPE?G|PNG)$"

    .line 206
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "(?i).+\\.(JPE?G|PNG)$"

    .line 207
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lch/blinkenlights/android/vanilla/CoverCache$BitmapDiskCache;->COVER_MATCHES:[Ljava/util/regex/Pattern;

    const-string v0, "expires"

    const-string v1, "size"

    const-string v2, "id"

    const-string v3, "blob"

    .line 211
    filled-new-array {v2, v1, v0, v3}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lch/blinkenlights/android/vanilla/CoverCache$BitmapDiskCache;->FULL_PROJECTION:[Ljava/lang/String;

    .line 215
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lch/blinkenlights/android/vanilla/CoverCache$BitmapDiskCache;->META_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 3

    const-string v0, "covercache.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 228
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 229
    iput-wide p2, p0, Lch/blinkenlights/android/vanilla/CoverCache$BitmapDiskCache;->mCacheSize:J

    return-void
.end method

.method private static getSampleSize(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;J)I
    .locals 1

    const/4 v0, 0x0

    .line 508
    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 509
    iget p0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int p0, p0, p1

    int-to-long p0, p0

    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    long-to-float p0, p0

    long-to-float p1, p2

    div-float/2addr p0, p1

    float-to-double p0, p0

    .line 511
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-int p0, p0

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private getUnixTime()J
    .locals 4

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private getUsedSpace()J
    .locals 8

    .line 319
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SUM(size)"

    .line 320
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v1, "covercache"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    .line 322
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    .line 323
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 324
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide v1
.end method

.method private isExpired(J)Z
    .locals 3

    .line 300
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/CoverCache$BitmapDiskCache;->getUnixTime()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private trim(J)V
    .locals 16

    .line 255
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 256
    invoke-direct/range {p0 .. p0}, Lch/blinkenlights/android/vanilla/CoverCache$BitmapDiskCache;->getUsedSpace()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-string v9, "covercache"

    const-wide/16 v10, 0x0

    cmp-long v2, p1, v10

    if-nez v2, :cond_0

    const/4 v0, 0x0

    const-string v1, "1"

    .line 260
    invoke-virtual {v8, v9, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    cmp-long v2, v0, v10

    if-gez v2, :cond_3

    const/4 v12, 0x1

    .line 263
    new-array v2, v12, [Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lch/blinkenlights/android/vanilla/CoverCache$BitmapDiskCache;->getUnixTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x0

    aput-object v3, v2, v13

    const-string v3, "expires < ?"

    invoke-virtual {v8, v9, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 265
    invoke-direct/range {p0 .. p0}, Lch/blinkenlights/android/vanilla/CoverCache$BitmapDiskCache;->getUsedSpace()J

    move-result-wide v0

    sub-long v0, p1, v0

    :cond_1
    move-wide v14, v0

    cmp-long v0, v14, v10

    if-gez v0, :cond_3

    .line 269
    sget-object v2, Lch/blinkenlights/android/vanilla/CoverCache$BitmapDiskCache;->META_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "covercache"

    const-string v7, "expires ASC"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 271
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    cmp-long v1, v14, v10

    if-gez v1, :cond_2

    .line 272
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 273
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 274
    new-array v3, v12, [Ljava/lang/String;

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v13

    const-string v1, "id=?"

    invoke-virtual {v8, v9, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    int-to-long v1, v2

    add-long/2addr v14, v1

    goto :goto_0

    .line 277
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public createBitmap(Landroid/content/Context;Lch/blinkenlights/android/vanilla/Song;J)Landroid/graphics/Bitmap;
    .locals 16

    move-object/from16 v1, p2

    const-string v0, "_"

    const-string v2, "/"

    .line 397
    iget-wide v3, v1, Lch/blinkenlights/android/vanilla/Song;->id:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_b

    const/4 v3, 0x0

    .line 404
    :try_start_0
    sget v4, Lch/blinkenlights/android/vanilla/CoverCache;->mCoverLoadMode:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 405
    new-instance v4, Ljava/io/File;

    iget-object v6, v1, Lch/blinkenlights/android/vanilla/Song;->path:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    sget-object v6, Lch/blinkenlights/android/vanilla/CoverCache$BitmapDiskCache;->COVER_MATCHES:[Ljava/util/regex/Pattern;

    array-length v6, v6

    .line 413
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-static {}, Lch/blinkenlights/android/vanilla/CoverCache;->access$000()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 414
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v7, v4

    move-object v8, v3

    move v9, v6

    const/4 v6, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v6, v7, :cond_4

    aget-object v11, v4, v6

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v9, :cond_1

    .line 418
    sget-object v13, Lch/blinkenlights/android/vanilla/CoverCache$BitmapDiskCache;->COVER_MATCHES:[Ljava/util/regex/Pattern;

    aget-object v13, v13, v12

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 420
    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    move v9, v12

    goto :goto_2

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v11, v10, 0x1

    const/16 v12, 0x96

    if-gt v10, v12, :cond_4

    if-nez v9, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    move v10, v11

    goto :goto_0

    :cond_3
    move-object v8, v3

    :cond_4
    :goto_3
    if-eqz v8, :cond_5

    .line 431
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_5

    .line 433
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 434
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_4

    :cond_5
    move-object v6, v3

    move-object v7, v6

    :goto_4
    if-nez v6, :cond_6

    .line 439
    sget v4, Lch/blinkenlights/android/vanilla/CoverCache;->mCoverLoadMode:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_6

    .line 440
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v8}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/.vanilla"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 441
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lch/blinkenlights/android/vanilla/Song;->artist:Ljava/lang/String;

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lch/blinkenlights/android/vanilla/Song;->album:Ljava/lang/String;

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".jpg"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 443
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_6

    .line 445
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 446
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :cond_6
    const/4 v0, 0x1

    if-nez v6, :cond_7

    .line 450
    sget v2, Lch/blinkenlights/android/vanilla/CoverCache;->mCoverLoadMode:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_7

    .line 451
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 452
    invoke-static/range {p1 .. p2}, Lch/blinkenlights/android/vanilla/MediaUtils;->getAndroidMediaIds(Landroid/content/Context;Lch/blinkenlights/android/vanilla/Song;)[J

    move-result-object v4

    .line 453
    aget-wide v8, v4, v0

    const-wide/16 v10, -0x1

    cmp-long v4, v8, v10

    if-eqz v4, :cond_7

    .line 457
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://media/external/audio/albumart/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 458
    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 460
    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    :cond_7
    if-nez v6, :cond_9

    .line 464
    sget v2, Lch/blinkenlights/android/vanilla/CoverCache;->mCoverLoadMode:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_9

    .line 465
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 466
    iget-object v4, v1, Lch/blinkenlights/android/vanilla/Song;->path:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    move-result-object v4

    if-eqz v4, :cond_8

    .line 470
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 471
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v15, v7

    move-object v7, v6

    move-object v6, v15

    .line 473
    :cond_8
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_9
    if-eqz v6, :cond_a

    .line 477
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 478
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v4, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 479
    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move-wide/from16 v8, p3

    .line 481
    invoke-static {v7, v2, v8, v9}, Lch/blinkenlights/android/vanilla/CoverCache$BitmapDiskCache;->getSampleSize(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;J)I

    move-result v0

    .line 483
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 484
    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 485
    invoke-static {v6, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 486
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 487
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 492
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading coverart for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " failed with exception "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VanillaMusic"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-object v3

    .line 398
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "song id is < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lch/blinkenlights/android/vanilla/Song;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public evictAll()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 288
    invoke-direct {p0, v0, v1}, Lch/blinkenlights/android/vanilla/CoverCache$BitmapDiskCache;->trim(J)V

    .line 290
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public get(Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;)Landroid/graphics/Bitmap;
    .locals 10

    .line 367
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const/4 v0, 0x1

    .line 369
    new-array v9, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;->hashCode()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v9, v0

    .line 370
    sget-object v2, Lch/blinkenlights/android/vanilla/CoverCache$BitmapDiskCache;->FULL_PROJECTION:[Ljava/lang/String;

    const-string p1, "id=?"

    const-string v1, "covercache"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v3, p1

    move-object v4, v9

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 372
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 373
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x3

    .line 374
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 376
    invoke-direct {p0, v2, v3}, Lch/blinkenlights/android/vanilla/CoverCache$BitmapDiskCache;->isExpired(J)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "covercache"

    .line 377
    invoke-virtual {v8, v2, p1, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 379
    :cond_0
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 380
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    move-object v1, p1

    .line 383
    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE covercache (id INTEGER, expires INTEGER, size INTEGER, blob BLOB);"

    .line 237
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX idx ON covercache (id);"

    .line 238
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method public put(Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;Landroid/graphics/Bitmap;)V
    .locals 6

    .line 336
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 339
    iget-wide v1, p0, Lch/blinkenlights/android/vanilla/CoverCache$BitmapDiskCache;->mCacheSize:J

    invoke-direct {p0, v1, v2}, Lch/blinkenlights/android/vanilla/CoverCache$BitmapDiskCache;->trim(J)V

    .line 341
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 344
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x55

    invoke-virtual {p2, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 346
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    .line 347
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/CoverCache$BitmapDiskCache;->getUnixTime()J

    move-result-wide v2

    const v4, 0xa8c00

    invoke-virtual {p2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    int-to-long v4, p2

    add-long/2addr v2, v4

    .line 349
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 350
    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v4, "id"

    invoke-virtual {p2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 351
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v2, "expires"

    invoke-virtual {p2, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 352
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "size"

    invoke-virtual {p2, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 353
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string v1, "blob"

    invoke-virtual {p2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string p1, "covercache"

    const/4 v1, 0x0

    .line 355
    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method
