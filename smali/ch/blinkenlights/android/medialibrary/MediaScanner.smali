.class public Lch/blinkenlights/android/medialibrary/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;
    }
.end annotation


# static fields
.field private static final sDotfilePattern:Ljava/util/regex/Pattern;

.field private static final sIgnoredFilenames:Ljava/util/regex/Pattern;


# instance fields
.field private mBackend:Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsInitialScan:Z

.field private mLastNotification:I

.field private mNotificationHelper:Lch/blinkenlights/android/vanilla/NotificationHelper;

.field private mPendingCleanup:Z

.field private mScanPlan:Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    const-string v1, "^([^\\.]+|.+\\.(jpe?g|gif|png|bmp|webm|txt|pdf|avi|mp4|mkv|zip|tgz|xml|tmp|bin))$"

    .line 649
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lch/blinkenlights/android/medialibrary/MediaScanner;->sIgnoredFilenames:Ljava/util/regex/Pattern;

    const-string v1, "^\\..*$"

    .line 684
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lch/blinkenlights/android/medialibrary/MediaScanner;->sDotfilePattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;)V
    .locals 3

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mBackend:Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    .line 100
    new-instance p2, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;

    invoke-direct {p2, p0}, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;-><init>(Lch/blinkenlights/android/medialibrary/MediaScanner;)V

    iput-object p2, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mScanPlan:Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;

    .line 101
    new-instance p2, Landroid/os/HandlerThread;

    const-string v0, "MediaScannerThread"

    const/16 v1, 0x13

    invoke-direct {p2, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 102
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mHandler:Landroid/os/Handler;

    const-string p2, "power"

    .line 104
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    const/4 v0, 0x1

    const-string v1, "VanillaMusicIndexerLock"

    invoke-virtual {p2, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 105
    new-instance p2, Lch/blinkenlights/android/vanilla/NotificationHelper;

    sget v1, Lch/blinkenlights/android/vanilla/R$string;->media_stats_progress:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Scanner"

    invoke-direct {p2, p1, v2, v1}, Lch/blinkenlights/android/vanilla/NotificationHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mNotificationHelper:Lch/blinkenlights/android/vanilla/NotificationHelper;

    .line 108
    new-instance p2, Lch/blinkenlights/android/medialibrary/MediaScanner$1;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1}, Lch/blinkenlights/android/medialibrary/MediaScanner$1;-><init>(Lch/blinkenlights/android/medialibrary/MediaScanner;Landroid/os/Handler;)V

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private guessQuickScanPlan()V
    .locals 8

    .line 337
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->getPreferences(Landroid/content/Context;)Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;

    move-result-object v0

    iget v0, v0, Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;->_nativeLibraryCount:I

    const-string v4, "is_music!= 0"

    const-string v1, "COUNT(*)"

    .line 339
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    .line 342
    :try_start_0
    iget-object v1, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rpcObserveRemoval query failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VanillaMusic"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v7

    :goto_0
    if-nez v1, :cond_0

    return-void

    .line 350
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    .line 351
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 352
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 355
    iget-object v1, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->getPreferences(Landroid/content/Context;)Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;

    move-result-object v1

    .line 356
    iput v3, v1, Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;->_nativeLibraryCount:I

    .line 357
    iget-object v4, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->setPreferences(Landroid/content/Context;Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;)V

    if-ge v3, v0, :cond_1

    .line 361
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mScanPlan:Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, v7}, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;->addNextStep(ILjava/lang/Object;)Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;

    goto :goto_1

    .line 364
    :cond_1
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mScanPlan:Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, v7}, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;->addNextStep(ILjava/lang/Object;)Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;

    .line 367
    :goto_1
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v2, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private isBlacklisted(Ljava/io/File;)Z
    .locals 7

    .line 657
    sget-object v0, Lch/blinkenlights/android/medialibrary/MediaScanner;->sIgnoredFilenames:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 663
    :cond_0
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->getPreferences(Landroid/content/Context;)Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;

    move-result-object v0

    iget-object v0, v0, Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;->mediaFolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, -0x1

    const/4 v3, -0x1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 664
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_1

    .line 665
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 666
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0

    .line 670
    :cond_2
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->getPreferences(Landroid/content/Context;)Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;

    move-result-object v0

    iget-object v0, v0, Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;->blacklistedFolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 671
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v2, :cond_3

    .line 672
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 673
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1

    :cond_4
    if-ltz v3, :cond_6

    if-le v2, v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_2
    return v1
