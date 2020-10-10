.class public Lch/blinkenlights/android/vanilla/Playlist;
.super Ljava/lang/Object;
.source "Playlist.java"


# direct methods
.method public static addToPlaylist(Landroid/content/Context;JLch/blinkenlights/android/vanilla/QueryTask;)I
    .locals 3

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-virtual {p3, p0}, Lch/blinkenlights/android/vanilla/QueryTask;->runQuery(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 133
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 134
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    :cond_0
    invoke-static {p0, p1, p2, v0}, Lch/blinkenlights/android/vanilla/Playlist;->addToPlaylist(Landroid/content/Context;JLjava/util/ArrayList;)I

    move-result p0

    return p0
.end method

.method public static addToPlaylist(Landroid/content/Context;JLjava/util/ArrayList;)I
    .locals 3
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

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 153
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->addToPlaylist(Landroid/content/Context;JLjava/util/ArrayList;)I

    move-result p0

    return p0
.end method

.method public static createPlaylist(Landroid/content/Context;Ljava/lang/String;)J
    .locals 5

    .line 111
    invoke-static {p0, p1}, Lch/blinkenlights/android/vanilla/Playlist;->getPlaylist(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 113
    invoke-static {p0, v0, v1}, Lch/blinkenlights/android/vanilla/Playlist;->deletePlaylist(Landroid/content/Context;J)V

    .line 115
    :cond_0
    invoke-static {p0, p1}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static deletePlaylist(Landroid/content/Context;J)V
    .locals 0

    .line 182
    invoke-static {p0, p1, p2}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->removePlaylist(Landroid/content/Context;J)Z

    return-void
.end method

.method public static getFavoritesId(Landroid/content/Context;Z)J
    .locals 6

    .line 205
    sget v0, Lch/blinkenlights/android/vanilla/R$string;->playlist_favorites:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {p0, v0}, Lch/blinkenlights/android/vanilla/Playlist;->getPlaylist(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 209
    invoke-static {p0, v0}, Lch/blinkenlights/android/vanilla/Playlist;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    :cond_0
    return-wide v1
.end method

.method public static getPlaylist(Landroid/content/Context;Ljava/lang/String;)J
    .locals 7

    const-string v0, "_id"

    .line 63
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    .line 65
    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const-string v2, "playlists"

    const-string v4, "name=?"

    const/4 v6, 0x0

    move-object v1, p0

    .line 66
    invoke-static/range {v1 .. v6}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->queryLibrary(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const-wide/16 v1, -0x1

    if-eqz p0, :cond_1

    .line 69
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 70
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    move-wide v1, v0

    .line 71
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide v1
.end method

.method public static getPlaylist(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7

    const-string v0, "name"

    .line 87
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    .line 89
    new-array v5, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v5, p2

    const-string v2, "playlists"

    const-string v4, "_id=?"

    const/4 v6, 0x0

    move-object v1, p0

    .line 90
    invoke-static/range {v1 .. v6}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->queryLibrary(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 93
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 95
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p1
.end method

.method public static isInPlaylist(Landroid/content/Context;JLch/blinkenlights/android/vanilla/Song;)Z
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    cmp-long v3, p1, v1

    if-eqz v3, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 228
    new-array v6, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v0

    iget-wide p1, p3, Lch/blinkenlights/android/vanilla/Song;->id:J

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v6, p2

    .line 230
    sget-object v4, Lch/blinkenlights/android/vanilla/Song;->EMPTY_PLAYLIST_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const-string v5, "playlist_id=? AND song_id=?"

    const-string v3, "playlists_songs"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->queryLibrary(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 232
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 233
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return v0
.end method

.method public static queryPlaylists(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 8

    const-string v0, "_id"

    const-string v1, "name"

    .line 47
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v3, "playlists"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "name"

    move-object v2, p0

    .line 49
    invoke-static/range {v2 .. v7}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->queryLibrary(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static removeFromPlaylist(Landroid/content/Context;JLjava/util/ArrayList;)I
    .locals 3
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

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, ", "

    .line 170
    invoke-static {v0, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p3

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "song_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ") AND "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "playlist_id"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 172
    invoke-static {p0, p1, p2}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->removeFromPlaylist(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static renamePlaylist(Landroid/content/Context;JLjava/lang/String;)V
    .locals 0

    .line 194
    invoke-static {p0, p1, p2, p3}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->renamePlaylist(Landroid/content/Context;JLjava/lang/String;)J

    return-void
.end method
