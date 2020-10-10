.class public Lch/blinkenlights/android/vanilla/PlayCountsHelper;
.super Ljava/lang/Object;
.source "PlayCountsHelper.java"


# direct methods
.method public static countSong(Landroid/content/Context;Lch/blinkenlights/android/vanilla/Song;Z)V
    .locals 2

    .line 35
    invoke-static {p1}, Lch/blinkenlights/android/vanilla/Song;->getId(Lch/blinkenlights/android/vanilla/Song;)J

    move-result-wide v0

    .line 36
    invoke-static {p0, v0, v1, p2}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->updateSongPlayCounts(Landroid/content/Context;JZ)V

    return-void
.end method

.method public static getTopSongs(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "_id"

    .line 46
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v3, "songs"

    const-string v5, "playcount > 0"

    const/4 v6, 0x0

    const-string v7, "playcount DESC"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->queryLibrary(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 47
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    if-lez p1, :cond_0

    const/4 v1, 0x0

    .line 48
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 51
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0
.end method
