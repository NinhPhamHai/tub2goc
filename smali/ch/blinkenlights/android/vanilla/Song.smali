.class public Lch/blinkenlights/android/vanilla/Song;
.super Ljava/lang/Object;
.source "Song.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lch/blinkenlights/android/vanilla/Song;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY_PLAYLIST_PROJECTION:[Ljava/lang/String;

.field public static final EMPTY_PROJECTION:[Ljava/lang/String;

.field public static final FILLED_PLAYLIST_PROJECTION:[Ljava/lang/String;

.field public static final FILLED_PROJECTION:[Ljava/lang/String;

.field private static sCoverCache:Lch/blinkenlights/android/vanilla/CoverCache;


# instance fields
.field public album:Ljava/lang/String;

.field public albumId:J

.field public artist:Ljava/lang/String;

.field public artistId:J

.field public discNumber:I

.field public duration:J

.field public flags:I

.field public id:J

.field public path:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public trackNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "_id"

    .line 52
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lch/blinkenlights/android/vanilla/Song;->EMPTY_PROJECTION:[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "path"

    const-string v3, "title"

    const-string v4, "album"

    const-string v5, "artist"

    const-string v6, "album_id"

    const-string v7, "artist_id"

    const-string v8, "duration"

    const-string v9, "song_num"

    const-string v10, "disc_num"

    const-string v11, "_flags"

    .line 56
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lch/blinkenlights/android/vanilla/Song;->FILLED_PROJECTION:[Ljava/lang/String;

    const-string v0, "song_id"

    .line 70
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lch/blinkenlights/android/vanilla/Song;->EMPTY_PLAYLIST_PROJECTION:[Ljava/lang/String;

    const-string v1, "song_id"

    const-string v2, "path"

    const-string v3, "title"

    const-string v4, "album"

    const-string v5, "artist"

    const-string v6, "album_id"

    const-string v7, "artist_id"

    const-string v8, "duration"

    const-string v9, "song_num"

    const-string v10, "disc_num"

    const-string v11, "_flags"

    .line 74
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lch/blinkenlights/android/vanilla/Song;->FILLED_PLAYLIST_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 91
    sput-object v0, Lch/blinkenlights/android/vanilla/Song;->sCoverCache:Lch/blinkenlights/android/vanilla/CoverCache;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-wide p1, p0, Lch/blinkenlights/android/vanilla/Song;->id:J

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-wide p1, p0, Lch/blinkenlights/android/vanilla/Song;->id:J

    .line 158
    iput p3, p0, Lch/blinkenlights/android/vanilla/Song;->flags:I

    return-void
.end method

.method private getCoverInternal(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 5

    .line 257
    sget v0, Lch/blinkenlights/android/vanilla/CoverCache;->mCoverLoadMode:I

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lch/blinkenlights/android/vanilla/Song;->id:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    iget v0, p0, Lch/blinkenlights/android/vanilla/Song;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    sget-object v0, Lch/blinkenlights/android/vanilla/Song;->sCoverCache:Lch/blinkenlights/android/vanilla/CoverCache;

    if-nez v0, :cond_1

    .line 261
    new-instance v0, Lch/blinkenlights/android/vanilla/CoverCache;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/blinkenlights/android/vanilla/CoverCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lch/blinkenlights/android/vanilla/Song;->sCoverCache:Lch/blinkenlights/android/vanilla/CoverCache;

    .line 263
    :cond_1
    sget-object v0, Lch/blinkenlights/android/vanilla/Song;->sCoverCache:Lch/blinkenlights/android/vanilla/CoverCache;

    invoke-virtual {v0, p1, p0, p2}, Lch/blinkenlights/android/vanilla/CoverCache;->getCoverFromSong(Landroid/content/Context;Lch/blinkenlights/android/vanilla/Song;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_2

    .line 266
    iget p2, p0, Lch/blinkenlights/android/vanilla/Song;->flags:I

    or-int/lit8 p2, p2, 0x2

    iput p2, p0, Lch/blinkenlights/android/vanilla/Song;->flags:I

    :cond_2
    return-object p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getId(Lch/blinkenlights/android/vanilla/Song;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 215
    :cond_0
    iget-wide v0, p0, Lch/blinkenlights/android/vanilla/Song;->id:J

    return-wide v0
.end method


# virtual methods
.method public compareTo(Lch/blinkenlights/android/vanilla/Song;)I
    .locals 5

    .line 281
    iget-wide v0, p0, Lch/blinkenlights/android/vanilla/Song;->albumId:J

    iget-wide v2, p1, Lch/blinkenlights/android/vanilla/Song;->albumId:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1

    .line 284
    :cond_1
    iget v0, p0, Lch/blinkenlights/android/vanilla/Song;->discNumber:I

    iget v1, p1, Lch/blinkenlights/android/vanilla/Song;->discNumber:I

    if-eq v0, v1, :cond_2

    sub-int/2addr v0, v1

    return v0

    .line 287
    :cond_2
    iget v0, p0, Lch/blinkenlights/android/vanilla/Song;->trackNumber:I

    iget p1, p1, Lch/blinkenlights/android/vanilla/Song;->trackNumber:I

    if-eq v0, p1, :cond_3

    sub-int/2addr v0, p1

    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 36
    check-cast p1, Lch/blinkenlights/android/vanilla/Song;

    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/Song;->compareTo(Lch/blinkenlights/android/vanilla/Song;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 302
    :cond_0
    instance-of v1, p1, Lch/blinkenlights/android/vanilla/Song;

    if-nez v1, :cond_1

    return v0

    .line 309
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/Song;->hashCode()I

    move-result v1

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getCover(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    .line 236
    sget v0, Lch/blinkenlights/android/vanilla/CoverCache;->SIZE_LARGE:I

    invoke-direct {p0, p1, v0}, Lch/blinkenlights/android/vanilla/Song;->getCoverInternal(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getSmallCover(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    .line 246
    sget v0, Lch/blinkenlights/android/vanilla/CoverCache;->SIZE_SMALL:I

    invoke-direct {p0, p1, v0}, Lch/blinkenlights/android/vanilla/Song;->getCoverInternal(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getTrackAndDiscNumber()Ljava/lang/String;
    .locals 4

    .line 222
    iget v0, p0, Lch/blinkenlights/android/vanilla/Song;->trackNumber:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    iget v1, p0, Lch/blinkenlights/android/vanilla/Song;->discNumber:I

    if-lez v1, :cond_0

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lch/blinkenlights/android/vanilla/Song;->discNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, " (%d\ud83d\udcbf)"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 318
    iget-wide v0, p0, Lch/blinkenlights/android/vanilla/Song;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFilled()Z
    .locals 5

    .line 174
    iget-wide v0, p0, Lch/blinkenlights/android/vanilla/Song;->id:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/Song;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRandom()Z
    .locals 2

    .line 166
    iget v0, p0, Lch/blinkenlights/android/vanilla/Song;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public populate(Landroid/database/Cursor;)V
    .locals 3

    const/4 v0, 0x0

    .line 184
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lch/blinkenlights/android/vanilla/Song;->id:J

    const/4 v0, 0x1

    .line 185
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/Song;->path:Ljava/lang/String;

    const/4 v0, 0x2

    .line 186
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lch/blinkenlights/android/vanilla/Song;->title:Ljava/lang/String;

    const/4 v1, 0x3

    .line 187
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lch/blinkenlights/android/vanilla/Song;->album:Ljava/lang/String;

    const/4 v1, 0x4

    .line 188
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lch/blinkenlights/android/vanilla/Song;->artist:Ljava/lang/String;

    const/4 v1, 0x5

    .line 189
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lch/blinkenlights/android/vanilla/Song;->albumId:J

    const/4 v1, 0x6

    .line 190
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lch/blinkenlights/android/vanilla/Song;->artistId:J

    const/4 v1, 0x7

    .line 191
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lch/blinkenlights/android/vanilla/Song;->duration:J

    const/16 v1, 0x8

    .line 192
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lch/blinkenlights/android/vanilla/Song;->trackNumber:I

    const/16 v1, 0x9

    .line 193
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lch/blinkenlights/android/vanilla/Song;->discNumber:I

    const/16 v1, 0xa

    .line 197
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 201
    iget p1, p0, Lch/blinkenlights/android/vanilla/Song;->flags:I

    or-int/2addr p1, v0

    iput p1, p0, Lch/blinkenlights/android/vanilla/Song;->flags:I

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    .line 273
    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lch/blinkenlights/android/vanilla/Song;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lch/blinkenlights/android/vanilla/Song;->albumId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/Song;->path:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%d %d %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