.end method

.method private isDotfile(Ljava/io/File;)Z
    .locals 1

    .line 692
    sget-object v0, Lch/blinkenlights/android/medialibrary/MediaScanner;->sDotfilePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method private static isUnset(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 458
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private rpcInspectFile(Ljava/io/File;)Z
    .locals 26

    move-object/from16 v0, p0

    .line 469
    iget-object v1, v0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->getPreferences(Landroid/content/Context;)Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;

    move-result-object v1

    .line 470
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 471
    invoke-static {v2}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->hash63(Ljava/lang/String;)J

    move-result-wide v3

    .line 473
    invoke-direct/range {p0 .. p1}, Lch/blinkenlights/android/medialibrary/MediaScanner;->isBlacklisted(Ljava/io/File;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    return v6

    .line 476
    :cond_0
    invoke-direct/range {p0 .. p1}, Lch/blinkenlights/android/medialibrary/MediaScanner;->isDotfile(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v6

    .line 479
    :cond_1
    iget-object v5, v0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mBackend:Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    const-string v7, "mtime"

    invoke-virtual {v5, v7, v3, v4}, Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;->getColumnFromSongId(Ljava/lang/String;J)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v7, v7, v9

    .line 480
    iget-object v5, v0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mBackend:Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    const-string v9, "_flags"

    invoke-virtual {v5, v9, v3, v4}, Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;->getColumnFromSongId(Ljava/lang/String;J)J

    move-result-wide v10

    .line 481
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v5, v12, v14

    if-lez v5, :cond_2

    cmp-long v5, v7, v12

    if-ltz v5, :cond_2

    const-wide/16 v12, 0x1

    and-long/2addr v12, v10

    cmp-long v5, v12, v14

    if-nez v5, :cond_2

    return v6

    :cond_2
    const-string v5, "playcount"

    cmp-long v16, v7, v14

    if-eqz v16, :cond_3

    .line 494
    iget-object v7, v0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mBackend:Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    invoke-virtual {v7, v5, v3, v4}, Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;->getColumnFromSongId(Ljava/lang/String;J)J

    move-result-wide v14

    .line 495
    iget-object v7, v0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mBackend:Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    const-string v8, "skipcount"

    invoke-virtual {v7, v8, v3, v4}, Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;->getColumnFromSongId(Ljava/lang/String;J)J

    move-result-wide v7

    .line 498
    iget-object v12, v0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mBackend:Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "_id="

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v13, "songs"

    move-wide/from16 v17, v7

    const/4 v7, 0x0

    invoke-virtual {v12, v13, v6, v7}, Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 499
    iget-object v6, v0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mBackend:Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;->cleanOrphanedEntries(Z)V

    const/4 v6, 0x1

    .line 500
    iput-boolean v6, v0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mPendingCleanup:Z

    const/4 v12, 0x1

    goto :goto_0

    :cond_3
    move-wide/from16 v17, v14

    const/4 v12, 0x0

    .line 506
    :goto_0
    new-instance v6, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;

    iget-boolean v7, v1, Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;->forceBastp:Z

    invoke-direct {v6, v2, v7}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;-><init>(Ljava/lang/String;Z)V

    .line 507
    invoke-virtual {v6}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->isMediaFile()Z

    move-result v7

    if-eqz v7, :cond_d

    const-wide/16 v7, -0x2

    and-long/2addr v7, v10

    const-wide/16 v10, -0x5

    and-long/2addr v7, v10

    const-wide/16 v10, -0x3

    and-long/2addr v7, v10

    const-string v10, "TITLE"

    .line 518
    invoke-virtual {v6, v10}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 519
    invoke-static {v10}, Lch/blinkenlights/android/medialibrary/MediaScanner;->isUnset(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 520
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    :cond_4
    const-string v11, "ALBUM"

    .line 522
    invoke-virtual {v6, v11}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 523
    invoke-static {v11}, Lch/blinkenlights/android/medialibrary/MediaScanner;->isUnset(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-wide/16 v11, 0x2

    or-long/2addr v7, v11

    const-string v11, "<No Album>"

    :cond_5
    const-string v12, "ARTIST"

    .line 528
    invoke-virtual {v6, v12}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 529
    invoke-static {v12}, Lch/blinkenlights/android/medialibrary/MediaScanner;->isUnset(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    const-wide/16 v12, 0x4

    or-long/2addr v7, v12

    const-string v12, "<No Artist>"

    :cond_6
    const-string v13, "DISC_NUMBER"

    .line 534
    invoke-virtual {v6, v13}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 535
    invoke-static {v13}, Lch/blinkenlights/android/medialibrary/MediaScanner;->isUnset(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    const-string v13, "1"

    .line 538
    :cond_7
    invoke-static {v12}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->hash63(Ljava/lang/String;)J

    move-result-wide v19

    .line 539
    invoke-static {v11}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->hash63(Ljava/lang/String;)J

    move-result-wide v21

    .line 542
    iget-boolean v1, v1, Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;->groupAlbumsByFolder:Z

    if-eqz v1, :cond_8

    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v23, v12

    const-string v12, "\n"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->hash63(Ljava/lang/String;)J

    move-result-wide v21

    goto :goto_1

    :cond_8
    move-object/from16 v23, v12

    .line 546
    :goto_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 547
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-wide/from16 v24, v3

    const-string v3, "_id"

    invoke-virtual {v1, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "title"

    .line 548
    invoke-virtual {v1, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-static {v10}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v10, "title_sort"

    invoke-virtual {v1, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v10, "album_id"

    invoke-virtual {v1, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "DURATION"

    .line 551
    invoke-virtual {v6, v4}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v10, "duration"

    invoke-virtual {v1, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "TRACK_NUM"

    .line 552
    invoke-virtual {v6, v4}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v10, "song_num"

    invoke-virtual {v1, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "disc_num"

    .line 553
    invoke-virtual {v1, v4, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "YEAR"

    .line 554
    invoke-virtual {v6, v4}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "year"

    invoke-virtual {v1, v12, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 556
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v10, "skipcount"

    invoke-virtual {v1, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "path"

    .line 557
    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 559
    iget-object v5, v0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mBackend:Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    const-string v7, "songs"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8, v1}, Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 561
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 562
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "album"

    .line 563
    invoke-virtual {v1, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-static {v11}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "album_sort"

    invoke-virtual {v1, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v7, "primary_artist_id"

    invoke-virtual {v1, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 566
    invoke-virtual {v6, v4}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "primary_album_year"

    invoke-virtual {v1, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object v5, v0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mBackend:Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    const-string v7, "albums"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8, v1}, Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9

    const-wide/16 v7, -0x1

    cmp-long v5, v9, v7

    if-nez v5, :cond_9

    .line 574
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 575
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v7, "primary_artist_id"

    invoke-virtual {v1, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 576
    invoke-virtual {v6, v4}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "primary_album_year"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v4, v0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mBackend:Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const-string v5, "albums"

    const-string v8, "_id=?"

    invoke-virtual {v4, v5, v1, v8, v7}, Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 580
    :cond_9
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 581
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "_contributor"

    move-object/from16 v12, v23

    .line 582
    invoke-virtual {v1, v4, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    invoke-static {v12}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "_contributor_sort"

    invoke-virtual {v1, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-object v5, v0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mBackend:Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    const-string v8, "contributors"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9, v1}, Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 586
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 587
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v9, "_contributor_id"

    invoke-virtual {v1, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 588
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v10, "song_id"

    invoke-virtual {v1, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v5, 0x0

    .line 589
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v11, "role"

    invoke-virtual {v1, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 590
    iget-object v5, v0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mBackend:Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    const-string v12, "contributors_songs"

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13, v1}, Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const-string v5, "COMPOSER"

    .line 593
    invoke-virtual {v6, v5}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 595
    invoke-static {v5}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->hash63(Ljava/lang/String;)J

    move-result-wide v13

    .line 596
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 597
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v1, v3, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 598
    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-static {v5}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v5, v0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mBackend:Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    const/4 v15, 0x0

    invoke-virtual {v5, v8, v15, v1}, Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 602
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 603
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 604
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v5, 0x1

    .line 605
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v11, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 606
    iget-object v13, v0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mBackend:Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    invoke-virtual {v13, v12, v15, v1}, Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_2

    :cond_a
    const/4 v5, 0x1

    :goto_2
    const-string v13, "ALBUM_ARTIST"

    .line 610
    invoke-virtual {v6, v13}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_b

    .line 612
    invoke-static {v13}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->hash63(Ljava/lang/String;)J

    move-result-wide v14

    .line 613
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 614
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 615
    invoke-virtual {v1, v4, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    invoke-static {v13}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iget-object v4, v0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mBackend:Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    const/4 v5, 0x0

    invoke-virtual {v4, v8, v5, v1}, Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 619
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 620
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 621
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v4, 0x2

    .line 622
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 623
    iget-object v4, v0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mBackend:Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    invoke-virtual {v4, v12, v5, v1}, Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_b
    const-string v4, "GENRE"

    .line 627
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "GENRE"

    .line 628
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 629
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 630
    invoke-static {v5}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->hash63(Ljava/lang/String;)J

    move-result-wide v6

    .line 631
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 632
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "_genre"

    .line 633
    invoke-virtual {v1, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    invoke-static {v5}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "_genre_sort"

    invoke-virtual {v1, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object v5, v0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mBackend:Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    const-string v8, "genres"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9, v1}, Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 637
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 638
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "_genre_id"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 639
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 640
    iget-object v5, v0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mBackend:Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    const-string v6, "genres_songs"

    invoke-virtual {v5, v6, v9, v1}, Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_3

    :cond_c
    const/16 v16, 0x1

    goto :goto_4

    :cond_d
    move/from16 v16, v12

    .line 645
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaScanner: inserted "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VanillaMusic"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v16
.end method

.method private rpcLibraryVerify(Landroid/database/Cursor;)V
    .locals 10

    if-nez p1, :cond_0

    .line 414
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mBackend:Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    const/4 v1, 0x0

    const-string p1, "path"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v2, "songs"

    invoke-virtual/range {v0 .. v9}, Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 416
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 418
    iget-object v2, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v2, v1, v3, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 419
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v0, v1, v2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 421
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :goto_0
    return-void
.end method

.method private rpcNativeVerify(Landroid/database/Cursor;I)V
    .locals 9

    const-string v0, "VanillaMusic"

    if-nez p1, :cond_0

    .line 378
    iget-object p2, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->getPreferences(Landroid/content/Context;)Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;

    move-result-object p2

    iget p2, p2, Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;->_nativeLastMtime:I

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is_music!= 0 AND date_modified > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p2, -0x64

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "date_modified"

    const-string v1, "_data"

    const-string v2, "date_modified"

    .line 381
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v5

    .line 383
    :try_start_0
    iget-object v1, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rpcNativeVerify failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 392
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p2, 0x0

    .line 393
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 394
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v0, :cond_3

    .line 396
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v0, p2, v3, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 398
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v0, p2, v2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 401
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 402
    invoke-direct {p0, p2}, Lch/blinkenlights/android/medialibrary/MediaScanner;->setNativeLastMtime(I)V

    .line 403
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NativeLibraryScanner finished, mtime mark is now at "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method private rpcReadDirectory(Ljava/io/File;)V
    .locals 6

    .line 432
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 435
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, ".nomedia"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 438
    :cond_1
    invoke-direct {p0, p1}, Lch/blinkenlights/android/medialibrary/MediaScanner;->isDotfile(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 441
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 445
    :cond_3
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, p1, v2

    .line 446
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x66

    goto :goto_1

    :cond_4
    const/16 v4, 0x65

    .line 447
    :goto_1
    iget-object v5, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1, v4, v1, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private setNativeLastMtime(I)V
    .locals 1

    .line 291
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->getPreferences(Landroid/content/Context;)Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;

    move-result-object v0

    .line 292
    iput p1, v0, Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;->_nativeLastMtime:I

    .line 293
    iget-object p1, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->setPreferences(Landroid/content/Context;Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;)V

    return-void
.end method

.method private updateNotification(Z)V
    .locals 7

    .line 302
    invoke-virtual {p0}, Lch/blinkenlights/android/medialibrary/MediaScanner;->describeScanProgress()Lch/blinkenlights/android/medialibrary/MediaLibrary$ScanProgress;

    move-result-object v0

    const v1, 0xdb62

    if-eqz p1, :cond_1

    .line 305
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    div-long/2addr v2, v4

    long-to-int p1, v2

    .line 306
    iget v2, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mLastNotification:I

    if-eq p1, v2, :cond_0

    .line 307
    iput p1, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mLastNotification:I

    .line 308
    sget p1, Lch/blinkenlights/android/vanilla/R$drawable;->status_scan_0:I

    iget v2, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mLastNotification:I

    rem-int/lit8 v2, v2, 0x5

    add-int/2addr p1, v2

    .line 309
    iget-object v2, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lch/blinkenlights/android/vanilla/R$string;->media_library_scan_running:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 310
    iget-object v3, v0, Lch/blinkenlights/android/medialibrary/MediaLibrary$ScanProgress;->lastFile:Ljava/lang/String;

    .line 312
    iget-object v4, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mNotificationHelper:Lch/blinkenlights/android/vanilla/NotificationHelper;

    iget-object v5, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lch/blinkenlights/android/vanilla/NotificationHelper;->getNewBuilder(Landroid/content/Context;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v5, v0, Lch/blinkenlights/android/medialibrary/MediaLibrary$ScanProgress;->total:I

    iget v0, v0, Lch/blinkenlights/android/medialibrary/MediaLibrary$ScanProgress;->seen:I

    const/4 v6, 0x0

    .line 313
    invoke-virtual {v4, v5, v0, v6}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 314
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 315
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 316
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 317
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 318
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p1

    .line 319
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mNotificationHelper:Lch/blinkenlights/android/vanilla/NotificationHelper;

    invoke-virtual {v0, v1, p1}, Lch/blinkenlights/android/vanilla/NotificationHelper;->notify(ILandroid/app/Notification;)V

    .line 322
    :cond_0
    iget-object p1, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-nez p1, :cond_2

    .line 323
    iget-object p1, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 325
    :cond_1
    iget-object p1, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mNotificationHelper:Lch/blinkenlights/android/vanilla/NotificationHelper;

    invoke-virtual {p1, v1}, Lch/blinkenlights/android/vanilla/NotificationHelper;->cancel(I)V

    .line 327
    iget-object p1, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 328
    iget-object p1, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public abortScan()V
    .locals 3

    .line 157
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 158
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mScanPlan:Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;

    invoke-virtual {v0}, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;->clear()V

    .line 159
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public describeScanProgress()Lch/blinkenlights/android/medialibrary/MediaLibrary$ScanProgress;
    .locals 4

    .line 177
    new-instance v0, Lch/blinkenlights/android/medialibrary/MediaLibrary$ScanProgress;

    invoke-direct {v0}, Lch/blinkenlights/android/medialibrary/MediaLibrary$ScanProgress;-><init>()V

    .line 178
    iget-object v1, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->getPreferences(Landroid/content/Context;)Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;

    move-result-object v1

    .line 179
    iget-object v2, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mScanPlan:Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;

    invoke-virtual {v2}, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;->getStatistics()Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Statistics;

    move-result-object v2

    .line 181
    iget-object v3, v2, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Statistics;->lastFile:Ljava/lang/String;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v0, Lch/blinkenlights/android/medialibrary/MediaLibrary$ScanProgress;->isRunning:Z

    .line 182
    iget-object v3, v2, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Statistics;->lastFile:Ljava/lang/String;

    iput-object v3, v0, Lch/blinkenlights/android/medialibrary/MediaLibrary$ScanProgress;->lastFile:Ljava/lang/String;

    .line 183
    iget v3, v2, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Statistics;->seen:I

    iput v3, v0, Lch/blinkenlights/android/medialibrary/MediaLibrary$ScanProgress;->seen:I

    .line 184
    iget v2, v2, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Statistics;->changed:I

    iput v2, v0, Lch/blinkenlights/android/medialibrary/MediaLibrary$ScanProgress;->changed:I

    .line 185
    iget v1, v1, Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;->_nativeLibraryCount:I

    iput v1, v0, Lch/blinkenlights/android/medialibrary/MediaLibrary$ScanProgress;->total:I

    return-object v0
.end method

.method public flushDatabase()V
    .locals 1

    .line 166
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mBackend:Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    invoke-virtual {v0}, Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;->setPendingDeletion()V

    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mPendingCleanup:Z

    const/4 v0, 0x0

    .line 168
    invoke-direct {p0, v0}, Lch/blinkenlights/android/medialibrary/MediaScanner;->setNativeLastMtime(I)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8

    .line 202
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/os/Message;->arg1:I

    :cond_0
    const-wide/16 v1, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    .line 266
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 262
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lch/blinkenlights/android/medialibrary/MediaScanner;->rpcNativeVerify(Landroid/database/Cursor;I)V

    goto/16 :goto_0

    .line 258
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lch/blinkenlights/android/medialibrary/MediaScanner;->rpcLibraryVerify(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 244
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    .line 245
    invoke-direct {p0, v0}, Lch/blinkenlights/android/medialibrary/MediaScanner;->rpcInspectFile(Ljava/io/File;)Z

    move-result v1

    .line 246
    iget-object v2, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mScanPlan:Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;->registerProgress(Ljava/lang/String;Z)V

    if-eqz v1, :cond_1

    .line 247
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 250
    :cond_1
    invoke-direct {p0, v4}, Lch/blinkenlights/android/medialibrary/MediaScanner;->updateNotification(Z)V

    goto :goto_0

    .line 254
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-direct {p0, v0}, Lch/blinkenlights/android/medialibrary/MediaScanner;->rpcReadDirectory(Ljava/io/File;)V

    goto :goto_0

    .line 238
    :pswitch_4
    iget-boolean v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mIsInitialScan:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->getPreferences(Landroid/content/Context;)Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;

    move-result-object v0

    iget v0, v0, Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;->_nativeLastMtime:I

    if-nez v0, :cond_7

    .line 239
    iput-boolean v4, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mIsInitialScan:Z

    goto :goto_0

    .line 233
    :cond_2
    invoke-direct {p0}, Lch/blinkenlights/android/medialibrary/MediaScanner;->guessQuickScanPlan()V

    goto :goto_0

    .line 206
    :cond_3
    sget-object v0, Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;->SONG:Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;

    invoke-static {v0, v1, v2, v4}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->notifyObserver(Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;JZ)V

    goto :goto_0

    .line 210
    :cond_4
    iget-boolean v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mIsInitialScan:Z

    if-eqz v0, :cond_5

    .line 211
    iput-boolean v5, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mIsInitialScan:Z

    .line 212
    sget-object v0, Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;->PLAYLIST:Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;

    const-wide/16 v6, -0x2

    invoke-static {v0, v6, v7, v5}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->notifyObserver(Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;JZ)V

    .line 214
    :cond_5
    iget-boolean v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mPendingCleanup:Z

    if-eqz v0, :cond_6

    .line 215
    iput-boolean v5, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mPendingCleanup:Z

    .line 216
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mBackend:Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    invoke-virtual {v0, v4}, Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;->cleanOrphanedEntries(Z)V

    .line 218
    sget-object v0, Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;->PLAYLIST:Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;

    invoke-static {v0, v1, v2, v5}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->notifyObserver(Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;JZ)V

    .line 226
    :cond_6
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 227
    sget-object v0, Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;->SONG:Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;

    invoke-static {v0, v1, v2, v5}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->notifyObserver(Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;JZ)V

    .line 229
    invoke-direct {p0, v5}, Lch/blinkenlights/android/medialibrary/MediaScanner;->updateNotification(Z)V

    .line 270
    :cond_7
    :goto_0
    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_9

    iget-object p1, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_9

    .line 271
    iget-object p1, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mScanPlan:Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;

    invoke-virtual {p1}, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;->getNextStep()Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Step;

    move-result-object p1

    if-nez p1, :cond_8

    .line 273
    iget-object p1, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 275
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xxx --- starting scan of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Step;->msg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VanillaMusic"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mHandler:Landroid/os/Handler;

    iget v1, p1, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Step;->msg:I

    iget-object p1, p1, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan$Step;->arg:Ljava/lang/Object;

    invoke-virtual {v0, v5, v1, v5, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_9
    :goto_1
    return v4

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startFullScan()V
    .locals 5

    .line 132
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->getPreferences(Landroid/content/Context;)Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;

    move-result-object v0

    .line 133
    iget-object v0, v0, Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;->mediaFolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 134
    iget-object v2, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mScanPlan:Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;

    const/16 v3, 0x65

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;->addNextStep(ILjava/lang/Object;)Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mScanPlan:Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;->addNextStep(ILjava/lang/Object;)Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;

    .line 137
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mScanPlan:Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, v2}, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;->addNextStep(ILjava/lang/Object;)Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;

    .line 138
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startNormalScan()V
    .locals 3

    const/4 v0, 0x1

    .line 122
    invoke-direct {p0, v0}, Lch/blinkenlights/android/medialibrary/MediaScanner;->setNativeLastMtime(I)V

    .line 123
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mScanPlan:Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;

    const/4 v1, 0x0

    const/16 v2, 0x68

    invoke-virtual {v0, v2, v1}, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;->addNextStep(ILjava/lang/Object;)Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;

    const/16 v2, 0x67

    .line 124
    invoke-virtual {v0, v2, v1}, Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;->addNextStep(ILjava/lang/Object;)Lch/blinkenlights/android/medialibrary/MediaScanner$MediaScanPlan;

    .line 125
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startQuickScan(I)V
    .locals 4

    .line 148
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lch/blinkenlights/android/medialibrary/MediaScanner;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method
