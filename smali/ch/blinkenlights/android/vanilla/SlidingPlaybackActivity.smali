.class public Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;
.super Lch/blinkenlights/android/vanilla/PlaybackActivity;
.source "SlidingPlaybackActivity.java"

# interfaces
.implements Lch/blinkenlights/android/vanilla/SlidingView$Callback;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lch/blinkenlights/android/vanilla/PlaylistDialog$Callback;
.implements Lch/blinkenlights/android/vanilla/JumpToTimeDialog$OnPositionSubmitListener;


# instance fields
.field private mDuration:J

.field private mDurationView:Landroid/widget/TextView;

.field private mElapsedView:Landroid/widget/TextView;

.field private mMenu:Landroid/view/Menu;

.field private mPaused:Z

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarTracking:Z

.field protected mSlidingView:Lch/blinkenlights/android/vanilla/SlidingView;

.field private final mTimeBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackActivity;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mTimeBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method private setDuration(J)V
    .locals 4

    .line 250
    iput-wide p1, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mDuration:J

    .line 251
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mDurationView:Landroid/widget/TextView;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mTimeBuilder:Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-static {v1, p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateElapsedTime()V
    .locals 10

    .line 258
    invoke-static {}, Lch/blinkenlights/android/vanilla/PlaybackService;->hasInstance()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object v0

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->getPosition()I

    move-result v0

    int-to-long v3, v0

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .line 260
    :goto_0
    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mSeekBarTracking:Z

    const-wide/16 v5, 0x3e8

    if-nez v0, :cond_2

    .line 261
    iget-wide v7, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mDuration:J

    .line 262
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mSeekBar:Landroid/widget/SeekBar;

    cmp-long v9, v7, v1

    if-nez v9, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    mul-long v1, v3, v5

    div-long/2addr v1, v7

    long-to-int v1, v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 265
    :cond_2
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mElapsedView:Landroid/widget/TextView;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mTimeBuilder:Ljava/lang/StringBuilder;

    div-long v7, v3, v5

    invoke-static {v1, v7, v8}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mPaused:Z

    if-nez v0, :cond_3

    iget v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x41a

    .line 269
    rem-long/2addr v3, v5

    sub-long/2addr v0, v3

    .line 270
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 271
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void
.end method


# virtual methods
.method protected bindControlButtons()V
    .locals 2

    .line 79
    invoke-super {p0}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->bindControlButtons()V

    .line 81
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->sliding_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lch/blinkenlights/android/vanilla/SlidingView;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mSlidingView:Lch/blinkenlights/android/vanilla/SlidingView;

    .line 82
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mSlidingView:Lch/blinkenlights/android/vanilla/SlidingView;

    invoke-virtual {v0, p0}, Lch/blinkenlights/android/vanilla/SlidingView;->setCallback(Lch/blinkenlights/android/vanilla/SlidingView$Callback;)V

    .line 83
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->elapsed:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mElapsedView:Landroid/widget/TextView;

    .line 84
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->duration:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mDurationView:Landroid/widget/TextView;

    .line 85
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->seek_bar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mSeekBar:Landroid/widget/SeekBar;

    .line 86
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 87
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const-wide/16 v0, 0x0

    .line 88
    invoke-direct {p0, v0, v1}, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->setDuration(J)V

    return-void
.end method

.method protected buildQueryFromIntent(Landroid/content/Intent;ZLch/blinkenlights/android/vanilla/LibraryAdapter;)Lch/blinkenlights/android/vanilla/QueryTask;
    .locals 4

    const-string v0, "type"

    const/4 v1, -0x1

    .line 222
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    .line 226
    sget-object p2, Lch/blinkenlights/android/vanilla/Song;->EMPTY_PLAYLIST_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p2, Lch/blinkenlights/android/vanilla/Song;->FILLED_PLAYLIST_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 228
    sget-object p2, Lch/blinkenlights/android/vanilla/Song;->EMPTY_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object p2, Lch/blinkenlights/android/vanilla/Song;->FILLED_PROJECTION:[Ljava/lang/String;

    :goto_0
    const-wide/16 v1, -0x2

    const-string v3, "id"

    .line 230
    invoke-virtual {p1, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    if-eqz p3, :cond_3

    .line 233
    invoke-interface {p3, p2}, Lch/blinkenlights/android/vanilla/LibraryAdapter;->buildSongQuery([Ljava/lang/String;)Lch/blinkenlights/android/vanilla/QueryTask;

    move-result-object p1

    .line 234
    iput-wide v1, p1, Lch/blinkenlights/android/vanilla/QueryTask;->data:J

    goto :goto_1

    :cond_3
    const/4 p3, 0x7

    if-ne v0, p3, :cond_4

    const-string p3, "file"

    .line 236
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lch/blinkenlights/android/vanilla/MediaUtils;->buildFileQuery(Ljava/lang/String;[Ljava/lang/String;Z)Lch/blinkenlights/android/vanilla/QueryTask;

    move-result-object p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 238
    invoke-static {v0, v1, v2, p2, p1}, Lch/blinkenlights/android/vanilla/MediaUtils;->buildQuery(IJ[Ljava/lang/String;Ljava/lang/String;)Lch/blinkenlights/android/vanilla/QueryTask;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 198
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    .line 207
    invoke-super {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->handleMessage(Landroid/os/Message;)Z

    move-result p1

    return p1

    .line 203
    :cond_0
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->seekToProgress(I)V

    .line 204
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->updateElapsedTime()V

    goto :goto_0

    .line 200
    :cond_1
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->updateElapsedTime()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 119
    invoke-super {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 123
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 124
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mMenu:Landroid/view/Menu;

    :cond_0
    const/16 v0, 0xd

    .line 126
    sget v1, Lch/blinkenlights/android/vanilla/R$string;->show_queue:I

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/16 v0, 0xe

    .line 127
    sget v1, Lch/blinkenlights/android/vanilla/R$string;->hide_queue:I

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/16 v0, 0xb

    .line 128
    sget v1, Lch/blinkenlights/android/vanilla/R$string;->dequeue_rest:I

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/16 v0, 0x10

    .line 129
    sget v1, Lch/blinkenlights/android/vanilla/R$string;->empty_the_queue:I

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/16 v0, 0x12c

    .line 130
    sget v1, Lch/blinkenlights/android/vanilla/R$string;->save_as_playlist:I

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/16 v0, 0x1a

    .line 131
    sget v1, Lch/blinkenlights/android/vanilla/R$string;->jump_to_time:I

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 133
    invoke-virtual {p0, v3}, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->onSlideExpansionChanged(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 141
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    const/16 v1, 0xe

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12c

    if-eq v0, v1, :cond_0

    .line 156
    invoke-super {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 149
    invoke-static {p0, p1, p1}, Lch/blinkenlights/android/vanilla/PlaylistDialog;->newInstance(Lch/blinkenlights/android/vanilla/PlaylistDialog$Callback;Landroid/content/Intent;Lch/blinkenlights/android/vanilla/LibraryAdapter;)Lch/blinkenlights/android/vanilla/PlaylistDialog;

    move-result-object p1

    .line 150
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "PlaylistDialog"

    invoke-virtual {p1, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-static {p1}, Lch/blinkenlights/android/vanilla/JumpToTimeDialog;->show(Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 146
    :cond_2
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mSlidingView:Lch/blinkenlights/android/vanilla/SlidingView;

    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/SlidingView;->hideSlide()V

    goto :goto_0

    .line 143
    :cond_3
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mSlidingView:Lch/blinkenlights/android/vanilla/SlidingView;

    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/SlidingView;->expandSlide()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mPaused:Z

    return-void
.end method

.method public onPositionSubmit(I)V
    .locals 1

    .line 350
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->seekToPosition(I)V

    .line 351
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->updateElapsedTime()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    if-eqz p3, :cond_0

    .line 278
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mElapsedView:Landroid/widget/TextView;

    iget-object p3, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mTimeBuilder:Ljava/lang/StringBuilder;

    int-to-long v0, p2

    iget-wide v2, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mDuration:J

    mul-long v0, v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    invoke-static {p3, v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mUiHandler:Landroid/os/Handler;

    const/16 p3, 0x14

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 280
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mUiHandler:Landroid/os/Handler;

    const/16 p3, 0x15

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 281
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mUiHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x96

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 93
    invoke-super {p0}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->onResume()V

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mPaused:Z

    .line 95
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->updateElapsedTime()V

    return-void
.end method

.method public onSlideExpansionChanged(I)V
    .locals 9

    .line 320
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    .line 323
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x6

    .line 324
    new-array v2, v2, [I

    fill-array-data v2, :array_1

    const/16 v3, 0xe

    .line 327
    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    if-ne p1, v3, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 329
    :goto_0
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 331
    :cond_2
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mMenu:Landroid/view/Menu;

    const/16 v6, 0xd

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    .line 333
    :goto_1
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 335
    :cond_4
    array-length v0, v1

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v0, :cond_7

    aget v7, v1, v6

    .line 336
    iget-object v8, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v8, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    if-eqz v7, :cond_6

    if-eqz p1, :cond_5

    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    .line 338
    :goto_3
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 341
    :cond_7
    array-length v0, v2

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_a

    aget v6, v2, v1

    .line 342
    iget-object v7, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v7, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v6, :cond_9

    if-eq p1, v3, :cond_8

    const/4 v7, 0x1

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    .line 344
    :goto_5
    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    return-void

    nop

    :array_0
    .array-data 4
        0xb
        0x10
        0x12c
    .end array-data

    :array_1
    .array-data 4
        0x1
        0xf
        0x7
        0x15
        0x11
        0x12
    .end array-data
.end method

.method protected onSongChange(Lch/blinkenlights/android/vanilla/Song;)V
    .locals 2

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 106
    :cond_0
    iget-wide v0, p1, Lch/blinkenlights/android/vanilla/Song;->duration:J

    :goto_0
    invoke-direct {p0, v0, v1}, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->setDuration(J)V

    .line 107
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->updateElapsedTime()V

    .line 108
    invoke-super {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->onSongChange(Lch/blinkenlights/android/vanilla/Song;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x1

    .line 287
    iput-boolean p1, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mSeekBarTracking:Z

    return-void
.end method

.method protected onStateChange(II)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->updateElapsedTime()V

    .line 114
    invoke-super {p0, p1, p2}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->onStateChange(II)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x0

    .line 292
    iput-boolean p1, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mSeekBarTracking:Z

    return-void
.end method

.method public updatePlaylistFromPlaylistDialog(Lch/blinkenlights/android/vanilla/PlaylistDialog$Data;)V
    .locals 6

    .line 169
    new-instance v0, Lch/blinkenlights/android/vanilla/PlaylistTask;

    iget-wide v1, p1, Lch/blinkenlights/android/vanilla/PlaylistDialog$Data;->id:J

    iget-object v3, p1, Lch/blinkenlights/android/vanilla/PlaylistDialog$Data;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lch/blinkenlights/android/vanilla/PlaylistTask;-><init>(JLjava/lang/String;)V

    .line 172
    iget-object v1, p1, Lch/blinkenlights/android/vanilla/PlaylistDialog$Data;->sourceIntent:Landroid/content/Intent;

    if-nez v1, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 176
    iget-object p1, p1, Lch/blinkenlights/android/vanilla/PlaylistDialog$Data;->allSource:Lch/blinkenlights/android/vanilla/LibraryAdapter;

    invoke-virtual {p0, v1, v2, p1}, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->buildQueryFromIntent(Landroid/content/Intent;ZLch/blinkenlights/android/vanilla/LibraryAdapter;)Lch/blinkenlights/android/vanilla/QueryTask;

    move-result-object p1

    iput-object p1, v0, Lch/blinkenlights/android/vanilla/PlaylistTask;->query:Lch/blinkenlights/android/vanilla/QueryTask;

    const/4 p1, 0x2

    .line 179
    :goto_0
    iget-wide v1, v0, Lch/blinkenlights/android/vanilla/PlaylistTask;->playlistId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    .line 180
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 182
    :cond_1
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void
.end method
