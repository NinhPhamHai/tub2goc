.class public final Lch/blinkenlights/android/vanilla/SongTimeline;
.super Ljava/lang/Object;
.source "SongTimeline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/blinkenlights/android/vanilla/SongTimeline$FlagComparator;,
        Lch/blinkenlights/android/vanilla/SongTimeline$IdComparator;,
        Lch/blinkenlights/android/vanilla/SongTimeline$Callback;
    }
.end annotation


# static fields
.field public static final FINISH_ICONS:[I

.field public static final SHUFFLE_ICONS:[I


# instance fields
.field private mCallback:Lch/blinkenlights/android/vanilla/SongTimeline$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentPos:I

.field private mFinishAction:I

.field private mLastRandomSong:Lch/blinkenlights/android/vanilla/Song;

.field private mSavedCurrent:Lch/blinkenlights/android/vanilla/Song;

.field private mSavedNext:Lch/blinkenlights/android/vanilla/Song;

.field private mSavedPos:I

.field private mSavedPrevious:Lch/blinkenlights/android/vanilla/Song;

.field private mSavedSize:I

.field private mShuffleCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lch/blinkenlights/android/vanilla/Song;",
            ">;"
        }
    .end annotation
.end field

.field private mShuffleMode:I

.field private mShuffleTicket:I

.field private mSongs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lch/blinkenlights/android/vanilla/Song;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x5

    .line 89
    new-array v0, v0, [I

    sget v1, Lch/blinkenlights/android/vanilla/R$drawable;->repeat_inactive:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lch/blinkenlights/android/vanilla/R$drawable;->repeat_active:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Lch/blinkenlights/android/vanilla/R$drawable;->repeat_current_active:I

    const/4 v4, 0x2

    aput v1, v0, v4

    sget v1, Lch/blinkenlights/android/vanilla/R$drawable;->stop_current_active:I

    const/4 v5, 0x3

    aput v1, v0, v5

    sget v1, Lch/blinkenlights/android/vanilla/R$drawable;->random_active:I

    const/4 v6, 0x4

    aput v1, v0, v6

    sput-object v0, Lch/blinkenlights/android/vanilla/SongTimeline;->FINISH_ICONS:[I

    .line 184
    new-array v0, v5, [I

    sget v1, Lch/blinkenlights/android/vanilla/R$drawable;->shuffle_inactive:I

    aput v1, v0, v2

    sget v1, Lch/blinkenlights/android/vanilla/R$drawable;->shuffle_active:I

    aput v1, v0, v3

    sget v1, Lch/blinkenlights/android/vanilla/R$drawable;->shuffle_album_active:I

    aput v1, v0, v4

    sput-object v0, Lch/blinkenlights/android/vanilla/SongTimeline;->SHUFFLE_ICONS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSongs:Ljava/util/ArrayList;

    .line 288
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mContext:Landroid/content/Context;

    return-void
.end method

.method private broadcastChangedSongs()V
    .locals 11

    .line 941
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCallback:Lch/blinkenlights/android/vanilla/SongTimeline$Callback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 943
    invoke-virtual {p0, v0}, Lch/blinkenlights/android/vanilla/SongTimeline;->getSong(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object v1

    const/4 v2, 0x0

    .line 944
    invoke-virtual {p0, v2}, Lch/blinkenlights/android/vanilla/SongTimeline;->getSong(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object v3

    const/4 v4, 0x1

    .line 945
    invoke-virtual {p0, v4}, Lch/blinkenlights/android/vanilla/SongTimeline;->getSong(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object v5

    .line 947
    iget-object v6, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSavedPrevious:Lch/blinkenlights/android/vanilla/Song;

    invoke-static {v6}, Lch/blinkenlights/android/vanilla/Song;->getId(Lch/blinkenlights/android/vanilla/Song;)J

    move-result-wide v6

    invoke-static {v1}, Lch/blinkenlights/android/vanilla/Song;->getId(Lch/blinkenlights/android/vanilla/Song;)J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-eqz v10, :cond_1

    .line 948
    iget-object v6, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCallback:Lch/blinkenlights/android/vanilla/SongTimeline$Callback;

    invoke-interface {v6, v0, v1}, Lch/blinkenlights/android/vanilla/SongTimeline$Callback;->activeSongReplaced(ILch/blinkenlights/android/vanilla/Song;)V

    .line 949
    :cond_1
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSavedNext:Lch/blinkenlights/android/vanilla/Song;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/Song;->getId(Lch/blinkenlights/android/vanilla/Song;)J

    move-result-wide v0

    invoke-static {v5}, Lch/blinkenlights/android/vanilla/Song;->getId(Lch/blinkenlights/android/vanilla/Song;)J

    move-result-wide v6

    cmp-long v8, v0, v6

    if-eqz v8, :cond_2

    .line 950
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCallback:Lch/blinkenlights/android/vanilla/SongTimeline$Callback;

    invoke-interface {v0, v4, v5}, Lch/blinkenlights/android/vanilla/SongTimeline$Callback;->activeSongReplaced(ILch/blinkenlights/android/vanilla/Song;)V

    .line 951
    :cond_2
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSavedCurrent:Lch/blinkenlights/android/vanilla/Song;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/Song;->getId(Lch/blinkenlights/android/vanilla/Song;)J

    move-result-wide v0

    invoke-static {v3}, Lch/blinkenlights/android/vanilla/Song;->getId(Lch/blinkenlights/android/vanilla/Song;)J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-eqz v6, :cond_3

    .line 952
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCallback:Lch/blinkenlights/android/vanilla/SongTimeline$Callback;

    invoke-interface {v0, v2, v3}, Lch/blinkenlights/android/vanilla/SongTimeline$Callback;->activeSongReplaced(ILch/blinkenlights/android/vanilla/Song;)V

    .line 954
    :cond_3
    iget v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    iget v1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSavedPos:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSongs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSavedSize:I

    if-eq v0, v1, :cond_5

    .line 955
    :cond_4
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCallback:Lch/blinkenlights/android/vanilla/SongTimeline$Callback;

    invoke-interface {v0}, Lch/blinkenlights/android/vanilla/SongTimeline$Callback;->positionInfoChanged()V

    :cond_5
    return-void
.end method

.method private changed()V
    .locals 2

    .line 1048
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mShuffleCache:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mShuffleTicket:I

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSongs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1049
    iput-object v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mShuffleCache:Ljava/util/ArrayList;

    .line 1051
    :cond_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCallback:Lch/blinkenlights/android/vanilla/SongTimeline$Callback;

    if-eqz v0, :cond_1

    .line 1052
    invoke-interface {v0}, Lch/blinkenlights/android/vanilla/SongTimeline$Callback;->timelineChanged()V

    :cond_1
    return-void
.end method

.method private getShuffledTimeline(Z)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lch/blinkenlights/android/vanilla/Song;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 532
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mShuffleCache:Ljava/util/ArrayList;

    .line 534
    :cond_0
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mShuffleCache:Ljava/util/ArrayList;

    if-nez p1, :cond_2

    .line 535
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSongs:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 536
    iget v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mShuffleMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lch/blinkenlights/android/vanilla/MediaUtils;->shuffle(Ljava/util/List;Z)V

    .line 537
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mShuffleCache:Ljava/util/ArrayList;

    .line 538
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSongs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->hashCode()I

    move-result p1

    iput p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mShuffleTicket:I

    .line 540
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mShuffleCache:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method private saveActiveSongs()V
    .locals 1

    const/4 v0, -0x1

    .line 926
    invoke-virtual {p0, v0}, Lch/blinkenlights/android/vanilla/SongTimeline;->getSong(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object v0

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSavedPrevious:Lch/blinkenlights/android/vanilla/Song;

    const/4 v0, 0x0

    .line 927
    invoke-virtual {p0, v0}, Lch/blinkenlights/android/vanilla/SongTimeline;->getSong(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object v0

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSavedCurrent:Lch/blinkenlights/android/vanilla/Song;

    const/4 v0, 0x1

    .line 928
    invoke-virtual {p0, v0}, Lch/blinkenlights/android/vanilla/SongTimeline;->getSong(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object v0

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSavedNext:Lch/blinkenlights/android/vanilla/Song;

    .line 929
    iget v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    iput v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSavedPos:I

    .line 930
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSongs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSavedSize:I

    return-void
.end method

.method private shiftCurrentSongInternal(I)V
    .locals 4

    .line 632
    iget v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    add-int/2addr v0, p1

    .line 634
    iget p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mFinishAction:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq p1, v2, :cond_0

    iget-object p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSongs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne v0, p1, :cond_0

    .line 635
    iget p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mShuffleMode:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSongs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 636
    invoke-direct {p0, v1}, Lch/blinkenlights/android/vanilla/SongTimeline;->getShuffledTimeline(Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSongs:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    if-gez v0, :cond_3

    .line 641
    iget p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mFinishAction:I

    if-ne p1, v2, :cond_2

    :cond_1
    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 644
    :cond_2
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSongs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 647
    :cond_3
    :goto_1
    iput v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    return-void
.end method

.method private shrinkQueue(I)V
    .locals 2

    .line 880
    monitor-enter p0

    .line 881
    :goto_0
    :try_start_0
    iget v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    if-le v0, p1, :cond_0

    .line 882
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSongs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 883
    iget v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    goto :goto_0

    .line 885
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SongTimeline;->changed()V

    return-void

    :catchall_0
    move-exception p1

    .line 885
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public addSongs(Landroid/content/Context;Lch/blinkenlights/android/vanilla/QueryTask;)I
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 739
    invoke-virtual {v2, v0}, Lch/blinkenlights/android/vanilla/QueryTask;->runQuery(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    return v3

    .line 744
    :cond_0
    iget v4, v2, Lch/blinkenlights/android/vanilla/QueryTask;->mode:I

    .line 745
    iget v5, v2, Lch/blinkenlights/android/vanilla/QueryTask;->type:I

    .line 746
    iget-wide v6, v2, Lch/blinkenlights/android/vanilla/QueryTask;->data:J

    .line 748
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    const/4 v9, 0x7

    const/4 v10, 0x1

    if-nez v8, :cond_2

    if-ne v5, v9, :cond_2

    .line 751
    iget-object v2, v2, Lch/blinkenlights/android/vanilla/QueryTask;->selectionArgs:[Ljava/lang/String;

    array-length v11, v2

    if-ne v11, v10, :cond_2

    .line 754
    aget-object v2, v2, v3

    .line 755
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2

    sub-int/2addr v11, v10

    .line 757
    invoke-virtual {v2, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v12, "%"

    .line 758
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 759
    invoke-virtual {v2, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 762
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 763
    invoke-static {v2}, Lch/blinkenlights/android/vanilla/MediaUtils;->getCursorForFileQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 764
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    :cond_2
    if-nez v8, :cond_3

    .line 769
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v3

    .line 773
    :cond_3
    iget-object v2, v1, Lch/blinkenlights/android/vanilla/SongTimeline;->mSongs:Ljava/util/ArrayList;

    .line 774
    monitor-enter p0

    .line 775
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lch/blinkenlights/android/vanilla/SongTimeline;->saveActiveSongs()V

    const/4 v11, 0x4

    packed-switch v4, :pswitch_data_0

    .line 800
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_7

    .line 782
    :pswitch_0
    iget v12, v1, Lch/blinkenlights/android/vanilla/SongTimeline;->mFinishAction:I

    if-ne v12, v11, :cond_5

    .line 783
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    :cond_4
    :goto_0
    add-int/lit8 v12, v12, -0x1

    .line 784
    iget v13, v1, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    if-le v12, v13, :cond_5

    .line 785
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lch/blinkenlights/android/vanilla/Song;

    invoke-virtual {v13}, Lch/blinkenlights/android/vanilla/Song;->isRandom()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 786
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 791
    :pswitch_1
    iget v12, v1, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    add-int/2addr v12, v10

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v2, v12, v13}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 796
    :pswitch_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 797
    iput v3, v1, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    .line 803
    :cond_5
    :goto_1
    iget v12, v1, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    add-int/2addr v12, v10

    const/4 v13, 0x0

    .line 810
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-gt v12, v14, :cond_6

    if-eq v4, v9, :cond_7

    .line 811
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    :cond_7
    move-object v15, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_2
    const/4 v3, 0x2

    if-eq v13, v8, :cond_12

    .line 815
    invoke-interface {v0, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 817
    new-instance v9, Lch/blinkenlights/android/vanilla/Song;

    const-wide/16 v10, -0x1

    invoke-direct {v9, v10, v11}, Lch/blinkenlights/android/vanilla/Song;-><init>(J)V

    .line 818
    invoke-virtual {v9, v0}, Lch/blinkenlights/android/vanilla/Song;->populate(Landroid/database/Cursor;)V

    .line 819
    invoke-virtual {v9}, Lch/blinkenlights/android/vanilla/Song;->isFilled()Z

    move-result v10

    if-nez v10, :cond_9

    :cond_8
    const/4 v3, 0x7

    goto :goto_5

    :cond_9
    add-int v10, v12, v14

    .line 824
    invoke-virtual {v2, v10, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    if-nez v15, :cond_8

    const/4 v10, 0x3

    if-eq v4, v10, :cond_a

    const/4 v10, 0x6

    if-ne v4, v10, :cond_b

    :cond_a
    int-to-long v10, v13

    cmp-long v17, v10, v6

    if-nez v17, :cond_b

    const/4 v3, 0x7

    goto :goto_4

    :cond_b
    const/4 v10, 0x4

    if-eq v4, v10, :cond_c

    const/4 v11, 0x5

    if-ne v4, v11, :cond_8

    :cond_c
    if-eqz v5, :cond_10

    const/4 v11, 0x1

    if-eq v5, v11, :cond_f

    if-eq v5, v3, :cond_e

    const/4 v3, 0x7

    if-ne v5, v3, :cond_d

    .line 843
    iget-wide v10, v9, Lch/blinkenlights/android/vanilla/Song;->id:J

    goto :goto_3

    .line 846
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported id type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const/4 v3, 0x7

    .line 840
    iget-wide v10, v9, Lch/blinkenlights/android/vanilla/Song;->id:J

    goto :goto_3

    :cond_f
    const/4 v3, 0x7

    .line 837
    iget-wide v10, v9, Lch/blinkenlights/android/vanilla/Song;->albumId:J

    goto :goto_3

    :cond_10
    const/4 v3, 0x7

    .line 834
    iget-wide v10, v9, Lch/blinkenlights/android/vanilla/Song;->artistId:J

    :goto_3
    cmp-long v16, v10, v6

    if-nez v16, :cond_11

    :goto_4
    move-object v15, v9

    :cond_11
    :goto_5
    add-int/lit8 v13, v13, 0x1

    const/4 v9, 0x7

    const/4 v10, 0x1

    const/4 v11, 0x4

    goto :goto_2

    .line 854
    :cond_12
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 856
    iget v0, v1, Lch/blinkenlights/android/vanilla/SongTimeline;->mShuffleMode:I

    if-eqz v0, :cond_14

    add-int v0, v12, v14

    .line 857
    invoke-virtual {v2, v12, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    iget v4, v1, Lch/blinkenlights/android/vanilla/SongTimeline;->mShuffleMode:I

    if-ne v4, v3, :cond_13

    const/4 v3, 0x1

    goto :goto_6

    :cond_13
    const/4 v3, 0x0

    :goto_6
    invoke-static {v0, v3}, Lch/blinkenlights/android/vanilla/MediaUtils;->shuffle(Ljava/util/List;Z)V

    :cond_14
    if-eqz v15, :cond_15

    .line 860
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    if-le v0, v12, :cond_15

    .line 863
    invoke-virtual {v2, v12, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 864
    invoke-virtual {v2, v12, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 868
    :cond_15
    invoke-direct/range {p0 .. p0}, Lch/blinkenlights/android/vanilla/SongTimeline;->broadcastChangedSongs()V

    .line 869
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    invoke-direct/range {p0 .. p0}, Lch/blinkenlights/android/vanilla/SongTimeline;->changed()V

    return v14

    .line 800
    :goto_7
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 869
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public clearQueue()V
    .locals 3

    .line 894
    monitor-enter p0

    .line 895
    :try_start_0
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SongTimeline;->saveActiveSongs()V

    .line 896
    iget v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSongs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 897
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSongs:Ljava/util/ArrayList;

    iget v1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSongs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 898
    :cond_0
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SongTimeline;->broadcastChangedSongs()V

    .line 899
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SongTimeline;->changed()V

    return-void

    :catchall_0
    move-exception v0

    .line 899
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public emptyQueue()V
    .locals 1

    .line 909
    monitor-enter p0

    .line 910
    :try_start_0
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SongTimeline;->saveActiveSongs()V

    .line 911
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSongs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 912
    iput v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    .line 913
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SongTimeline;->broadcastChangedSongs()V

    .line 914
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 916
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SongTimeline;->changed()V

    return-void

    :catchall_0
    move-exception v0

    .line 914
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getFinishAction()I
    .locals 1

    .line 464
    iget v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mFinishAction:I

    return v0
.end method

.method public getLength()I
    .locals 1

    .line 1079
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSongs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 1071
    iget v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    return v0
.end method

.method public getQueuePositionForSongId(J)I
    .locals 4

    .line 679
    monitor-enter p0

    const/4 v0, 0x0

    .line 680
    :goto_0
    :try_start_0
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSongs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 681
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSongs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/blinkenlights/android/vanilla/Song;

    .line 682
    iget-wide v1, v1, Lch/blinkenlights/android/vanilla/Song;->id:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    .line 683
    monitor-exit p0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 685
    :cond_1
    monitor-exit p0

    const/4 p1, -0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getShuffleMode()I
    .locals 1

    .line 454
    iget v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mShuffleMode:I

    return v0
.end method

.method public getSong(I)Lch/blinkenlights/android/vanilla/Song;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 568
    :goto_0
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 570
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSongs:Ljava/util/ArrayList;

    .line 573
    monitor-enter p0

    .line 574
    :try_start_0
    iget v3, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    add-int/2addr v3, p1

    .line 575
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-gez v3, :cond_3

    if-eqz p1, :cond_2

    .line 578
    iget v3, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mFinishAction:I

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    sub-int/2addr p1, v0

    .line 580
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lch/blinkenlights/android/vanilla/Song;

    goto :goto_4

    .line 579
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v5

    :cond_3
    if-le v3, p1, :cond_4

    .line 582
    monitor-exit p0

    return-object v5

    :cond_4
    if-ne v3, p1, :cond_b

    .line 584
    iget v3, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mFinishAction:I

    if-ne v3, v4, :cond_8

    .line 586
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mContext:Landroid/content/Context;

    iget v3, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mShuffleMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    invoke-static {p1, v0}, Lch/blinkenlights/android/vanilla/MediaUtils;->getRandomSongs(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object p1

    .line 587
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 588
    monitor-exit p0

    return-object v5

    .line 591
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/blinkenlights/android/vanilla/Song;

    .line 592
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 595
    :cond_7
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lch/blinkenlights/android/vanilla/Song;

    .line 597
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mLastRandomSong:Lch/blinkenlights/android/vanilla/Song;

    const/16 v0, 0x14

    .line 601
    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/SongTimeline;->shrinkQueue(I)V

    goto :goto_4

    :cond_8
    if-nez p1, :cond_9

    .line 605
    monitor-exit p0

    return-object v5

    .line 606
    :cond_9
    iget p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mShuffleMode:I

    if-eqz p1, :cond_a

    .line 607
    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/SongTimeline;->getShuffledTimeline(Z)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lch/blinkenlights/android/vanilla/Song;

    goto :goto_4

    .line 609
    :cond_a
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lch/blinkenlights/android/vanilla/Song;

    goto :goto_4

    .line 612
    :cond_b
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lch/blinkenlights/android/vanilla/Song;

    .line 614
    :goto_4
    monitor-exit p0

    if-nez p1, :cond_c

    return-object v5

    :cond_c
    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getSongByQueuePosition(I)Lch/blinkenlights/android/vanilla/Song;
    .locals 1

    .line 668
    monitor-enter p0

    .line 669
    :try_start_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSongs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 670
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSongs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lch/blinkenlights/android/vanilla/Song;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 671
    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isEndOfQueue()Z
    .locals 3

    .line 1061
    monitor-enter p0

    .line 1062
    :try_start_0
    iget v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mFinishAction:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    iget-object v2, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSongs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    .line 1063
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public moveSongPosition(II)V
    .locals 2

    .line 1018
    monitor-enter p0

    .line 1019
    :try_start_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSongs:Ljava/util/ArrayList;

    .line 1021
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p1, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p2, :cond_0

    goto :goto_1

    .line 1024
    :cond_0
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SongTimeline;->saveActiveSongs()V

    .line 1026
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/blinkenlights/android/vanilla/Song;

    .line 1027
    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1029
    iget v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    if-ne v0, p1, :cond_1

    .line 1030
    iput p2, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    goto :goto_0

    .line 1031
    :cond_1
    iget v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    if-le p1, v0, :cond_2

    iget v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    if-gt p2, v0, :cond_2

    .line 1032
    iget p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    goto :goto_0

    .line 1033
    :cond_2
    iget v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    if-ge p1, v0, :cond_3

    iget p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    if-lt p2, p1, :cond_3

    .line 1034
    iget p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    .line 1037
    :cond_3
    :goto_0
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SongTimeline;->broadcastChangedSongs()V

    .line 1038
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1039
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SongTimeline;->changed()V

    return-void

    .line 1022
    :cond_4
    :goto_1
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1038
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public readState(Ljava/io/DataInputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    monitor-enter p0

    .line 326
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_8

    .line 328
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 332
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id IN ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_0
    if-eq v4, v0, :cond_2

    .line 334
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    goto :goto_1

    .line 339
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v8, v4, 0x2

    or-int/2addr v7, v8

    .line 340
    new-instance v8, Lch/blinkenlights/android/vanilla/Song;

    invoke-direct {v8, v5, v6, v7}, Lch/blinkenlights/android/vanilla/Song;-><init>(JI)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_1

    const/16 v7, 0x2c

    .line 343
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 344
    :cond_1
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/16 v0, 0x29

    .line 346
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    new-instance v0, Lch/blinkenlights/android/vanilla/SongTimeline$IdComparator;

    invoke-direct {v0}, Lch/blinkenlights/android/vanilla/SongTimeline$IdComparator;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 352
    new-instance v0, Lch/blinkenlights/android/vanilla/QueryTask;

    const-string v5, "_songs_albums_artists"

    sget-object v6, Lch/blinkenlights/android/vanilla/Song;->FILLED_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "_id"

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lch/blinkenlights/android/vanilla/QueryTask;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v3, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lch/blinkenlights/android/vanilla/QueryTask;->runQuery(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 355
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_5

    .line 356
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 361
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 362
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 363
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lch/blinkenlights/android/vanilla/Song;

    .line 364
    :goto_3
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iget-wide v7, v4, Lch/blinkenlights/android/vanilla/Song;->id:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v5

    if-nez v5, :cond_4

    .line 365
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    .line 366
    :cond_4
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iget-wide v7, v4, Lch/blinkenlights/android/vanilla/Song;->id:J

    cmp-long v9, v5, v7

    if-nez v9, :cond_3

    .line 367
    invoke-virtual {v4, v0}, Lch/blinkenlights/android/vanilla/Song;->populate(Landroid/database/Cursor;)V

    goto :goto_2

    .line 371
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 376
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 377
    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 378
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/blinkenlights/android/vanilla/Song;

    .line 379
    invoke-virtual {v3}, Lch/blinkenlights/android/vanilla/Song;->isFilled()Z

    move-result v3

    if-nez v3, :cond_6

    .line 380
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 385
    :cond_7
    new-instance v0, Lch/blinkenlights/android/vanilla/SongTimeline$FlagComparator;

    invoke-direct {v0}, Lch/blinkenlights/android/vanilla/SongTimeline$FlagComparator;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 387
    iput-object v2, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSongs:Ljava/util/ArrayList;

    .line 391
    :cond_8
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSongs:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSongs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_5
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    .line 392
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mFinishAction:I

    .line 393
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mShuffleMode:I

    .line 396
    iget p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mFinishAction:I

    if-ltz p1, :cond_a

    iget p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mFinishAction:I

    sget-object v0, Lch/blinkenlights/android/vanilla/SongTimeline;->FINISH_ICONS:[I

    array-length v0, v0

    if-lt p1, v0, :cond_b

    .line 397
    :cond_a
    iput v1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mFinishAction:I

    .line 398
    :cond_b
    iget p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mShuffleMode:I

    if-ltz p1, :cond_c

    iget p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mShuffleMode:I

    sget-object v0, Lch/blinkenlights/android/vanilla/SongTimeline;->SHUFFLE_ICONS:[I

    array-length v0, v0

    if-lt p1, v0, :cond_d

    .line 399
    :cond_c
    iput v1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mShuffleMode:I

    .line 400
    :cond_d
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeSong(J)V
    .locals 6

    .line 965
    monitor-enter p0

    .line 966
    :try_start_0
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SongTimeline;->saveActiveSongs()V

    .line 968
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSongs:Ljava/util/ArrayList;

    .line 969
    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 970
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 971
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    .line 972
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/blinkenlights/android/vanilla/Song;

    invoke-static {v3}, Lch/blinkenlights/android/vanilla/Song;->getId(Lch/blinkenlights/android/vanilla/Song;)J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    .line 973
    iget v3, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    if-ge v1, v3, :cond_1

    .line 974
    iget v1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    .line 975
    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 979
    :cond_2
    invoke-virtual {p0, v2}, Lch/blinkenlights/android/vanilla/SongTimeline;->getSong(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 980
    iput p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    .line 982
    :cond_3
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SongTimeline;->broadcastChangedSongs()V

    .line 983
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 985
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SongTimeline;->changed()V

    return-void

    :catchall_0
    move-exception p1

    .line 983
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public removeSongPosition(I)V
    .locals 2

    .line 993
    monitor-enter p0

    .line 994
    :try_start_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSongs:Ljava/util/ArrayList;

    .line 996
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p1, :cond_0

    .line 997
    monitor-exit p0

    return-void

    .line 999
    :cond_0
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SongTimeline;->saveActiveSongs()V

    .line 1001
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1002
    iget v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_1

    .line 1003
    iget p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    sub-int/2addr p1, v1

    iput p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    .line 1004
    :cond_1
    invoke-virtual {p0, v1}, Lch/blinkenlights/android/vanilla/SongTimeline;->getSong(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 1005
    iput p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    .line 1007
    :cond_2
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SongTimeline;->broadcastChangedSongs()V

    .line 1008
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1009
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SongTimeline;->changed()V

    return-void

    :catchall_0
    move-exception p1

    .line 1008
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setCallback(Lch/blinkenlights/android/vanilla/SongTimeline$Callback;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCallback:Lch/blinkenlights/android/vanilla/SongTimeline$Callback;

    return-void
.end method

.method public setCurrentQueuePosition(I)Lch/blinkenlights/android/vanilla/Song;
    .locals 0

    .line 654
    monitor-enter p0

    .line 655
    :try_start_0
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SongTimeline;->saveActiveSongs()V

    .line 656
    iput p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    .line 657
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SongTimeline;->broadcastChangedSongs()V

    .line 658
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SongTimeline;->changed()V

    const/4 p1, 0x0

    .line 660
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/SongTimeline;->getSong(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 658
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setFinishAction(I)V
    .locals 3

    .line 498
    monitor-enter p0

    .line 499
    :try_start_0
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SongTimeline;->saveActiveSongs()V

    .line 501
    iget v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mFinishAction:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 504
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/SongTimeline;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 505
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/SongTimeline;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    .line 506
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSongs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/blinkenlights/android/vanilla/Song;

    .line 507
    invoke-virtual {v1}, Lch/blinkenlights/android/vanilla/Song;->isRandom()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mLastRandomSong:Lch/blinkenlights/android/vanilla/Song;

    invoke-virtual {v1, v2}, Lch/blinkenlights/android/vanilla/Song;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSongs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 513
    iput-object v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mLastRandomSong:Lch/blinkenlights/android/vanilla/Song;

    .line 516
    :cond_1
    iput p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mFinishAction:I

    .line 517
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SongTimeline;->broadcastChangedSongs()V

    .line 518
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SongTimeline;->changed()V

    .line 519
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setShuffleMode(I)V
    .locals 1

    .line 475
    iget v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mShuffleMode:I

    if-ne p1, v0, :cond_0

    return-void

    .line 478
    :cond_0
    monitor-enter p0

    .line 479
    :try_start_0
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SongTimeline;->saveActiveSongs()V

    .line 480
    iput p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mShuffleMode:I

    if-eqz p1, :cond_1

    .line 481
    iget p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mFinishAction:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSongs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 482
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/SongTimeline;->getShuffledTimeline(Z)Ljava/util/ArrayList;

    move-result-object p1

    .line 483
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSavedCurrent:Lch/blinkenlights/android/vanilla/Song;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    .line 484
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSongs:Ljava/util/ArrayList;

    .line 486
    :cond_1
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SongTimeline;->broadcastChangedSongs()V

    .line 487
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SongTimeline;->changed()V

    return-void

    :catchall_0
    move-exception p1

    .line 487
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public shiftCurrentSong(I)Lch/blinkenlights/android/vanilla/Song;
    .locals 8

    .line 697
    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_7

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    goto :goto_1

    .line 704
    :cond_1
    :try_start_0
    invoke-virtual {p0, v0}, Lch/blinkenlights/android/vanilla/SongTimeline;->getSong(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object v3

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    .line 708
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/SongTimeline;->shiftCurrentSongInternal(I)V

    .line 709
    invoke-virtual {p0, v0}, Lch/blinkenlights/android/vanilla/SongTimeline;->getSong(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object v1

    if-eqz v3, :cond_8

    if-nez v1, :cond_4

    goto :goto_2

    .line 713
    :cond_4
    iget-wide v4, v3, Lch/blinkenlights/android/vanilla/Song;->albumId:J

    iget-wide v6, v1, Lch/blinkenlights/android/vanilla/Song;->albumId:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_5

    goto :goto_2

    .line 715
    :cond_5
    iget-wide v4, v3, Lch/blinkenlights/android/vanilla/Song;->id:J

    iget-wide v1, v1, Lch/blinkenlights/android/vanilla/Song;->id:J

    cmp-long v6, v4, v1

    if-nez v6, :cond_6

    goto :goto_2

    .line 717
    :cond_6
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/SongTimeline;->getPosition()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/SongTimeline;->getFinishAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    goto :goto_2

    .line 702
    :cond_7
    :goto_1
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/SongTimeline;->shiftCurrentSongInternal(I)V

    .line 721
    :cond_8
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_9

    .line 724
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SongTimeline;->changed()V

    .line 725
    :cond_9
    invoke-virtual {p0, v0}, Lch/blinkenlights/android/vanilla/SongTimeline;->getSong(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 721
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public writeState(Ljava/io/DataOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    monitor-enter p0

    .line 418
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mSongs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 419
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 422
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v1, :cond_1

    .line 425
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/blinkenlights/android/vanilla/Song;

    if-nez v3, :cond_0

    const-wide/16 v3, -0x1

    .line 427
    invoke-virtual {p1, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_1

    .line 429
    :cond_0
    iget-wide v4, v3, Lch/blinkenlights/android/vanilla/Song;->id:J

    invoke-virtual {p1, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 430
    iget v3, v3, Lch/blinkenlights/android/vanilla/Song;->flags:I

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 434
    :cond_1
    iget v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mCurrentPos:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 435
    iget v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mFinishAction:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 436
    iget v0, p0, Lch/blinkenlights/android/vanilla/SongTimeline;->mShuffleMode:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 419
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
