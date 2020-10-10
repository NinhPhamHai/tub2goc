.class public Lch/blinkenlights/android/vanilla/PlaylistObserver;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PlaylistObserver.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/blinkenlights/android/vanilla/PlaylistObserver$Database;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExportRelativePaths:Z

.field private mFileObserver:Landroid/os/FileObserver;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mLibraryObserver:Lch/blinkenlights/android/medialibrary/LibraryObserver;

.field private mPlaylists:Ljava/io/File;

.field private mSyncMode:I

.field msgDedupe:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 3

    const-string v0, "playlist_observer.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 116
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->msgDedupe:Ljava/util/ArrayList;

    .line 588
    new-instance v0, Lch/blinkenlights/android/vanilla/PlaylistObserver$1;

    invoke-direct {v0, p0}, Lch/blinkenlights/android/vanilla/PlaylistObserver$1;-><init>(Lch/blinkenlights/android/vanilla/PlaylistObserver;)V

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mLibraryObserver:Lch/blinkenlights/android/medialibrary/LibraryObserver;

    .line 117
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mContext:Landroid/content/Context;

    .line 118
    iput p3, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mSyncMode:I

    .line 119
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mPlaylists:Ljava/io/File;

    .line 120
    iput-boolean p4, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mExportRelativePaths:Z

    .line 123
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "PlaylisObserverHandler"

    const/16 p3, 0x13

    invoke-direct {p1, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mHandlerThread:Landroid/os/HandlerThread;

    .line 124
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 125
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mHandler:Landroid/os/Handler;

    .line 128
    iget p1, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mSyncMode:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    .line 130
    :try_start_0
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mPlaylists:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :catch_0
    :cond_0
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mLibraryObserver:Lch/blinkenlights/android/medialibrary/LibraryObserver;

    invoke-static {p1}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->registerLibraryObserver(Lch/blinkenlights/android/medialibrary/LibraryObserver;)V

    .line 140
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mPlaylists:Ljava/io/File;

    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->getFileObserver(Ljava/io/File;)Landroid/os/FileObserver;

    move-result-object p1

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mFileObserver:Landroid/os/FileObserver;

    .line 141
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {p1}, Landroid/os/FileObserver;->startWatching()V

    const-string p1, "Object created, trigger FULL_SYNC_SCAN"

    .line 143
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->XT(Ljava/lang/String;)V

    const/4 p1, 0x5

    const/4 p2, 0x0

    .line 144
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->sendUniqueMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private XT(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic access$000(Lch/blinkenlights/android/vanilla/PlaylistObserver;)Z
    .locals 0

    .line 48
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->shouldDispatch()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lch/blinkenlights/android/vanilla/PlaylistObserver;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->XT(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lch/blinkenlights/android/vanilla/PlaylistObserver;ILjava/lang/Object;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->sendUniqueMessage(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lch/blinkenlights/android/vanilla/PlaylistObserver;Ljava/lang/String;)Z
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->isM3uFilename(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lch/blinkenlights/android/vanilla/PlaylistObserver;)Ljava/io/File;
    .locals 0

    .line 48
    iget-object p0, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mPlaylists:Ljava/io/File;

    return-object p0
.end method

.method private asM3u(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".m3u"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private deletePlaylistMetadata(J)V
    .locals 2

    .line 508
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    .line 509
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const-string p1, "playlist_metadata"

    const-string p2, "_id=?"

    invoke-virtual {v0, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private dumpAllAsM3uPlaylist()V
    .locals 5

    const-string v0, "dumpAllAsM3uPlaylist: called"

    .line 271
    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->XT(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/Playlist;->queryPlaylists(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 274
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 275
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpAllAsM3uPlaylist: Dumping ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->XT(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 277
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->sendUniqueMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 279
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method

.method private dumpAsM3uPlaylist(J)Ljava/io/File;
    .locals 10

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpM3uPlaylist("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->XT(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_a

    .line 371
    iget v0, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mSyncMode:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 374
    :cond_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lch/blinkenlights/android/vanilla/Playlist;->getPlaylist(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    return-object v1

    .line 378
    :cond_1
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mPlaylists:Ljava/io/File;

    invoke-direct {p0, v5}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->asM3u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->getFileForName(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 381
    sget-object v2, Lch/blinkenlights/android/vanilla/Song;->FILLED_PLAYLIST_PROJECTION:[Ljava/lang/String;

    invoke-static {p1, p2, v2}, Lch/blinkenlights/android/vanilla/MediaUtils;->buildPlaylistQuery(J[Ljava/lang/String;)Lch/blinkenlights/android/vanilla/QueryTask;

    move-result-object v2

    .line 382
    iget-object v3, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lch/blinkenlights/android/vanilla/QueryTask;->runQuery(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 385
    :try_start_0
    new-instance v9, Ljava/io/PrintWriter;

    invoke-direct {v9, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 386
    :goto_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 388
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 389
    iget-boolean v2, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mExportRelativePaths:Z

    if-eqz v2, :cond_2

    .line 390
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mPlaylists:Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lch/blinkenlights/android/vanilla/FileUtils;->relativize(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 392
    :cond_2
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :cond_3
    invoke-virtual {v9}, Ljava/io/PrintWriter;->flush()V

    .line 395
    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->getHash(Ljava/io/File;)J

    move-result-wide v6

    move-object v2, p0

    move-wide v3, p1

    .line 396
    invoke-direct/range {v2 .. v7}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->updatePlaylistMetadata(JLjava/lang/String;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v9

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v1, v9

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v9, v1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_1
    :try_start_2
    const-string p2, "VanillaMusic"

    const-string v2, "IOException while writing:"

    .line 399
    invoke-static {p2, v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v8, :cond_4

    .line 401
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v1, :cond_9

    goto :goto_4

    :goto_2
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v9, :cond_6

    .line 402
    invoke-virtual {v9}, Ljava/io/PrintWriter;->close()V

    .line 403
    :cond_6
    throw p1

    :cond_7
    :goto_3
    if-eqz v8, :cond_8

    .line 401
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v1, :cond_9

    .line 402
    :goto_4
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_9
    return-object v0

    .line 369
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Called with negative id!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private forceM3uImport()V
    .locals 3

    const/4 v0, 0x0

    .line 254
    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->queryDatabase(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 256
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 257
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->deletePlaylistMetadata(J)V

    goto :goto_0

    .line 259
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string v0, "forceM3uImport: metadata cleared, calling fullSyncScan"

    .line 263
    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->XT(Ljava/lang/String;)V

    .line 264
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->fullSyncScan()V

    return-void
.end method

.method private fromM3u(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 542
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->isM3uFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 544
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 543
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an M3U filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fullSyncScan()V
    .locals 11

    const-string v0, "fullSyncScan() running..."

    .line 412
    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->XT(Ljava/lang/String;)V

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 417
    iget v1, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mSyncMode:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x0

    .line 418
    invoke-direct {p0, v4}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->queryDatabase(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 420
    :cond_1
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 421
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 422
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 424
    iget-object v8, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mPlaylists:Ljava/io/File;

    invoke-direct {p0, v7}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->asM3u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->getFileForName(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 425
    iget-object v9, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mPlaylists:Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".backup"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v9, v7}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->getFileForName(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 427
    iget-object v9, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mContext:Landroid/content/Context;

    invoke-static {v9, v5, v6}, Lch/blinkenlights/android/vanilla/Playlist;->getPlaylist(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_3

    if-eqz v1, :cond_2

    .line 430
    invoke-virtual {v8, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 432
    :cond_2
    invoke-direct {p0, v5, v6}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->deletePlaylistMetadata(J)V

    .line 433
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fullSyncScan(): renamed old M3U -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->XT(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_5

    .line 434
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_5

    .line 436
    invoke-direct {p0, v5, v6}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->dumpAsM3uPlaylist(J)Ljava/io/File;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 438
    invoke-virtual {v9, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 440
    :cond_4
    iget-object v7, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mContext:Landroid/content/Context;

    invoke-static {v7, v5, v6}, Lch/blinkenlights/android/vanilla/Playlist;->deletePlaylist(Landroid/content/Context;J)V

    .line 441
    invoke-direct {p0, v5, v6}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->deletePlaylistMetadata(J)V

    .line 442
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fullSyncScan(): killed native playlist with id "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->XT(Ljava/lang/String;)V

    .line 445
    :cond_5
    :goto_2
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 446
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 449
    :cond_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 453
    :cond_7
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mPlaylists:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 455
    array-length v2, v1

    :goto_3
    if-ge v3, v2, :cond_a

    aget-object v4, v1, v3

    .line 456
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 457
    invoke-direct {p0, v5}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->isM3uFilename(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 458
    iget-object v6, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->fromM3u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lch/blinkenlights/android/vanilla/Playlist;->getPlaylist(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-nez v9, :cond_8

    .line 459
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fullSyncScan(): new M3U discovered, must import "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->XT(Ljava/lang/String;)V

    const/4 v5, 0x3

    .line 460
    invoke-direct {p0, v5, v4}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->sendUniqueMessage(ILjava/lang/Object;)V

    goto :goto_4

    .line 462
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fullSyncScan(): native version for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " exists without metadata. Won\'t touch."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->XT(Ljava/lang/String;)V

    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    return-void
.end method

.method private getFileForName(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    const-string v0, "/"

    const-string v1, "_"

    .line 476
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 477
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getFileObserver(Ljava/io/File;)Landroid/os/FileObserver;
    .locals 2

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new file observer at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with mask "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->XT(Ljava/lang/String;)V

    .line 622
    new-instance v0, Lch/blinkenlights/android/vanilla/PlaylistObserver$2;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1, v1}, Lch/blinkenlights/android/vanilla/PlaylistObserver$2;-><init>(Lch/blinkenlights/android/vanilla/PlaylistObserver;Ljava/lang/String;I)V

    return-object v0
.end method

.method private getHash(Ljava/io/File;)J
    .locals 8

    const/16 v0, 0x1000

    .line 555
    new-array v0, v0, [B

    const-wide/16 v1, -0x1

    .line 556
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 p1, 0x0

    .line 557
    :try_start_1
    new-instance v4, Ljava/util/zip/CRC32;

    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    .line 558
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 559
    invoke-virtual {v4, v0}, Ljava/util/zip/CRC32;->update([B)V

    goto :goto_0

    .line 561
    :cond_0
    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-gez p1, :cond_1

    mul-long v4, v4, v1

    :cond_1
    move-wide v1, v4

    .line 564
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 556
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz p1, :cond_2

    .line 564
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_5
    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :goto_2
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :goto_3
    return-wide v1
.end method

.method private importM3uPlaylist(Ljava/io/File;)V
    .locals 10

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "importM3uPlaylist("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->XT(Ljava/lang/String;)V

    .line 307
    iget v0, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mSyncMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    return-void

    .line 310
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 313
    :cond_1
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->getHash(Ljava/io/File;)J

    move-result-wide v6

    const-wide/16 v2, -0x1

    cmp-long v0, v6, v2

    if-nez v0, :cond_2

    return-void

    .line 318
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->fromM3u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    .line 319
    invoke-direct {p0, v8}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->queryDatabase(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 323
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 324
    iget-object v4, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mPlaylists:Ljava/io/File;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->asM3u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->getFileForName(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 325
    invoke-virtual {p1, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 328
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    .line 329
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v9, v6, v4

    if-eqz v9, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 330
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "importM3uPlaylist(): hash="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", import="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", import_as="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->XT(Ljava/lang/String;)V

    .line 334
    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v5, v0

    if-eqz v1, :cond_a

    .line 338
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mLibraryObserver:Lch/blinkenlights/android/medialibrary/LibraryObserver;

    invoke-static {v0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->unregisterLibraryObserver(Lch/blinkenlights/android/medialibrary/LibraryObserver;)V

    .line 339
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lch/blinkenlights/android/vanilla/Playlist;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 340
    :try_start_0
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 342
    :cond_7
    :goto_1
    :try_start_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 343
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 345
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mPlaylists:Ljava/io/File;

    new-instance v4, Ljava/io/File;

    .line 346
    invoke-static {p1}, Lch/blinkenlights/android/vanilla/FileUtils;->normalizeDirectorySeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-static {v2, v4}, Lch/blinkenlights/android/vanilla/FileUtils;->resolve(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 347
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mContext:Landroid/content/Context;

    sget-object v4, Lch/blinkenlights/android/vanilla/Song;->FILLED_PROJECTION:[Ljava/lang/String;

    .line 349
    invoke-static {p1, v4, v3}, Lch/blinkenlights/android/vanilla/MediaUtils;->buildFileQuery(Ljava/lang/String;[Ljava/lang/String;Z)Lch/blinkenlights/android/vanilla/QueryTask;

    move-result-object p1

    .line 347
    invoke-static {v2, v0, v1, p1}, Lch/blinkenlights/android/vanilla/Playlist;->addToPlaylist(Landroid/content/Context;JLch/blinkenlights/android/vanilla/QueryTask;)I

    goto :goto_1

    :cond_8
    move-object v2, p0

    move-wide v3, v0

    .line 352
    invoke-direct/range {v2 .. v7}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->updatePlaylistMetadata(JLjava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    :try_start_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v8, p1

    .line 340
    :try_start_3
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz v8, :cond_9

    .line 353
    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v8, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    :goto_3
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p1

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while parsing m3u: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VanillaMusic"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :goto_4
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mLibraryObserver:Lch/blinkenlights/android/medialibrary/LibraryObserver;

    invoke-static {p1}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->registerLibraryObserver(Lch/blinkenlights/android/medialibrary/LibraryObserver;)V

    :cond_a
    return-void
.end method

.method private isM3uFilename(Ljava/lang/String;)Z
    .locals 2

    .line 519
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 521
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    .line 522
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ".m3u"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private queryDatabase(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 577
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v2, Lch/blinkenlights/android/vanilla/PlaylistObserver$Database;->FILLED_PROJECTION:[Ljava/lang/String;

    const-string v1, "playlist_metadata"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private sendUniqueMessage(ILjava/lang/Object;)V
    .locals 3

    shl-int/lit8 v0, p1, 0xa

    .line 291
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 292
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->msgDedupe:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->msgDedupe:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x929

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private shouldDispatch()Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "vanilla-write-check"

    const/4 v2, 0x0

    .line 175
    iget-object v3, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mPlaylists:Ljava/io/File;

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 176
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    const/4 v1, 0x1

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method private updatePlaylistMetadata(JLjava/lang/String;J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-ltz v2, :cond_0

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePlaylistMetadata of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to hash "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->XT(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 493
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 494
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "name"

    .line 495
    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "hash"

    invoke-virtual {v1, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 498
    invoke-direct {p0, p1, p2}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->deletePlaylistMetadata(J)V

    const/4 p1, 0x0

    const-string p2, "playlist_metadata"

    .line 499
    invoke-virtual {v0, p2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void

    .line 489
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "hash can not be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 217
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->msgDedupe:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 219
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    if-ne v0, v2, :cond_0

    .line 241
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->fullSyncScan()V

    goto :goto_0

    .line 244
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid message type received"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 238
    :cond_1
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->forceM3uImport()V

    goto :goto_0

    .line 234
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    .line 235
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->importM3uPlaylist(Ljava/io/File;)V

    goto :goto_0

    .line 231
    :cond_3
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->dumpAllAsM3uPlaylist()V

    goto :goto_0

    .line 221
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    .line 222
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lch/blinkenlights/android/vanilla/Playlist;->getPlaylist(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    const-string v4, "DUMP_M3U: source of id "

    if-eqz v0, :cond_5

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " exists, dumping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->XT(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->dumpAsM3uPlaylist(J)Ljava/io/File;

    goto :goto_0

    .line 226
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " vanished, scanning all"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->XT(Ljava/lang/String;)V

    .line 227
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->sendUniqueMessage(ILjava/lang/Object;)V

    :goto_0
    return v3
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE playlist_metadata ( _id INTEGER PRIMARY KEY, hash INTEGER NOT NULL, name TEXT NOT NULL )"

    .line 190
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method public unregister()V
    .locals 2

    .line 152
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mLibraryObserver:Lch/blinkenlights/android/medialibrary/LibraryObserver;

    invoke-static {v0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->unregisterLibraryObserver(Lch/blinkenlights/android/medialibrary/LibraryObserver;)V

    .line 153
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 155
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :goto_0
    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mHandlerThread:Landroid/os/HandlerThread;

    .line 161
    iput-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method
