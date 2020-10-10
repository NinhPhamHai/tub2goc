.class public Lch/blinkenlights/android/vanilla/MediaUtils;
.super Ljava/lang/Object;
.source "MediaUtils.java"


# static fields
.field private static sAllSongs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lch/blinkenlights/android/vanilla/Song;",
            ">;"
        }
    .end annotation
.end field

.field private static sAllSongsAS:Z

.field private static sRandom:Ljava/util/Random;

.field private static sSongCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lch/blinkenlights/android/vanilla/MediaUtils;->sAllSongs:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 131
    sput v0, Lch/blinkenlights/android/vanilla/MediaUtils;->sSongCount:I

    return-void
.end method

.method private static addDirEndSlash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 506
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    .line 507
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static buildFileQuery(Ljava/lang/String;[Ljava/lang/String;Z)Lch/blinkenlights/android/vanilla/QueryTask;
    .locals 6

    .line 525
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/MediaUtils;->sanitizeMediaPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 531
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lch/blinkenlights/android/vanilla/MediaUtils;->addDirEndSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "%"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "path LIKE ?"

    goto :goto_0

    :cond_0
    const-string p2, "path = ?"

    :goto_0
    move-object v3, p2

    .line 535
    new-instance p2, Lch/blinkenlights/android/vanilla/QueryTask;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p0, v4, v0

    const-string v1, "_songs_albums_artists"

    const-string v5, "path"

    move-object v0, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lch/blinkenlights/android/vanilla/QueryTask;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x7

    .line 536
    iput p0, p2, Lch/blinkenlights/android/vanilla/QueryTask;->type:I

    return-object p2
.end method

.method private static buildMediaQuery(IJ[Ljava/lang/String;Ljava/lang/String;)Lch/blinkenlights/android/vanilla/QueryTask;
    .locals 7

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p4, :cond_0

    .line 159
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " AND "

    .line 160
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p0, :cond_6

    const/4 p4, 0x1

    if-eq p0, p4, :cond_5

    const/4 p4, 0x2

    if-eq p0, p4, :cond_4

    const/4 p4, 0x4

    if-eq p0, p4, :cond_3

    const/4 p4, 0x5

    if-eq p0, p4, :cond_2

    const/4 p4, 0x6

    if-ne p0, p4, :cond_1

    const-string p4, "composer_id"

    .line 174
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 184
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid type specified: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p4, "albumartist_id"

    .line 171
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string p4, "_genre_id"

    .line 181
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string p4, "_id"

    .line 165
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    const-string p4, "album_id"

    .line 177
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "album_sort,disc_num,song_num"

    goto :goto_1

    :cond_6
    const-string p4, "artist_id"

    .line 168
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p4, "artist_sort,album_sort,disc_num,song_num"

    :goto_1
    move-object v6, p4

    const/16 p4, 0x3d

    .line 187
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 190
    new-instance p1, Lch/blinkenlights/android/vanilla/QueryTask;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v2, "_songs_albums_artists"

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v1 .. v6}, Lch/blinkenlights/android/vanilla/QueryTask;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iput p0, p1, Lch/blinkenlights/android/vanilla/QueryTask;->type:I

    return-object p1
.end method

.method public static buildPlaylistQuery(J[Ljava/lang/String;)Lch/blinkenlights/android/vanilla/QueryTask;
    .locals 8

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playlist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 206
    new-instance p0, Lch/blinkenlights/android/vanilla/QueryTask;

    const-string v7, "position"

    const-string v3, "_playlists_songs"

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lch/blinkenlights/android/vanilla/QueryTask;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 207
    iput p1, p0, Lch/blinkenlights/android/vanilla/QueryTask;->type:I

    return-object p0
.end method

.method public static buildQuery(IJ[Ljava/lang/String;Ljava/lang/String;)Lch/blinkenlights/android/vanilla/QueryTask;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 234
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Specified type not valid: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 232
    :pswitch_0
    invoke-static {p1, p2, p3}, Lch/blinkenlights/android/vanilla/MediaUtils;->buildPlaylistQuery(J[Ljava/lang/String;)Lch/blinkenlights/android/vanilla/QueryTask;

    move-result-object p0

    return-object p0

    .line 230
    :pswitch_1
    invoke-static {p0, p1, p2, p3, p4}, Lch/blinkenlights/android/vanilla/MediaUtils;->buildMediaQuery(IJ[Ljava/lang/String;Ljava/lang/String;)Lch/blinkenlights/android/vanilla/QueryTask;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .locals 4

    .line 462
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 464
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 465
    invoke-static {v3}, Lch/blinkenlights/android/vanilla/MediaUtils;->deleteFile(Ljava/io/File;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 468
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method private static getAllSongs(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lch/blinkenlights/android/vanilla/Song;",
            ">;"
        }
    .end annotation

    .line 331
    new-instance v6, Lch/blinkenlights/android/vanilla/QueryTask;

    sget-object v2, Lch/blinkenlights/android/vanilla/Song;->FILLED_PROJECTION:[Ljava/lang/String;

    const-string v1, "_songs_albums_artists"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lch/blinkenlights/android/vanilla/QueryTask;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {v6, p0}, Lch/blinkenlights/android/vanilla/QueryTask;->runQuery(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object p0

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 338
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    new-instance v1, Lch/blinkenlights/android/vanilla/Song;

    const-wide/16 v2, -0x1

    invoke-direct {v1, v2, v3}, Lch/blinkenlights/android/vanilla/Song;-><init>(J)V

    .line 340
    invoke-virtual {v1, p0}, Lch/blinkenlights/android/vanilla/Song;->populate(Landroid/database/Cursor;)V

    .line 341
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 343
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public static getAndroidMediaIds(Landroid/content/Context;Lch/blinkenlights/android/vanilla/Song;)[J
    .locals 10

    const/4 v0, 0x3

    .line 589
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    const-string v1, "_id"

    const-string v2, "album_id"

    const-string v3, "artist_id"

    .line 590
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 592
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_data=?"

    const/4 p0, 0x1

    new-array v8, p0, [Ljava/lang/String;

    iget-object p0, p1, Lch/blinkenlights/android/vanilla/Song;->path:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v8, v1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 594
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 595
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 596
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 598
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 601
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wowies: No permission to read EXTERNAL_CONTENT_URI for song "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lch/blinkenlights/android/vanilla/Song;->path:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VanillaMusic"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-object v0

    nop

    :array_0
    .array-data 8
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static getCurrentIdForType(Lch/blinkenlights/android/vanilla/Song;I)J
    .locals 3

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    return-wide v0

    .line 624
    :cond_1
    iget-wide p0, p0, Lch/blinkenlights/android/vanilla/Song;->id:J

    return-wide p0

    .line 622
    :cond_2
    iget-wide p0, p0, Lch/blinkenlights/android/vanilla/Song;->albumId:J

    return-wide p0

    .line 620
    :cond_3
    iget-wide p0, p0, Lch/blinkenlights/android/vanilla/Song;->artistId:J

    return-wide p0
.end method

.method public static getCursorForFileQuery(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12

    .line 546
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lch/blinkenlights/android/vanilla/Song;->FILLED_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 547
    new-instance v1, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;

    invoke-direct {v1, p0}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;-><init>(Ljava/lang/String;)V

    const-string v2, "TITLE"

    .line 548
    invoke-virtual {v1, v2}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ALBUM"

    .line 549
    invoke-virtual {v1, v3}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ARTIST"

    .line 550
    invoke-virtual {v1, v4}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "DURATION"

    .line 551
    invoke-virtual {v1, v5}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 559
    invoke-static {p0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->hash63(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    mul-long v5, v5, v7

    const-wide/16 v7, -0x2

    cmp-long v9, v5, v7

    if-lez v9, :cond_0

    move-wide v5, v7

    :cond_0
    const/16 v7, 0xb

    .line 564
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v7, v6

    const/4 v5, 0x1

    aput-object p0, v7, v5

    const/4 p0, 0x2

    const-string v5, ""

    aput-object v5, v7, p0

    const/4 v8, 0x3

    aput-object v5, v7, v8

    const/4 v9, 0x4

    aput-object v5, v7, v9

    const/4 v5, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v5

    const/4 v5, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x7

    aput-object v5, v7, v10

    const/16 v5, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v5

    const/16 v5, 0x9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xa

    aput-object v5, v7, v6

    if-eqz v2, :cond_1

    aput-object v2, v7, p0

    :cond_1
    if-eqz v3, :cond_2

    aput-object v3, v7, v8

    :cond_2
    if-eqz v4, :cond_3

    aput-object v4, v7, v9

    :cond_3
    if-eqz v1, :cond_4

    .line 573
    invoke-static {v1, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v7, v10

    .line 575
    :cond_4
    invoke-virtual {v0, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_5
    return-object v0
.end method

.method public static getRandom()Ljava/util/Random;
    .locals 1

    .line 138
    sget-object v0, Lch/blinkenlights/android/vanilla/MediaUtils;->sRandom:Ljava/util/Random;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lch/blinkenlights/android/vanilla/MediaUtils;->sRandom:Ljava/util/Random;

    .line 140
    :cond_0
    sget-object v0, Lch/blinkenlights/android/vanilla/MediaUtils;->sRandom:Ljava/util/Random;

    return-object v0
.end method

.method public static getRandomSongs(Landroid/content/Context;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lch/blinkenlights/android/vanilla/Song;",
            ">;"
        }
    .end annotation

    .line 417
    sget-object v0, Lch/blinkenlights/android/vanilla/MediaUtils;->sAllSongs:Ljava/util/ArrayList;

    .line 419
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lch/blinkenlights/android/vanilla/MediaUtils;->sAllSongsAS:Z

    if-eq v1, p1, :cond_1

    .line 420
    :cond_0
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/MediaUtils;->getAllSongs(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    sput-object p0, Lch/blinkenlights/android/vanilla/MediaUtils;->sAllSongs:Ljava/util/ArrayList;

    .line 421
    sput-boolean p1, Lch/blinkenlights/android/vanilla/MediaUtils;->sAllSongsAS:Z

    .line 422
    sget-object p0, Lch/blinkenlights/android/vanilla/MediaUtils;->sAllSongs:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lch/blinkenlights/android/vanilla/MediaUtils;->shuffle(Ljava/util/List;Z)V

    .line 423
    sget-object v0, Lch/blinkenlights/android/vanilla/MediaUtils;->sAllSongs:Ljava/util/ArrayList;

    .line 425
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sput p0, Lch/blinkenlights/android/vanilla/MediaUtils;->sSongCount:I

    .line 428
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 430
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v1, 0x0

    .line 432
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/blinkenlights/android/vanilla/Song;

    iget-wide v2, v2, Lch/blinkenlights/android/vanilla/Song;->albumId:J

    .line 439
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lch/blinkenlights/android/vanilla/Song;

    const/4 v5, 0x1

    if-nez p1, :cond_3

    .line 444
    iget v6, v4, Lch/blinkenlights/android/vanilla/Song;->flags:I

    or-int/2addr v6, v5

    iput v6, v4, Lch/blinkenlights/android/vanilla/Song;->flags:I

    .line 447
    :cond_3
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_4

    .line 448
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lch/blinkenlights/android/vanilla/Song;

    iget-wide v6, v4, Lch/blinkenlights/android/vanilla/Song;->albumId:J

    cmp-long v4, v6, v2

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_2

    :cond_5
    return-object p0
.end method

.method public static getSongByTypeId(Landroid/content/Context;IJ)Lch/blinkenlights/android/vanilla/Song;
    .locals 3

    .line 394
    new-instance v0, Lch/blinkenlights/android/vanilla/Song;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Lch/blinkenlights/android/vanilla/Song;-><init>(J)V

    .line 395
    sget-object v1, Lch/blinkenlights/android/vanilla/Song;->FILLED_PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2, p3, v1, v2}, Lch/blinkenlights/android/vanilla/MediaUtils;->buildQuery(IJ[Ljava/lang/String;Ljava/lang/String;)Lch/blinkenlights/android/vanilla/QueryTask;

    move-result-object p1

    .line 396
    invoke-virtual {p1, p0}, Lch/blinkenlights/android/vanilla/QueryTask;->runQuery(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 398
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 399
    invoke-interface {p0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 400
    invoke-virtual {v0, p0}, Lch/blinkenlights/android/vanilla/Song;->populate(Landroid/database/Cursor;)V

    .line 402
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 404
    :cond_1
    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/Song;->isFilled()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public static isSongAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 317
    sget v0, Lch/blinkenlights/android/vanilla/MediaUtils;->sSongCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 318
    invoke-static {p0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->getLibrarySize(Landroid/content/Context;)I

    move-result p0

    sput p0, Lch/blinkenlights/android/vanilla/MediaUtils;->sSongCount:I

    .line 321
    :cond_0
    sget p0, Lch/blinkenlights/android/vanilla/MediaUtils;->sSongCount:I

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static onMediaChange()V
    .locals 1

    const/4 v0, -0x1

    .line 353
    sput v0, Lch/blinkenlights/android/vanilla/MediaUtils;->sSongCount:I

    .line 354
    sget-object v0, Lch/blinkenlights/android/vanilla/MediaUtils;->sAllSongs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static queryGenreForSong(Landroid/content/Context;J)J
    .locals 7

    const-string v0, "_genre_id"

    .line 246
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    .line 248
    new-array v5, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v5, p2

    const-string v4, "song_id=?"

    const-string v2, "genres_songs"

    const/4 v6, 0x0

    move-object v1, p0

    .line 250
    invoke-static/range {v1 .. v6}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->queryLibrary(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 252
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 253
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    return-wide p0

    .line 254
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static sanitizeMediaPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 478
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 479
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/Android"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_2

    if-eqz p0, :cond_2

    move-object v4, p0

    .line 485
    :cond_0
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-nez v7, :cond_1

    .line 486
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 487
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object p0, v5

    goto :goto_0

    .line 493
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static shuffle(Ljava/util/List;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/blinkenlights/android/vanilla/Song;",
            ">;Z)V"
        }
    .end annotation

    .line 266
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 270
    :cond_0
    invoke-static {}, Lch/blinkenlights/android/vanilla/MediaUtils;->getRandom()Ljava/util/Random;

    move-result-object v1

    if-eqz p1, :cond_5

    .line 272
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 273
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 276
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    .line 278
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lch/blinkenlights/android/vanilla/Song;

    .line 279
    iget-wide v6, v5, Lch/blinkenlights/android/vanilla/Song;->albumId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 280
    iget-wide v5, v5, Lch/blinkenlights/android/vanilla/Song;->albumId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 286
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 287
    invoke-static {v3, v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 290
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 291
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 292
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 293
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lch/blinkenlights/android/vanilla/Song;

    .line 295
    :cond_4
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_3

    .line 298
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lch/blinkenlights/android/vanilla/Song;

    .line 302
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, v5, Lch/blinkenlights/android/vanilla/Song;->albumId:J

    cmp-long v10, v6, v8

    if-eqz v10, :cond_4

    goto :goto_1

    .line 305
    :cond_5
    invoke-static {p0, v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    :cond_6
    return-void
.end method
