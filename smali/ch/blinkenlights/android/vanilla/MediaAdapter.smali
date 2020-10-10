.class public Lch/blinkenlights/android/vanilla/MediaAdapter;
.super Lch/blinkenlights/android/vanilla/SortableAdapter;
.source "MediaAdapter.java"

# interfaces
.implements Lch/blinkenlights/android/vanilla/LibraryAdapter;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/blinkenlights/android/vanilla/MediaAdapter$SectionIndex;
    }
.end annotation


# static fields
.field private static final SPACE_SPLIT:Ljava/util/regex/Pattern;


# instance fields
.field private final mActivity:Lch/blinkenlights/android/vanilla/LibraryActivity;

.field private mAdapterSortValues:[Ljava/lang/String;

.field private mAlphabet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lch/blinkenlights/android/vanilla/MediaAdapter$SectionIndex;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraint:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCoverCacheType:I

.field private mCursor:Landroid/database/Cursor;

.field private mExpandable:Z

.field private mFieldKeys:[Ljava/lang/String;

.field private mFields:[Ljava/lang/String;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mLimiter:Lch/blinkenlights/android/vanilla/Limiter;

.field private mProjection:[Ljava/lang/String;

.field private mSource:Ljava/lang/String;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\s+"

    .line 66
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->SPACE_SPLIT:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILch/blinkenlights/android/vanilla/Limiter;Lch/blinkenlights/android/vanilla/LibraryActivity;)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    .line 154
    invoke-direct/range {p0 .. p0}, Lch/blinkenlights/android/vanilla/SortableAdapter;-><init>()V

    .line 139
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x200

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mAlphabet:Ljava/util/List;

    move-object/from16 v3, p1

    .line 155
    iput-object v3, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mContext:Landroid/content/Context;

    .line 156
    iput-object v2, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mActivity:Lch/blinkenlights/android/vanilla/LibraryActivity;

    .line 157
    iput v1, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mType:I

    move-object/from16 v3, p3

    .line 158
    iput-object v3, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    .line 160
    iget-object v3, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mActivity:Lch/blinkenlights/android/vanilla/LibraryActivity;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const-string v3, "layout_inflater"

    .line 161
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mInflater:Landroid/view/LayoutInflater;

    goto :goto_0

    .line 163
    :cond_0
    iput-object v4, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 167
    :goto_0
    iget v2, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mType:I

    iput v2, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mCoverCacheType:I

    const-string v2, "duration %1$s"

    const/4 v3, 0x4

    const-string v6, "album_sort"

    const-string v7, "album"

    const-string v8, "_id"

    const/4 v9, 0x3

    const-string v10, "duration"

    const-string v11, "artist_sort"

    const-string v12, "artist"

    const-string v13, "mtime %1$s"

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    .line 239
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid value for type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    const-string v1, "_composers"

    .line 186
    iput-object v1, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mSource:Ljava/lang/String;

    const-string v1, "composer"

    .line 187
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mFields:[Ljava/lang/String;

    const-string v1, "composer_sort"

    .line 188
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mFieldKeys:[Ljava/lang/String;

    .line 189
    new-array v1, v14, [I

    sget v2, Lch/blinkenlights/android/vanilla/R$string;->title:I

    aput v2, v1, v15

    sget v2, Lch/blinkenlights/android/vanilla/R$string;->date_added:I

    aput v2, v1, v5

    iput-object v1, v0, Lch/blinkenlights/android/vanilla/SortableAdapter;->mSortEntries:[I

    const-string v1, "composer_sort %1$s"

    .line 190
    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mAdapterSortValues:[Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_1
    const-string v1, "_albumartists"

    .line 179
    iput-object v1, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mSource:Ljava/lang/String;

    const-string v1, "albumartist"

    .line 180
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mFields:[Ljava/lang/String;

    const-string v1, "albumartist_sort"

    .line 181
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mFieldKeys:[Ljava/lang/String;

    .line 182
    new-array v1, v14, [I

    sget v2, Lch/blinkenlights/android/vanilla/R$string;->title:I

    aput v2, v1, v15

    sget v2, Lch/blinkenlights/android/vanilla/R$string;->date_added:I

    aput v2, v1, v5

    iput-object v1, v0, Lch/blinkenlights/android/vanilla/SortableAdapter;->mSortEntries:[I

    const-string v1, "albumartist_sort %1$s"

    .line 183
    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mAdapterSortValues:[Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_2
    const-string v1, "genres"

    .line 232
    iput-object v1, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mSource:Ljava/lang/String;

    const-string v1, "_genre"

    .line 233
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mFields:[Ljava/lang/String;

    const-string v1, "_genre_sort"

    .line 234
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mFieldKeys:[Ljava/lang/String;

    .line 235
    new-array v1, v5, [I

    sget v2, Lch/blinkenlights/android/vanilla/R$string;->title:I

    aput v2, v1, v15

    iput-object v1, v0, Lch/blinkenlights/android/vanilla/SortableAdapter;->mSortEntries:[I

    const-string v1, "_genre_sort %1$s"

    .line 236
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mAdapterSortValues:[Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_3
    const-string v1, "_playlists"

    .line 223
    iput-object v1, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mSource:Ljava/lang/String;

    const-string v1, "name"

    .line 224
    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mFields:[Ljava/lang/String;

    const-string v1, "name_sort"

    .line 225
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mFieldKeys:[Ljava/lang/String;

    .line 226
    new-array v1, v9, [I

    sget v3, Lch/blinkenlights/android/vanilla/R$string;->title:I

    aput v3, v1, v15

    sget v3, Lch/blinkenlights/android/vanilla/R$string;->date_added:I

    aput v3, v1, v5

    sget v3, Lch/blinkenlights/android/vanilla/R$string;->duration:I

    aput v3, v1, v14

    iput-object v1, v0, Lch/blinkenlights/android/vanilla/SortableAdapter;->mSortEntries:[I

    const-string v1, "name_sort %1$s"

    const-string v3, "_id %1$s"

    .line 227
    filled-new-array {v1, v3, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mAdapterSortValues:[Ljava/lang/String;

    .line 229
    iput-boolean v5, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mExpandable:Z

    goto/16 :goto_1

    :pswitch_4
    const-string v1, "_songs_albums_artists"

    .line 203
    iput-object v1, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mSource:Ljava/lang/String;

    const-string v1, "title"

    .line 204
    filled-new-array {v1, v7, v12, v10}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mFields:[Ljava/lang/String;

    const-string v1, "title_sort"

    .line 205
    filled-new-array {v1, v6, v11, v4}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mFieldKeys:[Ljava/lang/String;

    const/16 v1, 0x9

    .line 206
    new-array v1, v1, [I

    sget v2, Lch/blinkenlights/android/vanilla/R$string;->title:I

    aput v2, v1, v15

    sget v2, Lch/blinkenlights/android/vanilla/R$string;->artist_album_track:I

    aput v2, v1, v5

    sget v2, Lch/blinkenlights/android/vanilla/R$string;->artist_album_title:I

    aput v2, v1, v14

    sget v2, Lch/blinkenlights/android/vanilla/R$string;->album_track:I

    aput v2, v1, v9

    sget v2, Lch/blinkenlights/android/vanilla/R$string;->year:I

    aput v2, v1, v3

    sget v2, Lch/blinkenlights/android/vanilla/R$string;->date_added:I

    const/4 v3, 0x5

    aput v2, v1, v3

    const/4 v2, 0x6

    sget v3, Lch/blinkenlights/android/vanilla/R$string;->song_playcount:I

    aput v3, v1, v2

    const/4 v2, 0x7

    sget v3, Lch/blinkenlights/android/vanilla/R$string;->filename:I

    aput v3, v1, v2

    const/16 v2, 0x8

    sget v3, Lch/blinkenlights/android/vanilla/R$string;->duration:I

    aput v3, v1, v2

    iput-object v1, v0, Lch/blinkenlights/android/vanilla/SortableAdapter;->mSortEntries:[I

    const-string v16, "title_sort %1$s"

    const-string v17, "artist_sort %1$s,album_sort %1$s,disc_num,song_num"

    const-string v18, "artist_sort %1$s,album_sort %1$s,title_sort %1$s"

    const-string v19, "album_sort %1$s,disc_num,song_num"

    const-string v20, "year %1$s,album_sort %1$s,disc_num,song_num"

    const-string v21, "mtime %1$s,disc_num,song_num"

    const-string v22, "playcount %1$s,disc_num,song_num"

    const-string v23, "path %1$s"

    const-string v24, "duration %1$s"

    .line 208
    filled-new-array/range {v16 .. v24}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mAdapterSortValues:[Ljava/lang/String;

    .line 219
    iput v5, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mCoverCacheType:I

    const-string v1, "album_id"

    goto :goto_2

    :pswitch_5
    const-string v1, "_albums_artists"

    .line 193
    iput-object v1, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mSource:Ljava/lang/String;

    .line 194
    filled-new-array {v7, v12, v10}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mFields:[Ljava/lang/String;

    .line 195
    filled-new-array {v6, v11}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mFieldKeys:[Ljava/lang/String;

    const/4 v1, 0x5

    .line 196
    new-array v1, v1, [I

    sget v4, Lch/blinkenlights/android/vanilla/R$string;->title:I

    aput v4, v1, v15

    sget v4, Lch/blinkenlights/android/vanilla/R$string;->artist_album:I

    aput v4, v1, v5

    sget v4, Lch/blinkenlights/android/vanilla/R$string;->year:I

    aput v4, v1, v14

    sget v4, Lch/blinkenlights/android/vanilla/R$string;->date_added:I

    aput v4, v1, v9

    sget v4, Lch/blinkenlights/android/vanilla/R$string;->duration:I

    aput v4, v1, v3

    iput-object v1, v0, Lch/blinkenlights/android/vanilla/SortableAdapter;->mSortEntries:[I

    const-string v1, "album_sort %1$s"

    const-string v3, "artist_sort %1$s,album_sort %1$s"

    const-string v4, "primary_album_year %1$s"

    .line 197
    filled-new-array {v1, v3, v4, v13, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mAdapterSortValues:[Ljava/lang/String;

    goto :goto_1

    :pswitch_6
    const-string v1, "_artists"

    .line 172
    iput-object v1, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mSource:Ljava/lang/String;

    .line 173
    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mFields:[Ljava/lang/String;

    .line 174
    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mFieldKeys:[Ljava/lang/String;

    .line 175
    new-array v1, v14, [I

    sget v2, Lch/blinkenlights/android/vanilla/R$string;->title:I

    aput v2, v1, v15

    sget v2, Lch/blinkenlights/android/vanilla/R$string;->date_added:I

    aput v2, v1, v5

    iput-object v1, v0, Lch/blinkenlights/android/vanilla/SortableAdapter;->mSortEntries:[I

    const-string v1, "artist_sort %1$s"

    .line 176
    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mAdapterSortValues:[Ljava/lang/String;

    :goto_1
    move-object v1, v8

    .line 243
    :goto_2
    iget-object v2, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mFields:[Ljava/lang/String;

    array-length v2, v2

    add-int/2addr v2, v14

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mProjection:[Ljava/lang/String;

    .line 244
    iget-object v2, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mProjection:[Ljava/lang/String;

    aput-object v8, v2, v15

    .line 245
    aput-object v1, v2, v5

    .line 246
    :goto_3
    iget-object v1, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mFields:[Ljava/lang/String;

    array-length v2, v1

    if-ge v15, v2, :cond_1

    .line 247
    iget-object v2, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mProjection:[Ljava/lang/String;

    add-int/lit8 v3, v15, 0x2

    aget-object v1, v1, v15

    aput-object v1, v2, v3

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private buildAlphabet()V
    .locals 11

    .line 684
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mAlphabet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 686
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_d

    .line 687
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 691
    :cond_0
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/MediaAdapter;->getFirstSortColumn()Ljava/lang/String;

    move-result-object v1

    .line 692
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_1

    return-void

    .line 700
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 702
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 707
    :cond_2
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getType(I)I

    move-result v5

    const-string v6, "?"

    if-eqz v5, :cond_b

    const/4 v7, 0x1

    if-eq v5, v7, :cond_8

    const/4 v8, 0x3

    if-eq v5, v8, :cond_3

    goto/16 :goto_1

    .line 723
    :cond_3
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 724
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v9, "THE "

    .line 727
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x4

    .line 728
    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_4
    const-string v9, "AN "

    .line 730
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 731
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_5
    const-string v8, "A "

    .line 733
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x2

    .line 734
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 737
    :cond_6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v7, :cond_7

    move-object v5, v6

    :cond_7
    const/4 v6, 0x0

    .line 740
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    goto :goto_0

    .line 713
    :cond_8
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v6, "mtime"

    .line 714
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 715
    new-instance v6, Ljava/util/Date;

    int-to-long v7, v5

    const-wide/16 v9, 0x3e8

    mul-long v7, v7, v9

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_9
    const-string v6, "duration"

    .line 716
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 717
    div-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    invoke-static {v5, v6}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 719
    :cond_a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 745
    :cond_b
    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 746
    iget-object v4, p0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mAlphabet:Ljava/util/List;

    new-instance v5, Lch/blinkenlights/android/vanilla/MediaAdapter$SectionIndex;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    invoke-direct {v5, p0, v6, v7}, Lch/blinkenlights/android/vanilla/MediaAdapter$SectionIndex;-><init>(Lch/blinkenlights/android/vanilla/MediaAdapter;Ljava/lang/Object;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v4, v6

    .line 749
    :cond_c
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_d
    :goto_2
    return-void
.end method

.method private buildQuery([Ljava/lang/String;Z)Lch/blinkenlights/android/vanilla/QueryTask;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 295
    iget-object v3, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mSource:Ljava/lang/String;

    .line 296
    iget-object v4, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mConstraint:Ljava/lang/String;

    .line 297
    iget-object v5, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    .line 299
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    invoke-virtual/range {p0 .. p0}, Lch/blinkenlights/android/vanilla/SortableAdapter;->getSortModeIndex()I

    move-result v7

    .line 305
    invoke-virtual/range {p0 .. p0}, Lch/blinkenlights/android/vanilla/SortableAdapter;->isSortDescending()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "DESC"

    goto :goto_0

    :cond_0
    const-string v8, "ASC"

    .line 308
    :goto_0
    iget-object v9, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mAdapterSortValues:[Ljava/lang/String;

    aget-object v7, v9, v7

    if-eqz v2, :cond_2

    .line 311
    iget v9, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mType:I

    if-nez v9, :cond_1

    .line 312
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", album_sort %1$s"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 314
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", disc_num, song_num"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_2
    const/4 v9, 0x1

    .line 318
    new-array v10, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const-string v7, " AND "

    if-eqz v4, :cond_8

    .line 321
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_8

    .line 322
    invoke-static {v4}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, " "

    .line 323
    invoke-static {v8}, Landroid/database/DatabaseUtils;->getCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 324
    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 325
    iget-object v8, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mFieldKeys:[Ljava/lang/String;

    .line 327
    array-length v10, v4

    .line 328
    new-array v10, v10, [Ljava/lang/String;

    .line 330
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v13, 0x14

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 331
    aget-object v13, v8, v11

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x1

    .line 332
    :goto_1
    array-length v14, v8

    if-eq v13, v14, :cond_4

    .line 333
    aget-object v14, v8, v13

    if-eqz v14, :cond_3

    const-string/jumbo v15, "||"

    .line 335
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 340
    :cond_4
    :goto_2
    array-length v8, v4

    if-eq v11, v8, :cond_7

    .line 341
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v13, 0x25

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v14, v4, v11

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v10, v11

    if-nez v11, :cond_5

    .line 346
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_6

    .line 347
    :cond_5
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :cond_6
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v8, " LIKE ?"

    .line 349
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_7
    move-object/from16 v16, v10

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    move-object/from16 v16, v4

    :goto_3
    if-eqz v5, :cond_a

    .line 354
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_9

    .line 355
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    :cond_9
    iget-object v4, v5, Lch/blinkenlights/android/vanilla/Limiter;->data:Ljava/lang/Object;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_a
    if-ne v2, v9, :cond_b

    const-string v3, "_songs_albums_artists_huge"

    move-object v14, v1

    goto :goto_4

    .line 363
    :cond_b
    array-length v2, v1

    add-int/2addr v2, v9

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 364
    array-length v1, v1

    invoke-direct/range {p0 .. p0}, Lch/blinkenlights/android/vanilla/MediaAdapter;->getFirstSortColumn()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    move-object v14, v2

    :goto_4
    move-object v13, v3

    .line 367
    new-instance v1, Lch/blinkenlights/android/vanilla/QueryTask;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lch/blinkenlights/android/vanilla/QueryTask;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getFirstSortColumn()Ljava/lang/String;
    .locals 3

    .line 259
    iget v0, p0, Lch/blinkenlights/android/vanilla/SortableAdapter;->mSortMode:I

    if-gez v0, :cond_0

    not-int v0, v0

    .line 260
    :cond_0
    sget-object v1, Lch/blinkenlights/android/vanilla/MediaAdapter;->SPACE_SPLIT:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mAdapterSortValues:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v2, "_sort"

    .line 261
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public buildLimiter(J)Lch/blinkenlights/android/vanilla/Limiter;
    .locals 7

    .line 427
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 430
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eq v3, v1, :cond_2

    .line 431
    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 432
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v6, v4, p1

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 436
    :cond_2
    :goto_1
    iget v1, p0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mType:I

    const-string v3, "%s=%d"

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_7

    if-eq v1, v5, :cond_6

    const/4 v6, 0x4

    if-eq v1, v6, :cond_5

    const/4 v6, 0x5

    if-eq v1, v6, :cond_4

    const/4 v6, 0x6

    if-ne v1, v6, :cond_3

    .line 446
    new-array v1, v5, [Ljava/lang/String;

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 447
    new-array v0, v4, [Ljava/lang/Object;

    const-string v4, "composer_id"

    aput-object v4, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v5

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 458
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getLimiter() is not supported for media type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mType:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 442
    :cond_4
    new-array v1, v5, [Ljava/lang/String;

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 443
    new-array v0, v4, [Ljava/lang/Object;

    const-string v4, "albumartist_id"

    aput-object v4, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v5

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 454
    :cond_5
    new-array v1, v5, [Ljava/lang/String;

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 455
    new-array v0, v4, [Ljava/lang/Object;

    const-string v4, "_genre_id"

    aput-object v4, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v5

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 450
    :cond_6
    new-array v1, v4, [Ljava/lang/String;

    const/4 v6, 0x3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    .line 451
    new-array v0, v4, [Ljava/lang/Object;

    const-string v4, "album_id"

    aput-object v4, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v5

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 438
    :cond_7
    new-array v1, v5, [Ljava/lang/String;

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 439
    new-array v0, v4, [Ljava/lang/Object;

    const-string v4, "artist_id"

    aput-object v4, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v5

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 461
    :goto_2
    new-instance p2, Lch/blinkenlights/android/vanilla/Limiter;

    iget v0, p0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mType:I

    invoke-direct {p2, v0, v1, p1}, Lch/blinkenlights/android/vanilla/Limiter;-><init>(I[Ljava/lang/String;Ljava/lang/Object;)V

    return-object p2
.end method

.method public buildSongQuery([Ljava/lang/String;)Lch/blinkenlights/android/vanilla/QueryTask;
    .locals 1

    const/4 v0, 0x1

    .line 392
    invoke-direct {p0, p1, v0}, Lch/blinkenlights/android/vanilla/MediaAdapter;->buildQuery([Ljava/lang/String;Z)Lch/blinkenlights/android/vanilla/QueryTask;

    move-result-object p1

    .line 393
    iget v0, p0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mType:I

    iput v0, p1, Lch/blinkenlights/android/vanilla/QueryTask;->type:I

    return-object p1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1

    .line 471
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mCursor:Landroid/database/Cursor;

    .line 472
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mCursor:Landroid/database/Cursor;

    .line 473
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/MediaAdapter;->buildAlphabet()V

    if-nez p1, :cond_0

    .line 475
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    goto :goto_0

    .line 477
    :cond_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_0
    if-eqz v0, :cond_1

    .line 480
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 400
    invoke-virtual {p0, v0}, Lch/blinkenlights/android/vanilla/MediaAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public commitQuery(Ljava/lang/Object;)V
    .locals 0

    .line 380
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/MediaAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public createData(Landroid/view/View;)Landroid/content/Intent;
    .locals 4

    .line 598
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lch/blinkenlights/android/vanilla/ViewHolder;

    .line 599
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 600
    iget v1, p0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mType:I

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 601
    iget-wide v1, p1, Lch/blinkenlights/android/vanilla/ViewHolder;->id:J

    const-string v3, "id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 602
    iget-object p1, p1, Lch/blinkenlights/android/vanilla/ViewHolder;->title:Ljava/lang/String;

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    iget-boolean p1, p0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mExpandable:Z

    const-string v1, "expandable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 622
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 625
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getDefaultSortMode()I
    .locals 3

    .line 578
    iget v0, p0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 637
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 638
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 640
    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 p1, 0x0

    .line 641
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLimiter()Lch/blinkenlights/android/vanilla/Limiter;
    .locals 1

    .line 418
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    return-object v0
.end method

.method public getLimiterType()I
    .locals 1

    .line 566
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    if-eqz v0, :cond_0

    .line 568
    iget v0, v0, Lch/blinkenlights/android/vanilla/Limiter;->type:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .line 406
    iget v0, p0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mType:I

    return v0
.end method

.method public getPositionForSection(I)I
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 767
    :cond_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mAlphabet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 768
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 771
    :cond_1
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mAlphabet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lch/blinkenlights/android/vanilla/MediaAdapter$SectionIndex;

    invoke-static {p1}, Lch/blinkenlights/android/vanilla/MediaAdapter$SectionIndex;->access$000(Lch/blinkenlights/android/vanilla/MediaAdapter$SectionIndex;)I

    move-result p1

    return p1
.end method

.method public getSectionForPosition(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 777
    :goto_0
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mAlphabet:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 778
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mAlphabet:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/blinkenlights/android/vanilla/MediaAdapter$SectionIndex;

    invoke-static {v2}, Lch/blinkenlights/android/vanilla/MediaAdapter$SectionIndex;->access$000(Lch/blinkenlights/android/vanilla/MediaAdapter$SectionIndex;)I

    move-result v2

    if-le v2, p1, :cond_0

    add-int/lit8 v1, v1, -0x1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .line 755
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mAlphabet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lch/blinkenlights/android/vanilla/MediaAdapter$SectionIndex;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSortSettingsKey()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 589
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/MediaAdapter;->getMediaType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/MediaAdapter;->getLimiterType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "sort_%d_%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-nez p2, :cond_0

    .line 493
    iget-object v3, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lch/blinkenlights/android/vanilla/R$layout;->draggable_row:I

    move-object/from16 v5, p3

    invoke-virtual {v3, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lch/blinkenlights/android/vanilla/DraggableRow;

    .line 494
    invoke-virtual {v3, v2}, Lch/blinkenlights/android/vanilla/DraggableRow;->setupLayout(I)V

    .line 496
    new-instance v4, Lch/blinkenlights/android/vanilla/ViewHolder;

    invoke-direct {v4}, Lch/blinkenlights/android/vanilla/ViewHolder;-><init>()V

    .line 497
    invoke-virtual {v3, v4}, Lch/blinkenlights/android/vanilla/DraggableRow;->setTag(Ljava/lang/Object;)V

    .line 499
    invoke-virtual {v3, v0}, Lch/blinkenlights/android/vanilla/DraggableRow;->setDraggerOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    iget-boolean v5, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mExpandable:Z

    invoke-virtual {v3, v5}, Lch/blinkenlights/android/vanilla/DraggableRow;->showDragger(Z)V

    goto :goto_0

    .line 502
    :cond_0
    move-object/from16 v3, p2

    check-cast v3, Lch/blinkenlights/android/vanilla/DraggableRow;

    .line 503
    invoke-virtual {v3}, Lch/blinkenlights/android/vanilla/DraggableRow;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lch/blinkenlights/android/vanilla/ViewHolder;

    .line 506
    :goto_0
    iget-object v5, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mCursor:Landroid/database/Cursor;

    move/from16 v6, p1

    .line 507
    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 509
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x1

    .line 510
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v11, 0x2

    .line 511
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "?"

    if-nez v12, :cond_1

    move-object v12, v13

    .line 519
    :cond_1
    iget v14, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mType:I

    const/4 v15, 0x4

    const/16 v16, 0x0

    if-eq v14, v8, :cond_2

    if-eq v14, v11, :cond_2

    move-object/from16 v1, v16

    goto :goto_3

    .line 522
    :cond_2
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_3

    goto :goto_1

    :cond_3
    move-object v13, v14

    .line 526
    :goto_1
    iget v14, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mType:I

    if-ne v14, v11, :cond_4

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    :cond_4
    move-object/from16 v14, v16

    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v14, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " \u00b7 "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    :cond_5
    const-string v13, ""

    :goto_2
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 532
    :goto_3
    iget v13, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mType:I

    const-wide/16 v14, -0x1

    if-eq v13, v8, :cond_8

    if-eq v13, v11, :cond_7

    if-eq v13, v2, :cond_6

    move-wide/from16 p2, v9

    move-wide v8, v14

    goto :goto_5

    .line 540
    :cond_6
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    goto :goto_4

    :cond_7
    const/4 v2, 0x5

    .line 537
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    goto :goto_4

    :cond_8
    const/4 v2, 0x4

    .line 534
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    :goto_4
    move-wide/from16 p2, v9

    move-wide/from16 v8, v17

    .line 544
    :goto_5
    iput-wide v6, v4, Lch/blinkenlights/android/vanilla/ViewHolder;->id:J

    .line 545
    iput-object v12, v4, Lch/blinkenlights/android/vanilla/ViewHolder;->title:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 548
    invoke-virtual {v3, v12}, Lch/blinkenlights/android/vanilla/DraggableRow;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 550
    :cond_9
    invoke-virtual {v3, v12, v1}, Lch/blinkenlights/android/vanilla/DraggableRow;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :goto_6
    cmp-long v1, v8, v14

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_7

    :cond_a
    const/4 v1, 0x0

    .line 552
    :goto_7
    invoke-virtual {v3, v1}, Lch/blinkenlights/android/vanilla/DraggableRow;->showDuration(Z)V

    .line 553
    invoke-virtual {v3, v8, v9}, Lch/blinkenlights/android/vanilla/DraggableRow;->setDuration(J)V

    .line 554
    invoke-virtual {v3}, Lch/blinkenlights/android/vanilla/DraggableRow;->getCoverView()Lch/blinkenlights/android/vanilla/LazyCoverView;

    move-result-object v1

    iget v2, v0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mCoverCacheType:I

    iget-object v4, v4, Lch/blinkenlights/android/vanilla/ViewHolder;->title:Ljava/lang/String;

    move-wide/from16 v5, p2

    invoke-virtual {v1, v2, v5, v6, v4}, Lch/blinkenlights/android/vanilla/LazyCoverView;->setCover(IJLjava/lang/String;)V

    return-object v3
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 613
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 614
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 615
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/MediaAdapter;->createData(Landroid/view/View;)Landroid/content/Intent;

    move-result-object p1

    .line 616
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mActivity:Lch/blinkenlights/android/vanilla/LibraryActivity;

    invoke-virtual {v0, p1}, Lch/blinkenlights/android/vanilla/LibraryActivity;->onItemExpanded(Landroid/content/Intent;)V

    return-void
.end method

.method public query()Landroid/database/Cursor;
    .locals 2

    .line 374
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mProjection:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lch/blinkenlights/android/vanilla/MediaAdapter;->buildQuery([Ljava/lang/String;Z)Lch/blinkenlights/android/vanilla/QueryTask;

    move-result-object v0

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lch/blinkenlights/android/vanilla/QueryTask;->runQuery(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic query()Ljava/lang/Object;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/MediaAdapter;->query()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setExpandable(Z)V
    .locals 1

    .line 276
    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mExpandable:Z

    if-eq p1, v0, :cond_0

    .line 277
    iput-boolean p1, p0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mExpandable:Z

    .line 278
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mConstraint:Ljava/lang/String;

    return-void
.end method

.method public setLimiter(Lch/blinkenlights/android/vanilla/Limiter;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/MediaAdapter;->mLimiter:Lch/blinkenlights/android/vanilla/Limiter;

    return-void
.end method
