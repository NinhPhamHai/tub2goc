.class public Lch/blinkenlights/android/vanilla/FullPlaybackActivity;
.super Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;
.source "FullPlaybackActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mAlbum:Landroid/widget/TextView;

.field private mArtist:Landroid/widget/TextView;

.field private mComposer:Ljava/lang/String;

.field private mComposerView:Landroid/widget/TextView;

.field private mControlsVisible:Z

.field private mCoverLongPressAction:Lch/blinkenlights/android/vanilla/Action;

.field private mCoverPressAction:Lch/blinkenlights/android/vanilla/Action;

.field private mCurrentSong:Lch/blinkenlights/android/vanilla/Song;

.field private mDisplayMode:I

.field private mExtraInfoVisible:Z

.field private mFavorites:Landroid/view/MenuItem;

.field private mFormat:Ljava/lang/String;

.field private mFormatView:Landroid/widget/TextView;

.field private mGenre:Ljava/lang/String;

.field private mGenreView:Landroid/widget/TextView;

.field private mInfoTable:Landroid/widget/TableLayout;

.field private mOverlayText:Landroid/widget/TextView;

.field private mPath:Ljava/lang/String;

.field private mPathView:Landroid/widget/TextView;

.field private mQueuePosView:Landroid/widget/TextView;

.field private mReplayGain:Ljava/lang/String;

.field private mReplayGainView:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mTrack:Ljava/lang/String;

.field private mTrackView:Landroid/widget/TextView;

.field private mYear:Ljava/lang/String;

.field private mYearView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;-><init>()V

    return-void
.end method

.method private hideMessageOverlay()V
    .locals 2

    .line 188
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mOverlayText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 189
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private loadExtraInfo()V
    .locals 4

    .line 507
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mCurrentSong:Lch/blinkenlights/android/vanilla/Song;

    const/4 v1, 0x0

    .line 509
    iput-object v1, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mGenre:Ljava/lang/String;

    .line 510
    iput-object v1, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mTrack:Ljava/lang/String;

    .line 511
    iput-object v1, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mYear:Ljava/lang/String;

    .line 512
    iput-object v1, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mComposer:Ljava/lang/String;

    .line 513
    iput-object v1, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mPath:Ljava/lang/String;

    .line 514
    iput-object v1, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mFormat:Ljava/lang/String;

    .line 515
    iput-object v1, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mReplayGain:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 518
    new-instance v1, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;

    iget-object v2, v0, Lch/blinkenlights/android/vanilla/Song;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;-><init>(Ljava/lang/String;)V

    const-string v2, "GENRE"

    .line 520
    invoke-virtual {v1, v2}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mGenre:Ljava/lang/String;

    .line 521
    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/Song;->getTrackAndDiscNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mTrack:Ljava/lang/String;

    const-string v2, "COMPOSER"

    .line 522
    invoke-virtual {v1, v2}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mComposer:Ljava/lang/String;

    const-string v2, "YEAR"

    .line 523
    invoke-virtual {v1, v2}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mYear:Ljava/lang/String;

    .line 524
    iget-object v2, v0, Lch/blinkenlights/android/vanilla/Song;->path:Ljava/lang/String;

    iput-object v2, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mPath:Ljava/lang/String;

    .line 526
    invoke-virtual {v1}, Lch/blinkenlights/android/medialibrary/MediaMetadataExtractor;->getFormat()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mFormat:Ljava/lang/String;

    .line 528
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object v1

    iget-object v0, v0, Lch/blinkenlights/android/vanilla/Song;->path:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->getReplayGainValues(Ljava/lang/String;)Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;

    move-result-object v0

    const/4 v1, 0x3

    .line 529
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, v0, Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;->found:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, v0, Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;->track:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v0, v0, Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;->album:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "found=%s, track=%.2f, album=%.2f"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mReplayGain:Ljava/lang/String;

    .line 532
    :cond_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private setControlsVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 466
    :goto_0
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mSlidingView:Lch/blinkenlights/android/vanilla/SlidingView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 467
    iput-boolean p1, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mControlsVisible:Z

    if-eqz p1, :cond_1

    .line 470
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->requestFocus()Z

    :cond_1
    return-void
