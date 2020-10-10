.class public abstract Lch/blinkenlights/android/vanilla/PlaybackActivity;
.super Landroid/app/Activity;
.source "PlaybackActivity.java"

# interfaces
.implements Lch/blinkenlights/android/vanilla/TimelineCallback;
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lch/blinkenlights/android/vanilla/CoverView$Callback;


# instance fields
.field protected mCoverView:Lch/blinkenlights/android/vanilla/CoverView;

.field private mDownAction:Lch/blinkenlights/android/vanilla/Action;

.field protected mEndButton:Landroid/widget/ImageButton;

.field protected mHandler:Landroid/os/Handler;

.field private mLastSongEvent:J

.field private mLastStateEvent:J

.field protected mLooper:Landroid/os/Looper;

.field protected mPlayPauseButton:Landroid/widget/ImageButton;

.field protected mShuffleButton:Landroid/widget/ImageButton;

.field protected mState:I

.field protected final mUiHandler:Landroid/os/Handler;

.field private mUpAction:Lch/blinkenlights/android/vanilla/Action;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method private delete(Landroid/content/Intent;)V
    .locals 8

    const-string v0, "type"

    const/4 v1, -0x1

    .line 560
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "id"

    const-wide/16 v2, -0x2

    .line 561
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 563
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x7

    if-ne v0, v7, :cond_0

    const-string v0, "file"

    .line 566
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 567
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lch/blinkenlights/android/vanilla/MediaUtils;->deleteFile(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 569
    sget v1, Lch/blinkenlights/android/vanilla/R$string;->delete_file_failed:I

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-virtual {v3, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    const/4 v7, 0x3

    if-ne v0, v7, :cond_1

    .line 572
    invoke-static {p0, v1, v2}, Lch/blinkenlights/android/vanilla/Playlist;->deletePlaylist(Landroid/content/Context;J)V

    goto :goto_0

    .line 574
    :cond_1
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object v6

    invoke-virtual {v6, v0, v1, v2}, Lch/blinkenlights/android/vanilla/PlaybackService;->deleteMedia(IJ)I

    move-result v0

    .line 575
    sget v1, Lch/blinkenlights/android/vanilla/R$plurals;->deleted:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {v3, v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :cond_2
    :goto_0
    if-nez v6, :cond_3

    .line 579
    sget v0, Lch/blinkenlights/android/vanilla/R$string;->deleted_item:I

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "title"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 582
    :cond_3
    invoke-direct {p0, v6, v5}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->showToast(Ljava/lang/String;I)V

    return-void
.end method

.method private removeFromPlaylist(Lch/blinkenlights/android/vanilla/PlaylistTask;)V
    .locals 6

    .line 538
    iget-object v0, p1, Lch/blinkenlights/android/vanilla/PlaylistTask;->query:Lch/blinkenlights/android/vanilla/QueryTask;

    if-nez v0, :cond_1

    .line 542
    iget-object v0, p1, Lch/blinkenlights/android/vanilla/PlaylistTask;->audioIds:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v2, p1, Lch/blinkenlights/android/vanilla/PlaylistTask;->playlistId:J

    iget-object v4, p1, Lch/blinkenlights/android/vanilla/PlaylistTask;->audioIds:Ljava/util/ArrayList;

    invoke-static {v0, v2, v3, v4}, Lch/blinkenlights/android/vanilla/Playlist;->removeFromPlaylist(Landroid/content/Context;JLjava/util/ArrayList;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 546
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lch/blinkenlights/android/vanilla/R$plurals;->removed_from_playlist:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    iget-object p1, p1, Lch/blinkenlights/android/vanilla/PlaylistTask;->name:Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 547
    invoke-direct {p0, p1, v1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->showToast(Ljava/lang/String;I)V

    .line 548
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 539
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Delete by query is not implemented yet"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private rewindCurrentSong()V
    .locals 1

    .line 207
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object v0

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->rewindCurrentSong()Lch/blinkenlights/android/vanilla/Song;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->setSong(Lch/blinkenlights/android/vanilla/Song;)V

    return-void
.end method

.method private showToast(Ljava/lang/String;I)V
    .locals 1

    .line 589
    new-instance v0, Lch/blinkenlights/android/vanilla/PlaybackActivity$3;

    invoke-direct {v0, p0, p1, p2}, Lch/blinkenlights/android/vanilla/PlaybackActivity$3;-><init>(Lch/blinkenlights/android/vanilla/PlaybackActivity;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected addToPlaylist(Lch/blinkenlights/android/vanilla/PlaylistTask;)V
    .locals 6

    .line 516
    iget-object v0, p1, Lch/blinkenlights/android/vanilla/PlaylistTask;->query:Lch/blinkenlights/android/vanilla/QueryTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 517
    iget-wide v2, p1, Lch/blinkenlights/android/vanilla/PlaylistTask;->playlistId:J

    invoke-static {p0, v2, v3, v0}, Lch/blinkenlights/android/vanilla/Playlist;->addToPlaylist(Landroid/content/Context;JLch/blinkenlights/android/vanilla/QueryTask;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 520
    :goto_0
    iget-object v2, p1, Lch/blinkenlights/android/vanilla/PlaylistTask;->audioIds:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 521
    iget-wide v3, p1, Lch/blinkenlights/android/vanilla/PlaylistTask;->playlistId:J

    invoke-static {p0, v3, v4, v2}, Lch/blinkenlights/android/vanilla/Playlist;->addToPlaylist(Landroid/content/Context;JLjava/util/ArrayList;)I

    move-result v2

    add-int/2addr v0, v2

    .line 524
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lch/blinkenlights/android/vanilla/R$plurals;->added_to_playlist:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    iget-object p1, p1, Lch/blinkenlights/android/vanilla/PlaylistTask;->name:Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 525
    invoke-direct {p0, p1, v1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->showToast(Ljava/lang/String;I)V

    .line 526
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected bindControlButtons()V
    .locals 1

    .line 313
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->previous:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 314
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->play_pause:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mPlayPauseButton:Landroid/widget/ImageButton;

    .line 316
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->next:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 318
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->shuffle:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    .line 321
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 323
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->end_action:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mEndButton:Landroid/widget/ImageButton;

    .line 324
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public cycleFinishAction()V
    .locals 1

    .line 611
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object v0

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->cycleFinishAction()I

    move-result v0

    invoke-virtual {p0, v0}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->setState(I)V

    return-void
.end method

.method public cycleShuffle()V
    .locals 1

    .line 603
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object v0

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->cycleShuffle()I

    move-result v0

    invoke-virtual {p0, v0}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->setState(I)V

    return-void
.end method

.method public downSwipe()V
    .locals 1

    .line 660
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mDownAction:Lch/blinkenlights/android/vanilla/Action;

    invoke-virtual {p0, v0}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->performAction(Lch/blinkenlights/android/vanilla/Action;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 455
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return v1

    .line 470
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lch/blinkenlights/android/vanilla/PlaylistTask;

    .line 471
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v0, Lch/blinkenlights/android/vanilla/PlaylistTask;->audioIds:Ljava/util/ArrayList;

    .line 473
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object v2

    .line 475
    :goto_0
    invoke-virtual {v2, v1}, Lch/blinkenlights/android/vanilla/PlaybackService;->getSongByQueuePosition(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object p1

    if-nez p1, :cond_0

    .line 480
    invoke-virtual {p0, v0}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->addToPlaylist(Lch/blinkenlights/android/vanilla/PlaylistTask;)V

    goto :goto_1

    .line 478
    :cond_0
    iget-object v3, v0, Lch/blinkenlights/android/vanilla/PlaylistTask;->audioIds:Ljava/util/ArrayList;

    iget-wide v4, p1, Lch/blinkenlights/android/vanilla/Song;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 494
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->delete(Landroid/content/Intent;)V

    goto :goto_1

    .line 484
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lch/blinkenlights/android/vanilla/PlaylistTask;

    .line 485
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->removeFromPlaylist(Lch/blinkenlights/android/vanilla/PlaylistTask;)V

    goto :goto_1

    .line 465
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lch/blinkenlights/android/vanilla/PlaylistTask;

    .line 466
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->addToPlaylist(Lch/blinkenlights/android/vanilla/PlaylistTask;)V

    goto :goto_1

    .line 489
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lch/blinkenlights/android/vanilla/PlaylistTask;

    .line 490
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p1, Lch/blinkenlights/android/vanilla/PlaylistTask;->playlistId:J

    iget-object p1, p1, Lch/blinkenlights/android/vanilla/PlaylistTask;->name:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lch/blinkenlights/android/vanilla/Playlist;->renamePlaylist(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_1

    .line 457
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lch/blinkenlights/android/vanilla/PlaylistTask;

    .line 458
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 459
    iget-object v1, v0, Lch/blinkenlights/android/vanilla/PlaylistTask;->name:Ljava/lang/String;

    invoke-static {p0, v1}, Lch/blinkenlights/android/vanilla/Playlist;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    .line 460
    iput-wide v1, v0, Lch/blinkenlights/android/vanilla/PlaylistTask;->playlistId:J

    .line 461
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    :pswitch_6
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 215
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->next:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 216
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->shiftCurrentSong(I)V

    goto :goto_0

    .line 217
    :cond_0
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->play_pause:I

    if-ne p1, v0, :cond_1

    .line 218
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->playPause()V

    goto :goto_0

    .line 219
    :cond_1
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->previous:I

    if-ne p1, v0, :cond_2

    .line 220
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->rewindCurrentSong()V

    goto :goto_0

    .line 221
    :cond_2
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->end_action:I

    if-ne p1, v0, :cond_3

    .line 222
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->cycleFinishAction()V

    goto :goto_0

    .line 223
    :cond_3
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->shuffle:I

    if-ne p1, v0, :cond_4

    .line 224
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->cycleShuffle()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 690
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    .line 691
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 693
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->setShuffleMode(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->setState(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0xc9

    if-ne v0, v1, :cond_1

    .line 695
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->setFinishAction(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->setState(I)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 97
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->addTimelineCallback(Lch/blinkenlights/android/vanilla/TimelineCallback;)V

    const/4 p1, 0x3

    .line 101
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 103
    new-instance p1, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x13

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 104
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 106
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mLooper:Landroid/os/Looper;

    .line 107
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mLooper:Landroid/os/Looper;

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    .line 674
    iget-object p3, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, p3, :cond_0

    .line 675
    sget p2, Lch/blinkenlights/android/vanilla/R$string;->no_shuffle:I

    const/16 p3, 0xc8

    invoke-interface {p1, p3, v2, v2, p2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 676
    sget p2, Lch/blinkenlights/android/vanilla/R$string;->shuffle_songs:I

    invoke-interface {p1, p3, v1, v2, p2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 677
    sget p2, Lch/blinkenlights/android/vanilla/R$string;->shuffle_albums:I

    invoke-interface {p1, p3, v0, v2, p2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 678
    :cond_0
    iget-object p3, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mEndButton:Landroid/widget/ImageButton;

    if-ne p2, p3, :cond_1

    .line 679
    sget p2, Lch/blinkenlights/android/vanilla/R$string;->no_repeat:I

    const/16 p3, 0xc9

    invoke-interface {p1, p3, v2, v2, p2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 680
    sget p2, Lch/blinkenlights/android/vanilla/R$string;->repeat:I

    invoke-interface {p1, p3, v1, v2, p2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 681
    sget p2, Lch/blinkenlights/android/vanilla/R$string;->repeat_current_song:I

    invoke-interface {p1, p3, v0, v2, p2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    const/4 p2, 0x3

    .line 682
    sget v0, Lch/blinkenlights/android/vanilla/R$string;->stop_current_song:I

    invoke-interface {p1, p3, p2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    const/4 p2, 0x4

    .line 683
    sget v0, Lch/blinkenlights/android/vanilla/R$string;->random:I

    invoke-interface {p1, p3, p2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 398
    sget v0, Lch/blinkenlights/android/vanilla/R$string;->settings:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0xa

    invoke-interface {p1, v1, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    sget v0, Lch/blinkenlights/android/vanilla/R$drawable;->ic_menu_preferences:I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    .line 114
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->removeTimelineCallback(Lch/blinkenlights/android/vanilla/TimelineCallback;)V

    .line 115
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x55

    if-eq p1, v0, :cond_0

    const/16 v0, 0x57

    if-eq p1, v0, :cond_0

    const/16 v0, 0x58

    if-eq p1, v0, :cond_0

    .line 173
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 170
    :cond_0
    invoke-static {p0, p2}, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;->processKey(Landroid/content/Context;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x55

    if-eq p1, v0, :cond_0

    const/16 v0, 0x57

    if-eq p1, v0, :cond_0

    const/16 v0, 0x58

    if-eq p1, v0, :cond_0

    .line 187
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 184
    :cond_0
    invoke-static {p0, p2}, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;->processKey(Landroid/content/Context;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMediaChange()V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 405
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 413
    :cond_0
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object p1

    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->emptyQueue()V

    goto :goto_0

    .line 410
    :cond_1
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object p1

    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->clearQueue()V

    goto :goto_0

    .line 407
    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lch/blinkenlights/android/vanilla/PreferencesActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onPositionInfoChanged()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 155
    invoke-static {}, Lch/blinkenlights/android/vanilla/PlaybackService;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->userActionTriggered()V

    :cond_0
    return-void
.end method

.method protected onServiceReady()V
    .locals 2

    .line 281
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object v0

    const/4 v1, 0x0

    .line 282
    invoke-virtual {v0, v1}, Lch/blinkenlights/android/vanilla/PlaybackService;->getSong(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->setSong(Lch/blinkenlights/android/vanilla/Song;)V

    .line 283
    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->setState(I)V

    return-void
.end method

.method protected onSongChange(Lch/blinkenlights/android/vanilla/Song;)V
    .locals 0

    .line 293
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mCoverView:Lch/blinkenlights/android/vanilla/CoverView;

    if-eqz p1, :cond_0

    .line 294
    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/CoverView;->querySongs()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 5

    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 124
    invoke-static {}, Lch/blinkenlights/android/vanilla/PlaybackService;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->onServiceReady()V

    goto :goto_0

    .line 127
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lch/blinkenlights/android/vanilla/PlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 129
    :goto_0
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->getSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 130
    sget-object v1, Lch/blinkenlights/android/vanilla/PrefDefaults;->SWIPE_UP_ACTION:Lch/blinkenlights/android/vanilla/Action;

    const-string v2, "swipe_up_action"

    invoke-static {v0, v2, v1}, Lch/blinkenlights/android/vanilla/Action;->getAction(Landroid/content/SharedPreferences;Ljava/lang/String;Lch/blinkenlights/android/vanilla/Action;)Lch/blinkenlights/android/vanilla/Action;

    move-result-object v1

    iput-object v1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mUpAction:Lch/blinkenlights/android/vanilla/Action;

    .line 131
    sget-object v1, Lch/blinkenlights/android/vanilla/PrefDefaults;->SWIPE_DOWN_ACTION:Lch/blinkenlights/android/vanilla/Action;

    const-string v2, "swipe_down_action"

    invoke-static {v0, v2, v1}, Lch/blinkenlights/android/vanilla/Action;->getAction(Landroid/content/SharedPreferences;Ljava/lang/String;Lch/blinkenlights/android/vanilla/Action;)Lch/blinkenlights/android/vanilla/Action;

    move-result-object v1

    iput-object v1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mDownAction:Lch/blinkenlights/android/vanilla/Action;

    .line 133
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "disable_lockscreen"

    .line 136
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/high16 v4, 0x480000

    if-eqz v3, :cond_1

    .line 137
    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    goto :goto_1

    .line 140
    :cond_1
    invoke-virtual {v1, v4}, Landroid/view/Window;->clearFlags(I)V

    :goto_1
    const-string v3, "keep_screen_on"

    .line 144
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/16 v2, 0x80

    if-eqz v0, :cond_2

    .line 145
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_2

    .line 147
    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    :goto_2
    return-void
.end method

.method protected onStateChange(II)V
    .locals 3

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mPlayPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    .line 237
    sget v1, Lch/blinkenlights/android/vanilla/R$drawable;->play:I

    goto :goto_0

    :cond_0
    sget v1, Lch/blinkenlights/android/vanilla/R$drawable;->pause:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_1
    and-int/lit8 v0, p2, 0x70

    if-eqz v0, :cond_2

    .line 239
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mEndButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 240
    sget-object v1, Lch/blinkenlights/android/vanilla/SongTimeline;->FINISH_ICONS:[I

    invoke-static {p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->finishAction(I)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_2
    and-int/lit16 p2, p2, 0x380

    if-eqz p2, :cond_3

    .line 242
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    if-eqz p2, :cond_3

    .line 243
    sget-object v0, Lch/blinkenlights/android/vanilla/SongTimeline;->SHUFFLE_ICONS:[I

    invoke-static {p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->shuffleMode(I)I

    move-result p1

    aget p1, v0, p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_3
    return-void
.end method

.method public onTimelineChanged()V
    .locals 0

    return-void
.end method

.method public openLibrary(Lch/blinkenlights/android/vanilla/Song;I)V
    .locals 5

    .line 622
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lch/blinkenlights/android/vanilla/LibraryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 623
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p1, :cond_4

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_3

    const/4 v4, 0x1

    if-eq p2, v4, :cond_2

    const/4 v4, 0x4

    if-eq p2, v4, :cond_1

    const/4 v3, 0x7

    if-ne p2, v3, :cond_0

    .line 638
    new-instance v3, Ljava/io/File;

    iget-object p1, p1, Lch/blinkenlights/android/vanilla/Song;->path:Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 639
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 642
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid media type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 635
    :cond_1
    iget-wide v1, p1, Lch/blinkenlights/android/vanilla/Song;->id:J

    invoke-static {p0, v1, v2}, Lch/blinkenlights/android/vanilla/MediaUtils;->queryGenreForSong(Landroid/content/Context;J)J

    move-result-wide v1

    goto :goto_0

    .line 632
    :cond_2
    iget-wide v1, p1, Lch/blinkenlights/android/vanilla/Song;->albumId:J

    goto :goto_0

    .line 629
    :cond_3
    iget-wide v1, p1, Lch/blinkenlights/android/vanilla/Song;->artistId:J

    :goto_0
    const-string p1, "type"

    .line 644
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "id"

    .line 645
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "folder"

    .line 646
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    :cond_4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected performAction(Lch/blinkenlights/android/vanilla/Action;)V
    .locals 1

    .line 665
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->performAction(Lch/blinkenlights/android/vanilla/Action;Lch/blinkenlights/android/vanilla/PlaybackActivity;)V

    return-void
.end method

.method public playPause()V
    .locals 3

    .line 198
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->playPause()I

    move-result v1

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_0

    .line 201
    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->showToast(Ljava/lang/String;I)V

    .line 202
    :cond_0
    invoke-virtual {p0, v1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->setState(I)V

    return-void
.end method

.method public replaceSong(ILch/blinkenlights/android/vanilla/Song;)V
    .locals 1

    .line 345
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mCoverView:Lch/blinkenlights/android/vanilla/CoverView;

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0, p1, p2}, Lch/blinkenlights/android/vanilla/CoverView;->replaceSong(ILch/blinkenlights/android/vanilla/Song;)V

    :cond_0
    return-void
.end method

.method public setSong(JLch/blinkenlights/android/vanilla/Song;)V
    .locals 3

    .line 333
    iget-wide v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mLastSongEvent:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 334
    invoke-virtual {p0, p3}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->setSong(Lch/blinkenlights/android/vanilla/Song;)V

    .line 335
    iput-wide p1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mLastSongEvent:J

    :cond_0
    return-void
.end method

.method protected setSong(Lch/blinkenlights/android/vanilla/Song;)V
    .locals 2

    .line 299
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mLastSongEvent:J

    .line 300
    new-instance v0, Lch/blinkenlights/android/vanilla/PlaybackActivity$2;

    invoke-direct {v0, p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackActivity$2;-><init>(Lch/blinkenlights/android/vanilla/PlaybackActivity;Lch/blinkenlights/android/vanilla/Song;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setState(I)V
    .locals 2

    .line 249
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mLastStateEvent:J

    .line 251
    iget v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mState:I

    if-eq v0, p1, :cond_0

    xor-int/2addr v0, p1

    .line 253
    iput p1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mState:I

    .line 254
    new-instance v1, Lch/blinkenlights/android/vanilla/PlaybackActivity$1;

    invoke-direct {v1, p0, p1, v0}, Lch/blinkenlights/android/vanilla/PlaybackActivity$1;-><init>(Lch/blinkenlights/android/vanilla/PlaybackActivity;II)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setState(JI)V
    .locals 3

    .line 269
    iget-wide v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mLastStateEvent:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 270
    invoke-virtual {p0, p3}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->setState(I)V

    .line 271
    iput-wide p1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mLastStateEvent:J

    :cond_0
    return-void
.end method

.method public shiftCurrentSong(I)V
    .locals 1

    .line 193
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->shiftCurrentSong(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object p1

    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->setSong(Lch/blinkenlights/android/vanilla/Song;)V

    return-void
.end method

.method protected showPluginMenu(Landroid/content/Intent;)V
    .locals 4

    .line 704
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PluginUtils;->getPluginMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 705
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 707
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lch/blinkenlights/android/vanilla/PlaybackActivity$4;

    invoke-direct {v3, p0, p1, v0, v1}, Lch/blinkenlights/android/vanilla/PlaybackActivity$4;-><init>(Lch/blinkenlights/android/vanilla/PlaybackActivity;Landroid/content/Intent;Ljava/util/Map;[Ljava/lang/String;)V

    .line 708
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 729
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public upSwipe()V
    .locals 1

    .line 654
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mUpAction:Lch/blinkenlights/android/vanilla/Action;

    invoke-virtual {p0, v0}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->performAction(Lch/blinkenlights/android/vanilla/Action;)V

    return-void
.end method
