.class public Lch/blinkenlights/android/medialibrary/MediaLibrary;
.super Ljava/lang/Object;
.source "MediaLibrary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/blinkenlights/android/medialibrary/MediaLibrary$ScanProgress;,
        Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;
    }
.end annotation


# static fields
.field private static volatile sBackend:Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

.field private static final sLibraryObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lch/blinkenlights/android/medialibrary/LibraryObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static sPreferences:Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;

.field private static sScanner:Lch/blinkenlights/android/medialibrary/MediaScanner;

.field private static final sWait:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lch/blinkenlights/android/medialibrary/MediaLibrary;->sLibraryObservers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 112
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lch/blinkenlights/android/medialibrary/MediaLibrary;->sWait:[Ljava/lang/Object;

    return-void
.end method

.method public static abortLibraryScan(Landroid/content/Context;)V
    .locals 0

    .line 258
    invoke-static {p0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->getBackend(Landroid/content/Context;)Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    .line 259
    sget-object p0, Lch/blinkenlights/android/medialibrary/MediaLibrary;->sScanner:Lch/blinkenlights/android/medialibrary/MediaScanner;

    invoke-virtual {p0}, Lch/blinkenlights/android/medialibrary/MediaScanner;->abortScan()V

    return-void
.end method

.method public static addToPlaylist(Landroid/content/Context;JLjava/util/ArrayList;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    move-wide/from16 v0, p1

    const-string v2, "position"

    .line 433
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    .line 434
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playlist_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "position DESC"

    const-string v4, "playlists_songs"

    const/4 v7, 0x0

    move-object/from16 v3, p0

    .line 436
    invoke-static/range {v3 .. v8}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->queryLibrary(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 437
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    const-wide/16 v5, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    if-eqz v4, :cond_0

    .line 438
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    add-long/2addr v10, v5

    goto :goto_0

    :cond_0
    move-wide v10, v8

    .line 439
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 441
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 442
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 443
    invoke-static/range {p0 .. p0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->getBackend(Landroid/content/Context;)Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    move-result-object v13

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-string v7, "mtime"

    invoke-virtual {v13, v7, v14, v15}, Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;->getColumnFromSongId(Ljava/lang/String;J)J

    move-result-wide v13

    cmp-long v7, v13, v8

    if-nez v7, :cond_1

    goto :goto_2

    .line 446
    :cond_1
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 447
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-string v14, "playlist_id"

    invoke-virtual {v7, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v13, "song_id"

    .line 448
    invoke-virtual {v7, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 449
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v7, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 450
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-long/2addr v10, v5

    :goto_2
    const/4 v7, 0x0

    goto :goto_1

    .line 453
    :cond_2
    invoke-static/range {p0 .. p0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->getBackend(Landroid/content/Context;)Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "playlists_songs"

    invoke-virtual {v2, v5, v4, v3}, Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;->bulkInsert(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v2

    if-lez v2, :cond_3

    .line 456
    sget-object v3, Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;->PLAYLIST:Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;

    const/4 v4, 0x0

    invoke-static {v3, v0, v1, v4}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->notifyObserver(Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;JZ)V

    :cond_3
    return v2
.end method

.method public static createDebugDump(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const-string v0, "media-library.db"

    .line 280
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 282
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/4 p0, 0x0

    .line 283
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 p1, 0x1000

    .line 284
    :try_start_2
    new-array p1, p1, [B

    .line 286
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    .line 287
    invoke-virtual {v1, p1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 289
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 290
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catchall_0
    move-exception p1

    move-object v2, p0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 283
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    :goto_1
    if-eqz v2, :cond_1

    .line 289
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_7
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :goto_2
    throw p1
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p0

    .line 282
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_3
    if-eqz p0, :cond_2

    .line 290
    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    :try_start_a
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :goto_4
    throw p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :catch_4
    move-exception p0

    .line 292
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Debug dump failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VanillaMusic"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void
.end method

.method public static createPlaylist(Landroid/content/Context;Ljava/lang/String;)J
    .locals 3

    .line 393
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 394
    invoke-static {p1}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->hash63(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "name"

    .line 395
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-static {p1}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "name_sort"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-static {p0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->getBackend(Landroid/content/Context;)Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    move-result-object p0

    const-string p1, "playlists"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    const-wide/16 v0, -0x1

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    .line 400
    sget-object v0, Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;->PLAYLIST:Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->notifyObserver(Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;JZ)V

    :cond_0
    return-wide p0
.end method

.method public static describeScanProgress(Landroid/content/Context;)Lch/blinkenlights/android/medialibrary/MediaLibrary$ScanProgress;
    .locals 0

    .line 269
    invoke-static {p0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->getBackend(Landroid/content/Context;)Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    .line 270
    sget-object p0, Lch/blinkenlights/android/medialibrary/MediaLibrary;->sScanner:Lch/blinkenlights/android/medialibrary/MediaScanner;

    invoke-virtual {p0}, Lch/blinkenlights/android/medialibrary/MediaScanner;->describeScanProgress()Lch/blinkenlights/android/medialibrary/MediaLibrary$ScanProgress;

    move-result-object p0

    return-object p0
.end method

.method private static discoverDefaultBlacklistedPaths(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "Android/data"

    const-string v1, "Android/media"

    const-string v2, "Alarms"

    const-string v3, "Notifications"

    const-string v4, "Ringtones"

    const-string v5, "media/audio"

    .line 200
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    .line 201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 203
    invoke-static {p0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->discoverDefaultMediaPaths(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 204
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 205
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 207
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static discoverDefaultMediaPaths(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    if-nez v4, :cond_0

    goto :goto_1

    .line 174
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/Android/media/"

    .line 175
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_1

    .line 177
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 182
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_3

    .line 184
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance p0, Ljava/io/File;

    const-string v1, "/storage/sdcard1"

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 188
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method private static getBackend(Landroid/content/Context;)Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;
    .locals 3

    .line 115
    sget-object v0, Lch/blinkenlights/android/medialibrary/MediaLibrary;->sBackend:Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    if-nez v0, :cond_1

    .line 117
    sget-object v0, Lch/blinkenlights/android/medialibrary/MediaLibrary;->sWait:[Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    sget-object v1, Lch/blinkenlights/android/medialibrary/MediaLibrary;->sBackend:Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    if-nez v1, :cond_0

    .line 119
    new-instance v1, Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;-><init>(Landroid/content/Context;)V

    sput-object v1, Lch/blinkenlights/android/medialibrary/MediaLibrary;->sBackend:Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    .line 120
    new-instance v1, Lch/blinkenlights/android/medialibrary/MediaScanner;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v2, Lch/blinkenlights/android/medialibrary/MediaLibrary;->sBackend:Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    invoke-direct {v1, p0, v2}, Lch/blinkenlights/android/medialibrary/MediaScanner;-><init>(Landroid/content/Context;Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;)V

    sput-object v1, Lch/blinkenlights/android/medialibrary/MediaLibrary;->sScanner:Lch/blinkenlights/android/medialibrary/MediaScanner;

    .line 121
    sget-object p0, Lch/blinkenlights/android/medialibrary/MediaLibrary;->sScanner:Lch/blinkenlights/android/medialibrary/MediaScanner;

    const/16 v1, 0x32

    invoke-virtual {p0, v1}, Lch/blinkenlights/android/medialibrary/MediaScanner;->startQuickScan(I)V

    .line 123
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 125
    :cond_1
    :goto_0
    sget-object p0, Lch/blinkenlights/android/medialibrary/MediaLibrary;->sBackend:Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    return-object p0
.end method

.method public static getLibrarySize(Landroid/content/Context;)I
    .locals 7

    const-string v0, "count(*)"

    .line 567
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v2, "songs"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->queryLibrary(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 568
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 569
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 570
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v1
.end method

.method public static getPreferences(Landroid/content/Context;)Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;
    .locals 4

    .line 135
    sget-object v0, Lch/blinkenlights/android/medialibrary/MediaLibrary;->sPreferences:Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;

    if-nez v0, :cond_5

    .line 137
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    const-string v2, "_prefs-v1.obj"

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v2, 0x0

    .line 138
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v2

    .line 137
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v2, :cond_0

    .line 139
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    :try_start_5
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    :goto_1
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    move-exception v1

    move-object v3, v0

    .line 140
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returning default media-library preferences due to error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VanillaMusic"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-nez v3, :cond_1

    .line 144
    new-instance v0, Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;

    invoke-direct {v0}, Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;-><init>()V

    const/4 v1, 0x1

    .line 145
    iput-boolean v1, v0, Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;->forceBastp:Z

    goto :goto_4

    :cond_1
    move-object v0, v3

    .line 148
    :goto_4
    iget-object v1, v0, Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;->mediaFolders:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 149
    :cond_2
    invoke-static {p0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->discoverDefaultMediaPaths(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;->mediaFolders:Ljava/util/ArrayList;

    .line 151
    :cond_3
    iget-object v1, v0, Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;->blacklistedFolders:Ljava/util/ArrayList;

    if-nez v1, :cond_4

    .line 152
    invoke-static {p0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->discoverDefaultBlacklistedPaths(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, v0, Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;->blacklistedFolders:Ljava/util/ArrayList;

    .line 154
    :cond_4
    sput-object v0, Lch/blinkenlights/android/medialibrary/MediaLibrary;->sPreferences:Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;

    :cond_5
    return-object v0
.end method

.method public static hash63(Ljava/lang/String;)J
    .locals 8

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 595
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    move-wide v4, v0

    :goto_0
    if-ge v3, v2, :cond_1

    const-wide/16 v6, 0x1f

    mul-long v4, v4, v6

    .line 597
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    cmp-long p0, v4, v0

    if-gez p0, :cond_2

    const-wide/16 v0, -0x1

    mul-long v4, v4, v0

    :cond_2
    return-wide v4
.end method

.method public static keyFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 581
    invoke-static {p0}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static movePlaylistItem(Landroid/content/Context;JJ)V
    .locals 14

    const-string v0, "position"

    const-string v1, "playlist_id"

    .line 526
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    .line 530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v3, "playlists_songs"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, v1

    invoke-static/range {v2 .. v7}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->queryLibrary(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 531
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v9, 0x0

    .line 532
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v3, 0x1

    .line 533
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 534
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v3, "playlists_songs"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->queryLibrary(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 538
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 539
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 540
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    cmp-long v1, v2, v10

    if-lez v1, :cond_0

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 548
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playlist_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " >= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 549
    invoke-static {p0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->getBackend(Landroid/content/Context;)Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UPDATE playlists_songs SET "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "position=position+1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " WHERE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;->execSQL(Ljava/lang/String;)V

    .line 551
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 552
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 554
    invoke-static {p0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->getBackend(Landroid/content/Context;)Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "playlists_songs"

    invoke-virtual {v2, v4, v1, v0, v3}, Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 556
    sget-object v0, Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;->PLAYLIST:Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;

    invoke-static {v0, v12, v13, v9}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->notifyObserver(Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;JZ)V

    return-void
.end method

.method public static notifyObserver(Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;JZ)V
    .locals 3

    .line 336
    sget-object v0, Lch/blinkenlights/android/medialibrary/MediaLibrary;->sLibraryObservers:Ljava/util/ArrayList;

    .line 337
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    add-int/2addr v1, v2

    if-eq v1, v2, :cond_0

    .line 338
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/blinkenlights/android/medialibrary/LibraryObserver;

    invoke-virtual {v2, p0, p1, p2, p3}, Lch/blinkenlights/android/medialibrary/LibraryObserver;->onChange(Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;JZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static queryLibrary(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .line 352
    invoke-static {p0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->getBackend(Landroid/content/Context;)Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v9}, Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static registerLibraryObserver(Lch/blinkenlights/android/medialibrary/LibraryObserver;)V
    .locals 1

    .line 309
    sget-object v0, Lch/blinkenlights/android/medialibrary/MediaLibrary;->sLibraryObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    sget-object v0, Lch/blinkenlights/android/medialibrary/MediaLibrary;->sLibraryObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 310
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "LibraryObserver was already registered"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static removeFromPlaylist(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8

    .line 471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "DISTINCT(playlist_id)"

    .line 472
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v3, "playlists_songs"

    const/4 v7, 0x0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    .line 473
    invoke-static/range {v2 .. v7}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->queryLibrary(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 474
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 475
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 477
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 480
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 481
    invoke-static {p0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->getBackend(Landroid/content/Context;)Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    move-result-object p0

    const-string v1, "playlists_songs"

    invoke-virtual {p0, v1, p1, p2}, Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 482
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 483
    sget-object p2, Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;->PLAYLIST:Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;

    invoke-static {p2, v0, v1, v3}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->notifyObserver(Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;JZ)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :cond_2
    return p0
.end method

.method public static removePlaylist(Landroid/content/Context;J)Z
    .locals 3

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playlist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->removeFromPlaylist(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    .line 414
    invoke-static {p0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->getBackend(Landroid/content/Context;)Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "playlists"

    invoke-virtual {p0, v2, v0, v1}, Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 418
    sget-object v1, Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;->PLAYLIST:Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;

    invoke-static {v1, p1, p2, v0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->notifyObserver(Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;JZ)V

    :cond_1
    return p0
.end method

.method public static removeSong(Landroid/content/Context;J)I
    .locals 4

    .line 363
    invoke-static {p0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->getBackend(Landroid/content/Context;)Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "songs"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 366
    invoke-static {p0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->getBackend(Landroid/content/Context;)Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;->cleanOrphanedEntries(Z)V

    .line 367
    sget-object p0, Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;->SONG:Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->notifyObserver(Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;JZ)V

    .line 368
    sget-object p0, Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;->PLAYLIST:Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;

    const-wide/16 p1, -0x1

    invoke-static {p0, p1, p2, v1}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->notifyObserver(Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;JZ)V

    :cond_0
    return v0
.end method

.method public static renamePlaylist(Landroid/content/Context;JLjava/lang/String;)J
    .locals 6

    .line 499
    invoke-static {p0, p3}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-ltz p3, :cond_0

    .line 501
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playlist_id="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 502
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 503
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "playlist_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 504
    invoke-static {p0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->getBackend(Landroid/content/Context;)Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "playlists_songs"

    invoke-virtual {v3, v5, v2, p3, v4}, Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 505
    invoke-static {p0, p1, p2}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->removePlaylist(Landroid/content/Context;J)Z

    :cond_0
    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_1

    .line 509
    sget-object p0, Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;->PLAYLIST:Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;

    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p3}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->notifyObserver(Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;JZ)V

    .line 510
    sget-object p0, Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;->PLAYLIST:Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;

    invoke-static {p0, v0, v1, p3}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->notifyObserver(Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;JZ)V

    :cond_1
    return-wide v0
.end method

.method public static setPreferences(Landroid/content/Context;Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;)V
    .locals 3

    .line 221
    invoke-static {p0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->getBackend(Landroid/content/Context;)Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    .line 223
    :try_start_0
    new-instance v0, Ljava/io/ObjectOutputStream;

    const-string v1, "_prefs-v1.obj"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 p0, 0x0

    .line 224
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 223
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz p0, :cond_0

    .line 225
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    :goto_1
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p0

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to store media preferences: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VanillaMusic"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_2
    sput-object p1, Lch/blinkenlights/android/medialibrary/MediaLibrary;->sPreferences:Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;

    return-void
.end method

.method public static startLibraryScan(Landroid/content/Context;ZZ)V
    .locals 0

    .line 240
    invoke-static {p0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->getBackend(Landroid/content/Context;)Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    if-eqz p2, :cond_0

    .line 242
    sget-object p0, Lch/blinkenlights/android/medialibrary/MediaLibrary;->sScanner:Lch/blinkenlights/android/medialibrary/MediaScanner;

    invoke-virtual {p0}, Lch/blinkenlights/android/medialibrary/MediaScanner;->flushDatabase()V

    :cond_0
    if-eqz p1, :cond_1

    .line 246
    sget-object p0, Lch/blinkenlights/android/medialibrary/MediaLibrary;->sScanner:Lch/blinkenlights/android/medialibrary/MediaScanner;

    invoke-virtual {p0}, Lch/blinkenlights/android/medialibrary/MediaScanner;->startFullScan()V

    goto :goto_0

    .line 248
    :cond_1
    sget-object p0, Lch/blinkenlights/android/medialibrary/MediaLibrary;->sScanner:Lch/blinkenlights/android/medialibrary/MediaScanner;

    invoke-virtual {p0}, Lch/blinkenlights/android/medialibrary/MediaScanner;->startNormalScan()V

    :goto_0
    return-void
.end method

.method public static unregisterLibraryObserver(Lch/blinkenlights/android/medialibrary/LibraryObserver;)V
    .locals 1

    .line 322
    sget-object v0, Lch/blinkenlights/android/medialibrary/MediaLibrary;->sLibraryObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 325
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "This library observer was never registered!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static updateSongPlayCounts(Landroid/content/Context;JZ)V
    .locals 2

    if-eqz p3, :cond_0

    const-string p3, "playcount"

    goto :goto_0

    :cond_0
    const-string p3, "skipcount"

    .line 381
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 382
    invoke-static {p0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->getBackend(Landroid/content/Context;)Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UPDATE songs SET "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "+1 WHERE "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lch/blinkenlights/android/medialibrary/MediaLibraryBackend;->execSQL(Ljava/lang/String;)V

    return-void
.end method