.end method

.method private setExtraInfoVisible(Z)V
    .locals 6

    .line 480
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mInfoTable:Landroid/widget/TableLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    xor-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    .line 484
    invoke-virtual {v0, v2, v1}, Landroid/widget/TableLayout;->setColumnCollapsed(IZ)V

    xor-int/lit8 v1, p1, 0x1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    .line 488
    invoke-virtual {v0, v3}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TableRow;

    .line 489
    invoke-virtual {v4, v5}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    .line 494
    :goto_1
    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v5

    :goto_2
    const/4 v3, 0x2

    if-le v1, v3, :cond_3

    .line 495
    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 497
    :cond_3
    iput-boolean p1, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mExtraInfoVisible:Z

    if-eqz p1, :cond_4

    .line 498
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 499
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    return-void
.end method

.method private showOverlayMessage(I)V
    .locals 3

    .line 198
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mOverlayText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x1010031

    .line 202
    invoke-static {p0, v1}, Lch/blinkenlights/android/vanilla/ThemeHelper;->fetchThemeColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/16 v1, 0x11

    .line 203
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v1, 0x19

    .line 204
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v1, 0x1

    .line 206
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 207
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    iput-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mOverlayText:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 213
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    :goto_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mOverlayText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private updateQueuePosition()V
    .locals 4

    .line 268
    iget v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mState:I

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->finishAction(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 272
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mQueuePosView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 274
    :cond_0
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object v0

    .line 275
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mQueuePosView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->getTimelinePosition()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->getTimelineLength()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    :goto_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mQueuePosView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 562
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    .line 601
    invoke-super {p0, p1}, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->handleMessage(Landroid/os/Message;)Z

    move-result p1

    return p1

    .line 594
    :pswitch_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mFavorites:Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    .line 595
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 596
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mFavorites:Landroid/view/MenuItem;

    if-eqz p1, :cond_0

    sget v1, Lch/blinkenlights/android/vanilla/R$drawable;->btn_rating_star_on_mtrl_alpha:I

    goto :goto_0

    :cond_0
    sget v1, Lch/blinkenlights/android/vanilla/R$drawable;->btn_rating_star_off_mtrl_alpha:I

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 597
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mFavorites:Landroid/view/MenuItem;

    if-eqz p1, :cond_1

    sget p1, Lch/blinkenlights/android/vanilla/R$string;->remove_from_favorites:I

    goto :goto_1

    :cond_1
    sget p1, Lch/blinkenlights/android/vanilla/R$string;->add_to_favorites:I

    :goto_1
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2

    .line 584
    :pswitch_1
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->updateQueuePosition()V

    goto :goto_2

    .line 574
    :pswitch_2
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mGenreView:Landroid/widget/TextView;

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mTrackView:Landroid/widget/TextView;

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mTrack:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mYearView:Landroid/widget/TextView;

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mYear:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mComposerView:Landroid/widget/TextView;

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mPathView:Landroid/widget/TextView;

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mFormatView:Landroid/widget/TextView;

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mFormat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mReplayGainView:Landroid/widget/TextView;

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mReplayGain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 571
    :pswitch_3
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->loadExtraInfo()V

    goto :goto_2

    .line 564
    :pswitch_4
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->getSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 565
    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mControlsVisible:Z

    const-string v1, "visible_controls"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 566
    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mExtraInfoVisible:Z

    const-string v1, "visible_extra_info"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 567
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 588
    :cond_2
    :pswitch_5
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mCurrentSong:Lch/blinkenlights/android/vanilla/Song;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 589
    invoke-static {p0, p1}, Lch/blinkenlights/android/vanilla/Playlist;->getFavoritesId(Landroid/content/Context;Z)J

    move-result-wide v0

    iget-object p1, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mCurrentSong:Lch/blinkenlights/android/vanilla/Song;

    invoke-static {p0, v0, v1, p1}, Lch/blinkenlights/android/vanilla/Playlist;->isInPlaylist(Landroid/content/Context;JLch/blinkenlights/android/vanilla/Song;)Z

    move-result p1

    .line 590
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    :goto_2
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 624
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mOverlayText:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mState:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 625
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->setFinishAction(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->setState(I)V

    goto :goto_0

    .line 626
    :cond_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mCoverView:Lch/blinkenlights/android/vanilla/CoverView;

    if-ne p1, v0, :cond_1

    .line 627
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mCoverPressAction:Lch/blinkenlights/android/vanilla/Action;

    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->performAction(Lch/blinkenlights/android/vanilla/Action;)V

    goto :goto_0

    .line 628
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lch/blinkenlights/android/vanilla/R$id;->info_table:I

    if-ne v0, v1, :cond_2

    .line 629
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mCurrentSong:Lch/blinkenlights/android/vanilla/Song;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->openLibrary(Lch/blinkenlights/android/vanilla/Song;I)V

    goto :goto_0

    .line 631
    :cond_2
    invoke-super {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->onClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 107
    sget v0, Lch/blinkenlights/android/vanilla/R$style;->Playback:I

    invoke-static {p0, v0}, Lch/blinkenlights/android/vanilla/ThemeHelper;->setTheme(Landroid/content/Context;I)V

    .line 108
    invoke-super {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    sget p1, Lch/blinkenlights/android/vanilla/R$string;->playback_view:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 112
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->getSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "display_mode"

    const-string v1, "2"

    .line 113
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 114
    iput v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mDisplayMode:I

    .line 116
    sget v1, Lch/blinkenlights/android/vanilla/R$layout;->full_playback:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    const-string v0, "VanillaMusic"

    const-string v1, "Invalid display mode given. Defaulting to widget mode."

    .line 121
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    sget v1, Lch/blinkenlights/android/vanilla/R$layout;->full_playback_alt:I

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 135
    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 137
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->cover_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lch/blinkenlights/android/vanilla/CoverView;

    .line 138
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0, v1, p0, v3}, Lch/blinkenlights/android/vanilla/CoverView;->setup(Landroid/os/Looper;Lch/blinkenlights/android/vanilla/CoverView$Callback;I)V

    .line 139
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 141
    iput-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mCoverView:Lch/blinkenlights/android/vanilla/CoverView;

    .line 143
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->info_table:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    if-eqz v0, :cond_3

    .line 145
    invoke-virtual {v0, p0}, Landroid/widget/TableLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-virtual {v0, p0}, Landroid/widget/TableLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 147
    iput-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mInfoTable:Landroid/widget/TableLayout;

    .line 150
    :cond_3
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mTitle:Landroid/widget/TextView;

    .line 151
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->album:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mAlbum:Landroid/widget/TextView;

    .line 152
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->artist:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mArtist:Landroid/widget/TextView;

    .line 154
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->queue_pos:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mQueuePosView:Landroid/widget/TextView;

    .line 156
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->genre:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mGenreView:Landroid/widget/TextView;

    .line 157
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->track:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mTrackView:Landroid/widget/TextView;

    .line 158
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->year:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mYearView:Landroid/widget/TextView;

    .line 159
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->composer:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mComposerView:Landroid/widget/TextView;

    .line 160
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->path:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mPathView:Landroid/widget/TextView;

    .line 161
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->format:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mFormatView:Landroid/widget/TextView;

    .line 162
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->replaygain:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mReplayGainView:Landroid/widget/TextView;

    .line 164
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->bindControlButtons()V

    const-string v0, "visible_controls"

    .line 166
    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->setControlsVisible(Z)V

    const-string v0, "visible_extra_info"

    .line 167
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->setExtraInfoVisible(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    .line 288
    invoke-super {p0, p1}, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 289
    sget v0, Lch/blinkenlights/android/vanilla/R$string;->delete:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    const/16 v3, 0xf

    invoke-interface {p1, v2, v3, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 290
    sget v0, Lch/blinkenlights/android/vanilla/R$string;->enqueue_current:I

    const/4 v3, 0x7

    invoke-interface {p1, v2, v3, v1, v0}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v0

    .line 291
    sget v3, Lch/blinkenlights/android/vanilla/R$string;->more_from_current:I

    const/16 v4, 0x15

    invoke-interface {p1, v2, v4, v1, v3}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v3

    .line 292
    sget v4, Lch/blinkenlights/android/vanilla/R$string;->add_to_playlist:I

    const/16 v5, 0x11

    invoke-interface {p1, v2, v5, v1, v4}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    .line 293
    sget v4, Lch/blinkenlights/android/vanilla/R$string;->share:I

    const/16 v5, 0x12

    invoke-interface {p1, v2, v5, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 295
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PluginUtils;->checkPlugins(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    const/16 v4, 0x14

    .line 296
    sget v6, Lch/blinkenlights/android/vanilla/R$string;->plugins:I

    invoke-interface {p1, v2, v4, v1, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    sget v6, Lch/blinkenlights/android/vanilla/R$drawable;->plugin:I

    .line 297
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 298
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    :cond_0
    const/16 v4, 0xc

    .line 301
    sget v6, Lch/blinkenlights/android/vanilla/R$string;->add_to_favorites:I

    invoke-interface {p1, v2, v4, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    sget v4, Lch/blinkenlights/android/vanilla/R$drawable;->btn_rating_star_off_mtrl_alpha:I

    .line 302
    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 303
    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mFavorites:Landroid/view/MenuItem;

    const/16 p1, 0x8

    .line 306
    sget v4, Lch/blinkenlights/android/vanilla/R$string;->album:I

    invoke-interface {v0, v2, p1, v1, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    const/16 p1, 0x9

    .line 307
    sget v4, Lch/blinkenlights/android/vanilla/R$string;->artist:I

    invoke-interface {v0, v2, p1, v1, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    const/16 p1, 0xa

    .line 308
    sget v4, Lch/blinkenlights/android/vanilla/R$string;->genre:I

    invoke-interface {v0, v2, p1, v1, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    const/16 p1, 0x16

    .line 311
    sget v0, Lch/blinkenlights/android/vanilla/R$string;->album:I

    invoke-interface {v3, v2, p1, v1, v0}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    const/16 p1, 0x17

    .line 312
    sget v0, Lch/blinkenlights/android/vanilla/R$string;->artist:I

    invoke-interface {v3, v2, p1, v1, v0}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    const/16 p1, 0x18

    .line 313
    sget v0, Lch/blinkenlights/android/vanilla/R$string;->genre:I

    invoke-interface {v3, v2, p1, v1, v0}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    const/16 p1, 0x19

    .line 314
    sget v0, Lch/blinkenlights/android/vanilla/R$string;->folder:I

    invoke-interface {v3, v2, p1, v1, v0}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 317
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v5
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x15

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x16

    if-eq p1, v0, :cond_1

    const/16 v0, 0x54

    if-eq p1, v0, :cond_0

    .line 436
    invoke-super {p0, p1, p2}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 431
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lch/blinkenlights/android/vanilla/LibraryActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "launch_search"

    .line 432
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 433
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 423
    :cond_1
    invoke-virtual {p0, v1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->shiftCurrentSong(I)V

    .line 424
    sget p1, Lch/blinkenlights/android/vanilla/R$id;->next:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    .line 427
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->shiftCurrentSong(I)V

    .line 428
    sget p1, Lch/blinkenlights/android/vanilla/R$id;->previous:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :goto_0
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 446
    :cond_0
    iget-boolean p1, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mControlsVisible:Z

    xor-int/2addr p1, v1

    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->setControlsVisible(Z)V

    .line 447
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mHandler:Landroid/os/Handler;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v1

    .line 450
    :cond_1
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mSlidingView:Lch/blinkenlights/android/vanilla/SlidingView;

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/SlidingView;->isShrinkable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 451
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mSlidingView:Lch/blinkenlights/android/vanilla/SlidingView;

    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/SlidingView;->hideSlide()V

    return v1

    .line 456
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 637
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 638
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->cover_view:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 639
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mCoverLongPressAction:Lch/blinkenlights/android/vanilla/Action;

    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->performAction(Lch/blinkenlights/android/vanilla/Action;)V

    goto :goto_0

    .line 640
    :cond_0
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->info_table:I

    if-ne p1, v0, :cond_1

    .line 641
    iget-boolean p1, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mExtraInfoVisible:Z

    xor-int/2addr p1, v1

    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->setExtraInfoVisible(Z)V

    .line 642
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    .line 323
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mCurrentSong:Lch/blinkenlights/android/vanilla/Song;

    .line 325
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v2, 0xc

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_4

    const/16 v2, 0xf

    const/4 v5, 0x0

    if-eq v1, v2, :cond_3

    const/16 v2, 0x14

    const-string v6, "id"

    if-eq v1, v2, :cond_2

    const v2, 0x102002c

    const/4 v7, 0x0

    if-eq v1, v2, :cond_1

    const/16 v2, 0x11

    if-eq v1, v2, :cond_0

    const/16 v2, 0x12

    if-eq v1, v2, :cond_6

    const/4 v2, 0x4

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 407
    invoke-super {p0, p1}, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :pswitch_0
    const/4 p1, 0x7

    .line 339
    invoke-virtual {p0, v0, p1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->openLibrary(Lch/blinkenlights/android/vanilla/Song;I)V

    goto/16 :goto_0

    .line 336
    :pswitch_1
    invoke-virtual {p0, v0, v2}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->openLibrary(Lch/blinkenlights/android/vanilla/Song;I)V

    goto/16 :goto_0

    .line 333
    :pswitch_2
    invoke-virtual {p0, v0, v5}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->openLibrary(Lch/blinkenlights/android/vanilla/Song;I)V

    goto/16 :goto_0

    .line 330
    :pswitch_3
    invoke-virtual {p0, v0, v4}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->openLibrary(Lch/blinkenlights/android/vanilla/Song;I)V

    goto/16 :goto_0

    .line 348
    :pswitch_4
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Lch/blinkenlights/android/vanilla/PlaybackService;->enqueueFromSong(Lch/blinkenlights/android/vanilla/Song;I)V

    goto/16 :goto_0

    .line 345
    :pswitch_5
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object p1

    invoke-virtual {p1, v0, v5}, Lch/blinkenlights/android/vanilla/PlaybackService;->enqueueFromSong(Lch/blinkenlights/android/vanilla/Song;I)V

    goto/16 :goto_0

    .line 342
    :pswitch_6
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object p1

    invoke-virtual {p1, v0, v4}, Lch/blinkenlights/android/vanilla/PlaybackService;->enqueueFromSong(Lch/blinkenlights/android/vanilla/Song;I)V

    goto/16 :goto_0

    :cond_0
    if-eqz v0, :cond_6

    .line 362
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "type"

    .line 363
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 364
    iget-wide v0, v0, Lch/blinkenlights/android/vanilla/Song;->id:J

    invoke-virtual {p1, v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 365
    invoke-static {p0, p1, v7}, Lch/blinkenlights/android/vanilla/PlaylistDialog;->newInstance(Lch/blinkenlights/android/vanilla/PlaylistDialog$Callback;Landroid/content/Intent;Lch/blinkenlights/android/vanilla/LibraryAdapter;)Lch/blinkenlights/android/vanilla/PlaylistDialog;

    move-result-object p1

    .line 366
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "PlaylistDialog"

    invoke-virtual {p1, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 327
    invoke-virtual {p0, v7, p1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->openLibrary(Lch/blinkenlights/android/vanilla/Song;I)V

    goto/16 :goto_0

    :cond_2
    if-eqz v0, :cond_6

    .line 401
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 402
    iget-wide v0, v0, Lch/blinkenlights/android/vanilla/Song;->id:J

    invoke-virtual {p1, v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 403
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->showPluginMenu(Landroid/content/Intent;)V

    goto :goto_0

    .line 374
    :cond_3
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    if-eqz v0, :cond_6

    .line 378
    sget p1, Lch/blinkenlights/android/vanilla/R$string;->delete_file:I

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, v0, Lch/blinkenlights/android/vanilla/Song;->title:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 379
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 380
    sget v2, Lch/blinkenlights/android/vanilla/R$string;->delete:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 382
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v2, Lch/blinkenlights/android/vanilla/R$string;->delete:I

    new-instance v3, Lch/blinkenlights/android/vanilla/FullPlaybackActivity$2;

    invoke-direct {v3, p0, v0}, Lch/blinkenlights/android/vanilla/FullPlaybackActivity$2;-><init>(Lch/blinkenlights/android/vanilla/FullPlaybackActivity;Lch/blinkenlights/android/vanilla/Song;)V

    .line 383
    invoke-virtual {p1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    new-instance v2, Lch/blinkenlights/android/vanilla/FullPlaybackActivity$1;

    invoke-direct {v2, p0}, Lch/blinkenlights/android/vanilla/FullPlaybackActivity$1;-><init>(Lch/blinkenlights/android/vanilla/FullPlaybackActivity;)V

    .line 392
    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 396
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 351
    :cond_4
    invoke-static {p0, v4}, Lch/blinkenlights/android/vanilla/Playlist;->getFavoritesId(Landroid/content/Context;Z)J

    move-result-wide v1

    if-eqz v0, :cond_6

    .line 353
    new-instance p1, Lch/blinkenlights/android/vanilla/PlaylistTask;

    sget v5, Lch/blinkenlights/android/vanilla/R$string;->playlist_favorites:I

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p1, v1, v2, v5}, Lch/blinkenlights/android/vanilla/PlaylistTask;-><init>(JLjava/lang/String;)V

    .line 354
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p1, Lch/blinkenlights/android/vanilla/PlaylistTask;->audioIds:Ljava/util/ArrayList;

    .line 355
    iget-object v5, p1, Lch/blinkenlights/android/vanilla/PlaylistTask;->audioIds:Ljava/util/ArrayList;

    iget-wide v6, v0, Lch/blinkenlights/android/vanilla/Song;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    invoke-static {p0, v1, v2, v0}, Lch/blinkenlights/android/vanilla/Playlist;->isInPlaylist(Landroid/content/Context;JLch/blinkenlights/android/vanilla/Song;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x3

    .line 357
    :cond_5
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_6
    :goto_0
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPositionInfoChanged()V
    .locals 2

    .line 282
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mQueuePosView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 415
    invoke-virtual {p0, v0, v1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->openLibrary(Lch/blinkenlights/android/vanilla/Song;I)V

    const/4 v0, 0x0

    return v0
.end method

.method public onSlideExpansionChanged(I)V
    .locals 2

    .line 652
    invoke-super {p0, p1}, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->onSlideExpansionChanged(I)V

    const/4 v0, 0x1

    .line 654
    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->setControlsVisible(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 656
    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->setExtraInfoVisible(Z)V

    goto :goto_0

    .line 658
    :cond_0
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->getSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "visible_extra_info"

    .line 659
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->setExtraInfoVisible(Z)V

    :goto_0
    return-void
.end method

.method protected onSongChange(Lch/blinkenlights/android/vanilla/Song;)V
    .locals 2

    .line 239
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 241
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mAlbum:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mArtist:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 245
    :cond_0
    iget-object v1, p1, Lch/blinkenlights/android/vanilla/Song;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mAlbum:Landroid/widget/TextView;

    iget-object v1, p1, Lch/blinkenlights/android/vanilla/Song;->album:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mArtist:Landroid/widget/TextView;

    iget-object v1, p1, Lch/blinkenlights/android/vanilla/Song;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :goto_0
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->updateQueuePosition()V

    .line 252
    :cond_1
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mCurrentSong:Lch/blinkenlights/android/vanilla/Song;

    .line 254
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 258
    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mExtraInfoVisible:Z

    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 261
    :cond_2
    invoke-super {p0, p1}, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->onSongChange(Lch/blinkenlights/android/vanilla/Song;)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 172
    invoke-super {p0}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->onStart()V

    .line 174
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->getSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 175
    iget v1, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mDisplayMode:I

    const-string v2, "display_mode"

    const-string v3, "2"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 177
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 180
    :cond_0
    sget-object v1, Lch/blinkenlights/android/vanilla/PrefDefaults;->COVER_PRESS_ACTION:Lch/blinkenlights/android/vanilla/Action;

    const-string v2, "cover_press_action"

    invoke-static {v0, v2, v1}, Lch/blinkenlights/android/vanilla/Action;->getAction(Landroid/content/SharedPreferences;Ljava/lang/String;Lch/blinkenlights/android/vanilla/Action;)Lch/blinkenlights/android/vanilla/Action;

    move-result-object v1

    iput-object v1, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mCoverPressAction:Lch/blinkenlights/android/vanilla/Action;

    .line 181
    sget-object v1, Lch/blinkenlights/android/vanilla/PrefDefaults;->COVER_LONGPRESS_ACTION:Lch/blinkenlights/android/vanilla/Action;

    const-string v2, "cover_longpress_action"

    invoke-static {v0, v2, v1}, Lch/blinkenlights/android/vanilla/Action;->getAction(Landroid/content/SharedPreferences;Ljava/lang/String;Lch/blinkenlights/android/vanilla/Action;)Lch/blinkenlights/android/vanilla/Action;

    move-result-object v0

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mCoverLongPressAction:Lch/blinkenlights/android/vanilla/Action;

    return-void
.end method

.method protected onStateChange(II)V
    .locals 0

    .line 221
    invoke-super {p0, p1, p2}, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->onStateChange(II)V

    and-int/lit8 p2, p2, 0xa

    if-eqz p2, :cond_2

    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_0

    .line 225
    sget p1, Lch/blinkenlights/android/vanilla/R$string;->no_songs:I

    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->showOverlayMessage(I)V

    goto :goto_0

    :cond_0
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_1

    .line 227
    sget p1, Lch/blinkenlights/android/vanilla/R$string;->empty_queue:I

    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->showOverlayMessage(I)V

    goto :goto_0

    .line 229
    :cond_1
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->hideMessageOverlay()V

    .line 233
    :cond_2
    :goto_0
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mQueuePosView:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 234
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->updateQueuePosition()V

    :cond_3
    return-void
.end method

.method protected performAction(Lch/blinkenlights/android/vanilla/Action;)V
    .locals 2

    .line 609
    sget-object v0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity$3;->$SwitchMap$ch$blinkenlights$android$vanilla$Action:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 618
    invoke-super {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->performAction(Lch/blinkenlights/android/vanilla/Action;)V

    goto :goto_0

    .line 615
    :cond_0
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/SlidingPlaybackActivity;->mSlidingView:Lch/blinkenlights/android/vanilla/SlidingView;

    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/SlidingView;->expandSlide()V

    goto :goto_0

    .line 611
    :cond_1
    iget-boolean p1, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->mControlsVisible:Z

    xor-int/2addr p1, v1

    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->setControlsVisible(Z)V

    .line 612
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method
