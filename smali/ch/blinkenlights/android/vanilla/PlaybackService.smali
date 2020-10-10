.class public final Lch/blinkenlights/android/vanilla/PlaybackService;
.super Landroid/app/Service;
.source "PlaybackService.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lch/blinkenlights/android/vanilla/SongTimeline$Callback;
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/blinkenlights/android/vanilla/PlaybackService$Receiver;
    }
.end annotation


# static fields
.field private static final sCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lch/blinkenlights/android/vanilla/TimelineCallback;",
            ">;"
        }
    .end annotation
.end field

.field public static sInstance:Lch/blinkenlights/android/vanilla/PlaybackService;

.field private static final sWait:[Ljava/lang/Object;


# instance fields
.field private mAccelFiltered:D

.field private mAccelLast:D

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoPlPlaycounts:I

.field private mBastpUtil:Lch/blinkenlights/android/vanilla/BastpUtil;

.field private mCurrentSong:Lch/blinkenlights/android/vanilla/Song;

.field private mErrorMessage:Ljava/lang/String;

.field private mFadeOut:F

.field private mForceNotificationVisible:Z

.field private mHandler:Landroid/os/Handler;

.field private mHeadsetOnly:Z

.field mHeadsetPause:Z

.field private mIdleStart:J

.field private mIdleTimeout:I

.field private mIgnoreAudioFocusLoss:Z

.field private mLastShakeTime:J

.field private mLooper:Landroid/os/Looper;

.field mMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

.field private mMediaPlayerAudioFxActive:Z

.field private mMediaPlayerInitialized:Z

.field private mNotificationAction:Landroid/app/PendingIntent;

.field private mNotificationHelper:Lch/blinkenlights/android/vanilla/NotificationHelper;

.field private mNotificationNag:Z

.field private mNotificationVisibility:I

.field private final mObserver:Lch/blinkenlights/android/medialibrary/LibraryObserver;

.field private mPendingSeek:I

.field private mPendingSeekSong:J

.field private mPlaylistObserver:Lch/blinkenlights/android/vanilla/PlaylistObserver;

.field mPreparedMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

.field private mReadahead:Lch/blinkenlights/android/vanilla/ReadaheadThread;

.field private mReadaheadEnabled:Z

.field public mReceiver:Lch/blinkenlights/android/vanilla/PlaybackService$Receiver;

.field private mRemoteControlClient:Lch/blinkenlights/android/vanilla/RemoteControl$Client;

.field private mReplayGainAlbumEnabled:Z

.field private mReplayGainBump:I

.field private mReplayGainTrackEnabled:Z

.field private mReplayGainUntaggedDeBump:I

.field private mScrobble:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShakeAction:Lch/blinkenlights/android/vanilla/Action;

.field private mShakeThreshold:D

.field mSkipBroken:I

.field mState:I

.field final mStateLock:[Ljava/lang/Object;

.field private mStockBroadcast:Z

.field mTimeline:Lch/blinkenlights/android/vanilla/SongTimeline;

.field private mTransientAudioLoss:Z

.field private mVolumeDuringDucking:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 291
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lch/blinkenlights/android/vanilla/PlaybackService;->sWait:[Ljava/lang/Object;

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lch/blinkenlights/android/vanilla/PlaybackService;->sCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 287
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mStateLock:[Ljava/lang/Object;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 371
    iput v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mFadeOut:F

    const-wide/16 v0, -0x1

    .line 376
    iput-wide v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mIdleStart:J

    .line 1974
    new-instance v0, Lch/blinkenlights/android/vanilla/PlaybackService$1;

    invoke-direct {v0, p0}, Lch/blinkenlights/android/vanilla/PlaybackService$1;-><init>(Lch/blinkenlights/android/vanilla/PlaybackService;)V

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mObserver:Lch/blinkenlights/android/medialibrary/LibraryObserver;

    return-void
.end method

.method public static addTimelineCallback(Lch/blinkenlights/android/vanilla/TimelineCallback;)V
    .locals 1

    .line 2017
    sget-object v0, Lch/blinkenlights/android/vanilla/PlaybackService;->sCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private applyReplayGain(Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;)V
    .locals 5

    .line 734
    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->getDataSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->getReplayGainValues(Ljava/lang/String;)Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;

    move-result-object v0

    .line 737
    iget-boolean v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mReplayGainAlbumEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 738
    iget v1, v0, Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;->track:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 739
    :goto_0
    iget v3, v0, Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;->album:F

    cmpl-float v4, v3, v2

    if-eqz v4, :cond_2

    move v1, v3

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 742
    :cond_2
    :goto_1
    iget-boolean v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mReplayGainTrackEnabled:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mReplayGainAlbumEnabled:Z

    if-eqz v3, :cond_5

    cmpl-float v3, v1, v2

    if-nez v3, :cond_5

    .line 743
    :cond_3
    iget v3, v0, Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;->album:F

    cmpl-float v4, v3, v2

    if-eqz v4, :cond_4

    move v1, v3

    .line 744
    :cond_4
    iget v3, v0, Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;->track:F

    cmpl-float v4, v3, v2

    if-eqz v4, :cond_5

    move v1, v3

    .line 747
    :cond_5
    iget-boolean v0, v0, Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;->found:Z

    const/high16 v3, 0x41200000    # 10.0f

    if-nez v0, :cond_6

    .line 749
    iget v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mReplayGainUntaggedDeBump:I

    add-int/lit16 v0, v0, -0x96

    int-to-float v0, v0

    div-float/2addr v0, v3

    goto :goto_2

    .line 754
    :cond_6
    iget v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mReplayGainBump:I

    add-int/lit8 v0, v0, -0x4b

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-float/2addr v0, v3

    add-float/2addr v1, v0

    move v0, v1

    .line 757
    :goto_2
    iget-boolean v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mReplayGainAlbumEnabled:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mReplayGainTrackEnabled:Z

    if-nez v1, :cond_7

    const/4 v0, 0x0

    :cond_7
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    const/high16 v1, 0x41a00000    # 20.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 762
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mFadeOut:F

    mul-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v1

    if-lez v3, :cond_8

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_8
    cmpg-float v1, v0, v2

    if-gez v1, :cond_9

    const/4 v0, 0x0

    .line 768
    :cond_9
    :goto_3
    invoke-virtual {p1, v0}, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->setReplayGain(F)V

    return-void
.end method

.method private broadcastChange(ILch/blinkenlights/android/vanilla/Song;J)V
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1108
    sget-object v1, Lch/blinkenlights/android/vanilla/PlaybackService;->sCallbacks:Ljava/util/ArrayList;

    .line 1109
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    add-int/2addr v2, v0

    if-eq v2, v0, :cond_0

    .line 1110
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/blinkenlights/android/vanilla/TimelineCallback;

    invoke-interface {v3, p3, p4, p1}, Lch/blinkenlights/android/vanilla/TimelineCallback;->setState(JI)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 1114
    sget-object p1, Lch/blinkenlights/android/vanilla/PlaybackService;->sCallbacks:Ljava/util/ArrayList;

    .line 1115
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    add-int/2addr v1, v0

    if-eq v1, v0, :cond_1

    .line 1116
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/blinkenlights/android/vanilla/TimelineCallback;

    invoke-interface {v2, p3, p4, p2}, Lch/blinkenlights/android/vanilla/TimelineCallback;->setSong(JLch/blinkenlights/android/vanilla/Song;)V

    goto :goto_1

    .line 1119
    :cond_1
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->updateWidgets()V

    .line 1121
    iget-boolean p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mReadaheadEnabled:Z

    if-eqz p1, :cond_2

    .line 1122
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->triggerReadAhead()V

    .line 1124
    :cond_2
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mRemoteControlClient:Lch/blinkenlights/android/vanilla/RemoteControl$Client;

    iget-object p2, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mCurrentSong:Lch/blinkenlights/android/vanilla/Song;

    iget p3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    iget-boolean p4, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mForceNotificationVisible:Z

    invoke-interface {p1, p2, p3, p4}, Lch/blinkenlights/android/vanilla/RemoteControl$Client;->updateRemote(Lch/blinkenlights/android/vanilla/Song;IZ)V

    .line 1126
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->scrobbleBroadcast()V

    return-void
.end method

.method private declared-synchronized enterSleepState()V
    .locals 1

    monitor-enter p0

    .line 786
    :try_start_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    if-eqz v0, :cond_1

    .line 787
    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayerAudioFxActive:Z

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->closeAudioFx()V

    const/4 v0, 0x0

    .line 789
    iput-boolean v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayerAudioFxActive:Z

    .line 791
    :cond_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->saveState(I)V

    .line 794
    :cond_1
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 795
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static finishAction(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x70

    shr-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;
    .locals 2

    .line 1988
    sget-object v0, Lch/blinkenlights/android/vanilla/PlaybackService;->sInstance:Lch/blinkenlights/android/vanilla/PlaybackService;

    if-nez v0, :cond_0

    .line 1989
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lch/blinkenlights/android/vanilla/PlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1991
    :goto_0
    sget-object p0, Lch/blinkenlights/android/vanilla/PlaybackService;->sInstance:Lch/blinkenlights/android/vanilla/PlaybackService;

    if-nez p0, :cond_0

    .line 1993
    :try_start_0
    sget-object p0, Lch/blinkenlights/android/vanilla/PlaybackService;->sWait:[Ljava/lang/Object;

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1994
    :try_start_1
    sget-object v0, Lch/blinkenlights/android/vanilla/PlaybackService;->sWait:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 1995
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    nop

    goto :goto_0

    .line 2001
    :cond_0
    sget-object p0, Lch/blinkenlights/android/vanilla/PlaybackService;->sInstance:Lch/blinkenlights/android/vanilla/PlaybackService;

    return-object p0
.end method

.method private getMirrorLinkCallback()Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;
    .locals 4

    .line 1224
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    return-object v1

    .line 1227
    :cond_0
    sget-object v0, Lch/blinkenlights/android/vanilla/PlaybackService;->sCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1228
    instance-of v3, v2, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    if-eqz v3, :cond_1

    .line 1229
    check-cast v2, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    return-object v2

    :cond_2
    return-object v1
.end method

.method private getNewMediaPlayer()Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;
    .locals 2

    .line 670
    new-instance v0, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    invoke-direct {v0, p0}, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x3

    .line 671
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 672
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 673
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-object v0
.end method

.method public static hasInstance()Z
    .locals 1

    .line 2009
    sget-object v0, Lch/blinkenlights/android/vanilla/PlaybackService;->sInstance:Lch/blinkenlights/android/vanilla/PlaybackService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initWidgets()V
    .locals 1

    .line 1134
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 1135
    invoke-static {p0, v0}, Lch/blinkenlights/android/vanilla/OneCellWidget;->checkEnabled(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V

    .line 1136
    invoke-static {p0, v0}, Lch/blinkenlights/android/vanilla/FourSquareWidget;->checkEnabled(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V

    .line 1137
    invoke-static {p0, v0}, Lch/blinkenlights/android/vanilla/FourLongWidget;->checkEnabled(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V

    .line 1138
    invoke-static {p0, v0}, Lch/blinkenlights/android/vanilla/FourWhiteWidget;->checkEnabled(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V

    .line 1139
    invoke-static {p0, v0}, Lch/blinkenlights/android/vanilla/WidgetD;->checkEnabled(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V

    .line 1140
    invoke-static {p0, v0}, Lch/blinkenlights/android/vanilla/WidgetE;->checkEnabled(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V

    return-void
.end method

.method private isSpeakerOn()Z
    .locals 9

    const/4 v0, 0x6

    .line 990
    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x3

    .line 991
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v0, v5

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v1

    const/16 v1, 0x16

    .line 992
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v0, v4

    .line 994
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v1, v4, :cond_2

    .line 995
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    .line 996
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    .line 997
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AudioDeviceInfo type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "VanillaMusic"

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    .line 1004
    :cond_2
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    return v2
.end method

.method private loadPreference(Ljava/lang/String;)V
    .locals 7

    .line 879
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->getSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "headset_pause"

    .line 880
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 881
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHeadsetPause:Z

    goto/16 :goto_9

    :cond_0
    const-string v1, "notification_action"

    .line 882
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 883
    invoke-virtual {p0, v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->createNotificationAction(Landroid/content/SharedPreferences;)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mNotificationAction:Landroid/app/PendingIntent;

    .line 884
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->updateNotification()V

    goto/16 :goto_9

    :cond_1
    const-string v1, "notification_visibility"

    .line 885
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "0"

    if-eqz v2, :cond_2

    .line 886
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mNotificationVisibility:I

    .line 890
    invoke-virtual {p0, v3}, Landroid/app/Service;->stopForeground(Z)V

    .line 891
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->updateNotification()V

    goto/16 :goto_9

    :cond_2
    const-string v1, "notification_nag"

    .line 892
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 893
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mNotificationNag:Z

    goto/16 :goto_9

    :cond_3
    const-string v1, "scrobble"

    .line 895
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 896
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mScrobble:Z

    goto/16 :goto_9

    :cond_4
    const-string v1, "media_button"

    .line 897
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "media_button_beep"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_8

    :cond_5
    const-string v1, "cover_on_lockscreen"

    .line 900
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 901
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mRemoteControlClient:Lch/blinkenlights/android/vanilla/RemoteControl$Client;

    invoke-interface {p1}, Lch/blinkenlights/android/vanilla/RemoteControl$Client;->reloadPreference()V

    goto/16 :goto_9

    :cond_6
    const-string v1, "use_idle_timeout"

    .line 902
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, "idle_timeout"

    if-nez v2, :cond_1f

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto/16 :goto_7

    :cond_7
    const-string v1, "coverloader_android"

    .line 905
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 906
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_8

    sget p1, Lch/blinkenlights/android/vanilla/CoverCache;->mCoverLoadMode:I

    or-int/2addr p1, v3

    goto :goto_0

    :cond_8
    sget p1, Lch/blinkenlights/android/vanilla/CoverCache;->mCoverLoadMode:I

    and-int/lit8 p1, p1, -0x2

    :goto_0
    sput p1, Lch/blinkenlights/android/vanilla/CoverCache;->mCoverLoadMode:I

    .line 907
    invoke-static {}, Lch/blinkenlights/android/vanilla/CoverCache;->evictAll()V

    goto/16 :goto_9

    :cond_9
    const-string v1, "coverloader_vanilla"

    .line 908
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 909
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_a

    sget p1, Lch/blinkenlights/android/vanilla/CoverCache;->mCoverLoadMode:I

    or-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_a
    sget p1, Lch/blinkenlights/android/vanilla/CoverCache;->mCoverLoadMode:I

    and-int/lit8 p1, p1, -0x3

    :goto_1
    sput p1, Lch/blinkenlights/android/vanilla/CoverCache;->mCoverLoadMode:I

    .line 910
    invoke-static {}, Lch/blinkenlights/android/vanilla/CoverCache;->evictAll()V

    goto/16 :goto_9

    :cond_b
    const-string v1, "coverloader_shadow"

    .line 911
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 912
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_c

    sget p1, Lch/blinkenlights/android/vanilla/CoverCache;->mCoverLoadMode:I

    or-int/lit8 p1, p1, 0x4

    goto :goto_2

    :cond_c
    sget p1, Lch/blinkenlights/android/vanilla/CoverCache;->mCoverLoadMode:I

    and-int/lit8 p1, p1, -0x5

    :goto_2
    sput p1, Lch/blinkenlights/android/vanilla/CoverCache;->mCoverLoadMode:I

    .line 913
    invoke-static {}, Lch/blinkenlights/android/vanilla/CoverCache;->evictAll()V

    goto/16 :goto_9

    :cond_d
    const-string v1, "headset_only"

    .line 914
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 915
    invoke-interface {v0, p1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHeadsetOnly:Z

    .line 916
    iget-boolean p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHeadsetOnly:Z

    if-eqz p1, :cond_22

    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->isSpeakerOn()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 917
    invoke-virtual {p0, v3}, Lch/blinkenlights/android/vanilla/PlaybackService;->unsetFlag(I)V

    goto/16 :goto_9

    :cond_e
    const-string v1, "stock_broadcast"

    .line 918
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 919
    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mStockBroadcast:Z

    goto/16 :goto_9

    :cond_f
    const-string v1, "enable_shake"

    .line 920
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "shake_action"

    if-nez v2, :cond_1d

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto/16 :goto_5

    :cond_10
    const-string v1, "shake_threshold"

    .line 923
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/16 p1, 0x50

    .line 924
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    iput-wide v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mShakeThreshold:D

    goto/16 :goto_9

    :cond_11
    const-string v1, "enable_track_replaygain"

    .line 925
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string p1, "enable_track_replaygain"

    .line 926
    invoke-interface {v0, p1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mReplayGainTrackEnabled:Z

    .line 927
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->refreshReplayGainValues()V

    goto/16 :goto_9

    :cond_12
    const-string v1, "enable_album_replaygain"

    .line 928
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string p1, "enable_album_replaygain"

    .line 929
    invoke-interface {v0, p1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mReplayGainAlbumEnabled:Z

    .line 930
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->refreshReplayGainValues()V

    goto/16 :goto_9

    :cond_13
    const-string v1, "replaygain_bump"

    .line 931
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/16 p1, 0x4b

    const-string v1, "replaygain_bump"

    .line 932
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mReplayGainBump:I

    .line 933
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->refreshReplayGainValues()V

    goto/16 :goto_9

    :cond_14
    const-string v1, "replaygain_untagged_debump"

    .line 934
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 p1, 0x96

    const-string v1, "replaygain_untagged_debump"

    .line 935
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mReplayGainUntaggedDeBump:I

    .line 936
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->refreshReplayGainValues()V

    goto/16 :goto_9

    :cond_15
    const-string v1, "volume_during_ducking"

    .line 937
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/16 p1, 0x32

    const-string v1, "volume_during_ducking"

    .line 938
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mVolumeDuringDucking:I

    .line 939
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->refreshDuckingValues()V

    goto/16 :goto_9

    :cond_16
    const-string v1, "ignore_audiofocus_loss"

    .line 940
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string p1, "ignore_audiofocus_loss"

    .line 941
    invoke-interface {v0, p1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mIgnoreAudioFocusLoss:Z

    goto/16 :goto_9

    :cond_17
    const-string v1, "enable_readahead"

    .line 942
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string p1, "enable_readahead"

    .line 943
    invoke-interface {v0, p1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mReadaheadEnabled:Z

    goto/16 :goto_9

    :cond_18
    const-string v1, "playcounts_autoplaylist"

    .line 944
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string p1, "playcounts_autoplaylist"

    .line 945
    invoke-interface {v0, p1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mAutoPlPlaycounts:I

    goto/16 :goto_9

    :cond_19
    const-string v1, "playlist_sync_mode"

    .line 946
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "playlist_sync_folder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "playlist_export_relative_paths"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_4

    :cond_1a
    const-string v0, "selected_theme"

    .line 953
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "display_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 955
    :cond_1b
    sget-object p1, Lch/blinkenlights/android/vanilla/PlaybackService;->sCallbacks:Ljava/util/ArrayList;

    .line 956
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_22

    .line 957
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/blinkenlights/android/vanilla/TimelineCallback;

    invoke-interface {v1}, Lch/blinkenlights/android/vanilla/TimelineCallback;->recreate()V

    goto :goto_3

    :cond_1c
    :goto_4
    const-string p1, "playlist_sync_mode"

    .line 947
    invoke-interface {v0, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "playlist_export_relative_paths"

    .line 948
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "playlist_sync_folder"

    const-string v3, "/sdcard/Playlists"

    .line 949
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 951
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mPlaylistObserver:Lch/blinkenlights/android/vanilla/PlaylistObserver;

    invoke-virtual {v2}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->unregister()V

    .line 952
    new-instance v2, Lch/blinkenlights/android/vanilla/PlaylistObserver;

    invoke-direct {v2, p0, v0, p1, v1}, Lch/blinkenlights/android/vanilla/PlaylistObserver;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    iput-object v2, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mPlaylistObserver:Lch/blinkenlights/android/vanilla/PlaylistObserver;

    goto :goto_9

    .line 921
    :cond_1d
    :goto_5
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1e

    sget-object p1, Lch/blinkenlights/android/vanilla/PrefDefaults;->SHAKE_ACTION:Lch/blinkenlights/android/vanilla/Action;

    invoke-static {v0, v3, p1}, Lch/blinkenlights/android/vanilla/Action;->getAction(Landroid/content/SharedPreferences;Ljava/lang/String;Lch/blinkenlights/android/vanilla/Action;)Lch/blinkenlights/android/vanilla/Action;

    move-result-object p1

    goto :goto_6

    :cond_1e
    sget-object p1, Lch/blinkenlights/android/vanilla/Action;->Nothing:Lch/blinkenlights/android/vanilla/Action;

    :goto_6
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mShakeAction:Lch/blinkenlights/android/vanilla/Action;

    .line 922
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->setupSensor()V

    goto :goto_9

    .line 903
    :cond_1f
    :goto_7
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_20

    const/16 p1, 0xe10

    invoke-interface {v0, v6, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    :cond_20
    iput v5, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mIdleTimeout:I

    .line 904
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->userActionTriggered()V

    goto :goto_9

    .line 898
    :cond_21
    :goto_8
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;->reloadPreference(Landroid/content/Context;)V

    .line 899
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mRemoteControlClient:Lch/blinkenlights/android/vanilla/RemoteControl$Client;

    invoke-interface {p1}, Lch/blinkenlights/android/vanilla/RemoteControl$Client;->initializeRemote()V

    .line 960
    :cond_22
    :goto_9
    new-instance p1, Landroid/app/backup/BackupManager;

    invoke-direct {p1, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/backup/BackupManager;->dataChanged()V

    return-void
.end method

.method private preparePlayCountsUpdate(I)V
    .locals 7

    .line 689
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 690
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->getPosition()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->getDuration()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const-wide v4, 0x3fe999999999999aL    # 0.8

    cmpl-double v6, v0, v4

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double p1, v0, v4

    if-gtz p1, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 700
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x11

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mCurrentSong:Lch/blinkenlights/android/vanilla/Song;

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x320

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method

.method private processNewState(II)V
    .locals 5

    xor-int/2addr p1, p2

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    .line 1036
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mCurrentSong:Lch/blinkenlights/android/vanilla/Song;

    if-eqz v0, :cond_7

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_3

    .line 1040
    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayerAudioFxActive:Z

    if-nez v0, :cond_0

    .line 1041
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->openAudioFx()V

    .line 1042
    iput-boolean v2, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayerAudioFxActive:Z

    .line 1045
    :cond_0
    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayerInitialized:Z

    if-eqz v0, :cond_1

    .line 1046
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1049
    :cond_1
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mCurrentSong:Lch/blinkenlights/android/vanilla/Song;

    iget v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    iget v4, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mNotificationVisibility:I

    invoke-virtual {p0, v0, v3, v4}, Lch/blinkenlights/android/vanilla/PlaybackService;->createNotification(Lch/blinkenlights/android/vanilla/Song;II)Landroid/app/Notification;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {p0, v3, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 1051
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    invoke-virtual {v0, p0, v3, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 1053
    invoke-virtual {p0, v2}, Lch/blinkenlights/android/vanilla/PlaybackService;->unsetFlag(I)V

    .line 1056
    :cond_2
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1058
    :try_start_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1059
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1064
    :cond_3
    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayerInitialized:Z

    if-eqz v0, :cond_4

    .line 1065
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1072
    :cond_4
    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mForceNotificationVisible:Z

    if-nez v0, :cond_5

    iget v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mNotificationVisibility:I

    if-eq v0, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    .line 1073
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 1074
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->updateNotification()V

    .line 1079
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1082
    :catch_0
    :cond_6
    :goto_1
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->setupSensor()V

    :cond_7
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_8

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_8

    .line 1086
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mCurrentSong:Lch/blinkenlights/android/vanilla/Song;

    if-eqz v0, :cond_8

    .line 1087
    iget-boolean v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayerInitialized:Z

    if-eqz v3, :cond_8

    .line 1088
    iget-object v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    iput v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mPendingSeek:I

    .line 1089
    iget-wide v3, v0, Lch/blinkenlights/android/vanilla/Song;->id:J

    iput-wide v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mPendingSeekSong:J

    :cond_8
    and-int/lit16 v0, p1, 0x380

    if-eqz v0, :cond_9

    .line 1094
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mTimeline:Lch/blinkenlights/android/vanilla/SongTimeline;

    invoke-static {p2}, Lch/blinkenlights/android/vanilla/PlaybackService;->shuffleMode(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lch/blinkenlights/android/vanilla/SongTimeline;->setShuffleMode(I)V

    :cond_9
    and-int/lit8 v0, p1, 0x70

    if-eqz v0, :cond_a

    .line 1096
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mTimeline:Lch/blinkenlights/android/vanilla/SongTimeline;

    invoke-static {p2}, Lch/blinkenlights/android/vanilla/PlaybackService;->finishAction(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lch/blinkenlights/android/vanilla/SongTimeline;->setFinishAction(I)V

    :cond_a
    and-int/lit16 p1, p1, 0x400

    if-eqz p1, :cond_c

    and-int/lit16 p1, p2, 0x400

    if-eqz p1, :cond_b

    const/4 v1, 0x1

    .line 1100
    :cond_b
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    invoke-virtual {p1, v1}, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->setIsDucking(Z)V

    .line 1101
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mPreparedMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    invoke-virtual {p1, v1}, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->setIsDucking(Z)V

    :cond_c
    return-void
.end method

.method private processSong(Lch/blinkenlights/android/vanilla/Song;)V
    .locals 8

    .line 1391
    iget v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1394
    :goto_0
    :try_start_0
    iput-boolean v2, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayerInitialized:Z

    .line 1395
    iget-object v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    invoke-virtual {v3}, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->reset()V

    .line 1397
    iget-object v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mPreparedMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1401
    iget-object v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    .line 1402
    iget-object v4, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mPreparedMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    iput-object v4, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    .line 1403
    iput-object v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mPreparedMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    goto :goto_1

    .line 1406
    :cond_1
    iget-object v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    iget-object v4, p1, Lch/blinkenlights/android/vanilla/Song;->path:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lch/blinkenlights/android/vanilla/PlaybackService;->prepareMediaPlayer(Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;Ljava/lang/String;)V

    .line 1410
    :goto_1
    iput-boolean v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayerInitialized:Z

    .line 1412
    iget-object v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1413
    iget-object v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1415
    iget v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mPendingSeek:I

    if-eqz v3, :cond_3

    .line 1416
    iget-wide v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mPendingSeekSong:J

    iget-wide v5, p1, Lch/blinkenlights/android/vanilla/Song;->id:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    .line 1417
    iget-object v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    iget v4, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mPendingSeek:I

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1421
    :cond_2
    iput v2, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mPendingSeek:I

    .line 1424
    :cond_3
    iget v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_4

    .line 1425
    iget-object v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 1427
    :cond_4
    iget v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    .line 1428
    iput-object v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mErrorMessage:Ljava/lang/String;

    .line 1429
    iget v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    and-int/lit8 v3, v3, -0x5

    invoke-direct {p0, v3}, Lch/blinkenlights/android/vanilla/PlaybackService;->updateState(I)I

    .line 1431
    :cond_5
    iput v2, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mSkipBroken:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 1433
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lch/blinkenlights/android/vanilla/R$string;->song_load_failed:I

    new-array v6, v1, [Ljava/lang/Object;

    iget-object p1, p1, Lch/blinkenlights/android/vanilla/Song;->path:Ljava/lang/String;

    aput-object p1, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mErrorMessage:Ljava/lang/String;

    .line 1434
    iget p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    or-int/lit8 p1, p1, 0x4

    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->updateState(I)I

    .line 1435
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mErrorMessage:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lch/blinkenlights/android/vanilla/PlaybackService;->showMirrorLinkSafeToast(Ljava/lang/CharSequence;I)V

    const-string p1, "VanillaMusic"

    const-string v4, "IOException"

    .line 1436
    invoke-static {p1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1440
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mTimeline:Lch/blinkenlights/android/vanilla/SongTimeline;

    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/SongTimeline;->isEndOfQueue()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0, v1}, Lch/blinkenlights/android/vanilla/PlaybackService;->getSong(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object p1

    if-eqz p1, :cond_7

    if-nez v0, :cond_6

    iget p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mSkipBroken:I

    if-lez p1, :cond_7

    const/16 v0, 0xa

    if-ge p1, v0, :cond_7

    .line 1441
    :cond_6
    iget p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mSkipBroken:I

    add-int/2addr p1, v1

    iput p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mSkipBroken:I

    .line 1442
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xf

    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->getTimelinePosition()I

    move-result v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1447
    :cond_7
    :goto_2
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->updateNotification()V

    return-void
.end method

.method private refreshDuckingValues()V
    .locals 2

    .line 719
    iget v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mVolumeDuringDucking:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 720
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    if-eqz v1, :cond_0

    .line 721
    invoke-virtual {v1, v0}, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->setDuckingFactor(F)V

    .line 723
    :cond_0
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mPreparedMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    if-eqz v1, :cond_1

    .line 724
    invoke-virtual {v1, v0}, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->setDuckingFactor(F)V

    :cond_1
    return-void
.end method

.method private refreshReplayGainValues()V
    .locals 1

    .line 710
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    if-eqz v0, :cond_0

    .line 711
    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->applyReplayGain(Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;)V

    .line 713
    :cond_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mPreparedMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    if-eqz v0, :cond_1

    .line 714
    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->applyReplayGain(Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;)V

    :cond_1
    return-void
.end method

.method public static removeTimelineCallback(Lch/blinkenlights/android/vanilla/TimelineCallback;)V
    .locals 1

    .line 2025
    sget-object v0, Lch/blinkenlights/android/vanilla/PlaybackService;->sCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private runQuery(Lch/blinkenlights/android/vanilla/QueryTask;)V
    .locals 5

    .line 1848
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mTimeline:Lch/blinkenlights/android/vanilla/SongTimeline;

    invoke-virtual {v0, p0, p1}, Lch/blinkenlights/android/vanilla/SongTimeline;->addSongs(Landroid/content/Context;Lch/blinkenlights/android/vanilla/QueryTask;)I

    move-result v0

    .line 1852
    iget v1, p1, Lch/blinkenlights/android/vanilla/QueryTask;->mode:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 1868
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid add mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lch/blinkenlights/android/vanilla/QueryTask;->mode:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1865
    :pswitch_0
    sget p1, Lch/blinkenlights/android/vanilla/R$plurals;->enqueued:I

    goto :goto_0

    .line 1856
    :pswitch_1
    sget p1, Lch/blinkenlights/android/vanilla/R$plurals;->playing:I

    if-eqz v0, :cond_0

    .line 1857
    iget v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 1858
    invoke-virtual {p0, v2}, Lch/blinkenlights/android/vanilla/PlaybackService;->setFlag(I)V

    .line 1870
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4}, Lch/blinkenlights/android/vanilla/PlaybackService;->showMirrorLinkSafeToast(Ljava/lang/CharSequence;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private scrobbleBroadcast()V
    .locals 10

    .line 1163
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mCurrentSong:Lch/blinkenlights/android/vanilla/Song;

    if-nez v0, :cond_0

    return-void

    .line 1167
    :cond_0
    iget-boolean v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mStockBroadcast:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mScrobble:Z

    if-nez v1, :cond_1

    return-void

    .line 1170
    :cond_1
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lch/blinkenlights/android/vanilla/MediaUtils;->getAndroidMediaIds(Landroid/content/Context;Lch/blinkenlights/android/vanilla/Song;)[J

    move-result-object v1

    .line 1171
    iget-boolean v2, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mStockBroadcast:Z

    const-wide/16 v3, -0x1

    const-string v5, "playing"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    .line 1172
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.android.music.playstatechanged"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1173
    iget v8, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    and-int/2addr v8, v6

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1174
    iget-object v8, v0, Lch/blinkenlights/android/vanilla/Song;->title:Ljava/lang/String;

    const-string v9, "track"

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1175
    iget-object v8, v0, Lch/blinkenlights/android/vanilla/Song;->album:Ljava/lang/String;

    const-string v9, "album"

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1176
    iget-object v0, v0, Lch/blinkenlights/android/vanilla/Song;->artist:Ljava/lang/String;

    const-string v8, "artist"

    invoke-virtual {v2, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1177
    aget-wide v8, v1, v7

    cmp-long v0, v8, v3

    if-eqz v0, :cond_3

    .line 1178
    aget-wide v8, v1, v7

    const-string v0, "songid"

    invoke-virtual {v2, v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1179
    aget-wide v8, v1, v6

    const-string v0, "albumid"

    invoke-virtual {v2, v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1181
    :cond_3
    invoke-virtual {p0, v2}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    .line 1184
    :cond_4
    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mScrobble:Z

    if-eqz v0, :cond_7

    .line 1185
    new-instance v0, Landroid/content/Intent;

    const-string v2, "net.jjc1138.android.scrobbler.action.MUSIC_STATUS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1186
    iget v2, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    and-int/2addr v2, v6

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1187
    aget-wide v5, v1, v7

    cmp-long v2, v5, v3

    if-eqz v2, :cond_6

    .line 1188
    aget-wide v2, v1, v7

    const-string v1, "id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1189
    :cond_6
    invoke-virtual {p0, v0}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    :cond_7
    return-void
.end method

.method private setCurrentSong(I)Lch/blinkenlights/android/vanilla/Song;
    .locals 5

    .line 1352
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1355
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1356
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1358
    :cond_1
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mTimeline:Lch/blinkenlights/android/vanilla/SongTimeline;

    invoke-virtual {v0, p1}, Lch/blinkenlights/android/vanilla/SongTimeline;->shiftCurrentSong(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object p1

    .line 1359
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mCurrentSong:Lch/blinkenlights/android/vanilla/Song;

    if-nez p1, :cond_4

    .line 1361
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lch/blinkenlights/android/vanilla/MediaUtils;->isSongAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1362
    iget p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    invoke-static {p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->finishAction(I)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    .line 1363
    :goto_0
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mStateLock:[Ljava/lang/Object;

    monitor-enter p1

    .line 1364
    :try_start_0
    iget v2, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    or-int/2addr v0, v2

    and-int/lit8 v0, v0, -0x3

    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->updateState(I)I

    .line 1365
    monitor-exit p1

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1369
    :cond_3
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mStateLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 1370
    :try_start_1
    iget p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    or-int/lit8 p1, p1, 0x2

    and-int/lit8 p1, p1, -0x9

    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->updateState(I)I

    .line 1371
    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 1374
    :cond_4
    iget v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    const/16 v1, 0xa

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 1375
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mStateLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 1376
    :try_start_2
    iget v2, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    and-int/lit8 v2, v2, -0xb

    invoke-direct {p0, v2}, Lch/blinkenlights/android/vanilla/PlaybackService;->updateState(I)I

    .line 1377
    monitor-exit v0

    goto :goto_1

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    .line 1380
    :cond_5
    :goto_1
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 1382
    iput-boolean v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayerInitialized:Z

    .line 1383
    iget-object v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1384
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHandler:Landroid/os/Handler;

    const/4 v3, -0x1

    new-instance v4, Lch/blinkenlights/android/vanilla/TimestampedObject;

    invoke-direct {v4, p1}, Lch/blinkenlights/android/vanilla/TimestampedObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v3, v0, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-object p1
.end method

.method private setupSensor()V
    .locals 3

    .line 866
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mShakeAction:Lch/blinkenlights/android/vanilla/Action;

    sget-object v1, Lch/blinkenlights/android/vanilla/Action;->Nothing:Lch/blinkenlights/android/vanilla/Action;

    if-ne v0, v1, :cond_0

    .line 867
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    .line 868
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    .line 870
    :cond_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    const-string v0, "sensor"

    .line 871
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 872
    :cond_1
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private showMirrorLinkSafeToast(II)V
    .locals 2

    .line 1209
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->getMirrorLinkCallback()Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1210
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private showMirrorLinkSafeToast(Ljava/lang/CharSequence;I)V
    .locals 3

    .line 1215
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->getMirrorLinkCallback()Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1216
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public static shuffleMode(I)I
    .locals 0

    and-int/lit16 p0, p0, 0x380

    shr-int/lit8 p0, p0, 0x7

    return p0
.end method

.method private triggerGaplessUpdate()V
    .locals 5

    .line 803
    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayerInitialized:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 806
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v0, v2, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 810
    iget v2, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    invoke-static {v2}, Lch/blinkenlights/android/vanilla/PlaybackService;->finishAction(I)I

    move-result v2

    .line 811
    invoke-virtual {p0, v1}, Lch/blinkenlights/android/vanilla/PlaybackService;->getSong(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    .line 813
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mTimeline:Lch/blinkenlights/android/vanilla/SongTimeline;

    .line 816
    invoke-virtual {v2}, Lch/blinkenlights/android/vanilla/SongTimeline;->isEndOfQueue()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "VanillaMusic"

    const-string v4, "Must not create new media player object"

    .line 820
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 825
    :try_start_0
    iget-object v0, v3, Lch/blinkenlights/android/vanilla/Song;->path:Ljava/lang/String;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mPreparedMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    invoke-virtual {v1}, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->getDataSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 828
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mPreparedMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->reset()V

    .line 829
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mPreparedMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    iget-object v1, v3, Lch/blinkenlights/android/vanilla/Song;->path:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lch/blinkenlights/android/vanilla/PlaybackService;->prepareMediaPlayer(Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;Ljava/lang/String;)V

    .line 830
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mPreparedMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    invoke-virtual {v0, v1}, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->setNextMediaPlayer(Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;)V

    .line 832
    :cond_3
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->hasNextMediaPlayer()Z

    move-result v0

    if-nez v0, :cond_5

    .line 835
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mPreparedMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    invoke-virtual {v0, v1}, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->setNextMediaPlayer(Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 838
    :catch_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    invoke-virtual {v0, v2}, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->setNextMediaPlayer(Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;)V

    .line 839
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mPreparedMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->reset()V

    goto :goto_1

    .line 842
    :cond_4
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->hasNextMediaPlayer()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 843
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    invoke-virtual {v0, v2}, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->setNextMediaPlayer(Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private triggerReadAhead()V
    .locals 2

    .line 853
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mCurrentSong:Lch/blinkenlights/android/vanilla/Song;

    .line 854
    iget v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 855
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mReadahead:Lch/blinkenlights/android/vanilla/ReadaheadThread;

    invoke-virtual {v1, v0}, Lch/blinkenlights/android/vanilla/ReadaheadThread;->setSong(Lch/blinkenlights/android/vanilla/Song;)V

    goto :goto_0

    .line 857
    :cond_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mReadahead:Lch/blinkenlights/android/vanilla/ReadaheadThread;

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/ReadaheadThread;->pause()V

    :goto_0
    return-void
.end method

.method private updateNotification()V
    .locals 5

    .line 1195
    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mForceNotificationVisible:Z

    const/4 v1, 0x2

    if-nez v0, :cond_0

    iget v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mNotificationVisibility:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    if-nez v0, :cond_1

    iget v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mCurrentSong:Lch/blinkenlights/android/vanilla/Song;

    if-eqz v0, :cond_1

    .line 1197
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mNotificationHelper:Lch/blinkenlights/android/vanilla/NotificationHelper;

    iget v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    iget v4, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mNotificationVisibility:I

    invoke-virtual {p0, v0, v3, v4}, Lch/blinkenlights/android/vanilla/PlaybackService;->createNotification(Lch/blinkenlights/android/vanilla/Song;II)Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lch/blinkenlights/android/vanilla/NotificationHelper;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 1199
    :cond_1
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mNotificationHelper:Lch/blinkenlights/android/vanilla/NotificationHelper;

    invoke-virtual {v0, v1}, Lch/blinkenlights/android/vanilla/NotificationHelper;->cancel(I)V

    :goto_0
    return-void
.end method

.method private updateState(I)I
    .locals 5

    and-int/lit8 v0, p1, 0xe

    if-nez v0, :cond_0

    .line 1018
    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHeadsetOnly:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->isSpeakerOn()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    and-int/lit8 p1, p1, -0x2

    .line 1021
    :cond_1
    iget v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    .line 1022
    iput p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    if-eq p1, v0, :cond_2

    .line 1025
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1026
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    const/4 v2, 0x0

    new-instance v3, Lch/blinkenlights/android/vanilla/TimestampedObject;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lch/blinkenlights/android/vanilla/TimestampedObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return p1
.end method

.method private updateWidgets()V
    .locals 3

    .line 1148
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 1149
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mCurrentSong:Lch/blinkenlights/android/vanilla/Song;

    .line 1150
    iget v2, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    .line 1151
    invoke-static {p0, v0, v1, v2}, Lch/blinkenlights/android/vanilla/OneCellWidget;->updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lch/blinkenlights/android/vanilla/Song;I)V

    .line 1152
    invoke-static {p0, v0, v1, v2}, Lch/blinkenlights/android/vanilla/FourLongWidget;->updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lch/blinkenlights/android/vanilla/Song;I)V

    .line 1153
    invoke-static {p0, v0, v1, v2}, Lch/blinkenlights/android/vanilla/FourSquareWidget;->updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lch/blinkenlights/android/vanilla/Song;I)V

    .line 1154
    invoke-static {p0, v0, v1, v2}, Lch/blinkenlights/android/vanilla/FourWhiteWidget;->updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lch/blinkenlights/android/vanilla/Song;I)V

    .line 1155
    invoke-static {p0, v0, v1, v2}, Lch/blinkenlights/android/vanilla/WidgetD;->updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lch/blinkenlights/android/vanilla/Song;I)V

    .line 1156
    invoke-static {p0, v0, v1, v2}, Lch/blinkenlights/android/vanilla/WidgetE;->updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lch/blinkenlights/android/vanilla/Song;I)V

    return-void
.end method


# virtual methods
.method public activeSongReplaced(ILch/blinkenlights/android/vanilla/Song;)V
    .locals 3

    .line 1751
    sget-object v0, Lch/blinkenlights/android/vanilla/PlaybackService;->sCallbacks:Ljava/util/ArrayList;

    .line 1752
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    add-int/2addr v1, v2

    if-eq v1, v2, :cond_0

    .line 1753
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/blinkenlights/android/vanilla/TimelineCallback;

    invoke-interface {v2, p1, p2}, Lch/blinkenlights/android/vanilla/TimelineCallback;->replaceSong(ILch/blinkenlights/android/vanilla/Song;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 1756
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->setCurrentSong(I)Lch/blinkenlights/android/vanilla/Song;

    :cond_1
    return-void
.end method

.method public addSongs(Lch/blinkenlights/android/vanilla/QueryTask;)V
    .locals 2

    .line 1880
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public clearQueue()V
    .locals 1

    .line 1926
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mTimeline:Lch/blinkenlights/android/vanilla/SongTimeline;

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/SongTimeline;->clearQueue()V

    return-void
.end method

.method public createNotification(Lch/blinkenlights/android/vanilla/Song;II)Landroid/app/Notification;
    .locals 7

    const/4 v0, 0x1

    and-int/2addr p2, v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 2147
    :goto_0
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget v4, Lch/blinkenlights/android/vanilla/R$layout;->notification:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2148
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget v5, Lch/blinkenlights/android/vanilla/R$layout;->notification_expanded:I

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2150
    invoke-virtual {p1, p0}, Lch/blinkenlights/android/vanilla/Song;->getCover(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_1

    .line 2152
    sget v4, Lch/blinkenlights/android/vanilla/R$id;->cover:I

    sget v5, Lch/blinkenlights/android/vanilla/R$drawable;->fallback_cover:I

    invoke-virtual {v2, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2153
    sget v4, Lch/blinkenlights/android/vanilla/R$id;->cover:I

    sget v5, Lch/blinkenlights/android/vanilla/R$drawable;->fallback_cover_large:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 2155
    :cond_1
    sget v5, Lch/blinkenlights/android/vanilla/R$id;->cover:I

    invoke-virtual {v2, v5, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2156
    sget v5, Lch/blinkenlights/android/vanilla/R$id;->cover:I

    invoke-virtual {v3, v5, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2159
    :goto_1
    invoke-static {p2}, Lch/blinkenlights/android/vanilla/ThemeHelper;->getPlayButtonResource(Z)I

    move-result p2

    .line 2161
    sget v4, Lch/blinkenlights/android/vanilla/R$id;->play_pause:I

    invoke-virtual {v2, v4, p2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2162
    sget v4, Lch/blinkenlights/android/vanilla/R$id;->play_pause:I

    invoke-virtual {v3, v4, p2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2164
    new-instance p2, Landroid/content/ComponentName;

    const-class v4, Lch/blinkenlights/android/vanilla/PlaybackService;

    invoke-direct {p2, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2166
    new-instance v4, Landroid/content/Intent;

    const-string v5, "ch.blinkenlights.android.vanilla.action.PREVIOUS_SONG"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2167
    invoke-virtual {v4, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2168
    sget v5, Lch/blinkenlights/android/vanilla/R$id;->previous:I

    invoke-static {p0, v1, v4, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2169
    sget v5, Lch/blinkenlights/android/vanilla/R$id;->previous:I

    invoke-static {p0, v1, v4, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2171
    new-instance v4, Landroid/content/Intent;

    const-string v5, "ch.blinkenlights.android.vanilla.action.TOGGLE_PLAYBACK_NOTIFICATION"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2172
    invoke-virtual {v4, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2173
    sget v5, Lch/blinkenlights/android/vanilla/R$id;->play_pause:I

    invoke-static {p0, v1, v4, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2174
    sget v5, Lch/blinkenlights/android/vanilla/R$id;->play_pause:I

    invoke-static {p0, v1, v4, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2176
    new-instance v4, Landroid/content/Intent;

    const-string v5, "ch.blinkenlights.android.vanilla.action.NEXT_SONG"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2177
    invoke-virtual {v4, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2178
    sget v5, Lch/blinkenlights/android/vanilla/R$id;->next:I

    invoke-static {p0, v1, v4, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2179
    sget v5, Lch/blinkenlights/android/vanilla/R$id;->next:I

    invoke-static {p0, v1, v4, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    if-nez p3, :cond_2

    const/4 p3, 0x0

    goto :goto_2

    :cond_2
    const/4 p3, 0x4

    .line 2182
    :goto_2
    new-instance v4, Landroid/content/Intent;

    const-string v5, "ch.blinkenlights.android.vanilla.CLOSE_NOTIFICATION"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2183
    invoke-virtual {v4, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2184
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->close:I

    invoke-static {p0, v1, v4, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, p2, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2185
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->close:I

    invoke-virtual {v2, p2, p3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2186
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->close:I

    invoke-static {p0, v1, v4, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2187
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->close:I

    invoke-virtual {v3, p2, p3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2189
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->title:I

    iget-object p3, p1, Lch/blinkenlights/android/vanilla/Song;->title:Ljava/lang/String;

    invoke-virtual {v2, p2, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2190
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->artist:I

    iget-object p3, p1, Lch/blinkenlights/android/vanilla/Song;->artist:Ljava/lang/String;

    invoke-virtual {v2, p2, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2191
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->title:I

    iget-object p3, p1, Lch/blinkenlights/android/vanilla/Song;->title:Ljava/lang/String;

    invoke-virtual {v3, p2, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2192
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->album:I

    iget-object p3, p1, Lch/blinkenlights/android/vanilla/Song;->album:Ljava/lang/String;

    invoke-virtual {v3, p2, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2193
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->artist:I

    iget-object p3, p1, Lch/blinkenlights/android/vanilla/Song;->artist:Ljava/lang/String;

    invoke-virtual {v3, p2, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2195
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mNotificationHelper:Lch/blinkenlights/android/vanilla/NotificationHelper;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2, p3}, Lch/blinkenlights/android/vanilla/NotificationHelper;->getNewNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object p2

    .line 2196
    iput-object v2, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2197
    sget p3, Lch/blinkenlights/android/vanilla/R$drawable;->status_icon:I

    iput p3, p2, Landroid/app/Notification;->icon:I

    .line 2198
    iget p3, p2, Landroid/app/Notification;->flags:I

    const/4 v2, 0x2

    or-int/2addr p3, v2

    iput p3, p2, Landroid/app/Notification;->flags:I

    .line 2199
    iget-object p3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mNotificationAction:Landroid/app/PendingIntent;

    iput-object p3, p2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2200
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt p3, v4, :cond_3

    .line 2202
    iput-object v3, p2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 2205
    iput v0, p2, Landroid/app/Notification;->priority:I

    .line 2207
    :cond_3
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt p3, v3, :cond_4

    .line 2208
    iput v0, p2, Landroid/app/Notification;->visibility:I

    .line 2210
    :cond_4
    iget-boolean p3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mNotificationNag:Z

    if-eqz p3, :cond_6

    .line 2211
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p3, v3, :cond_5

    .line 2212
    iput v2, p2, Landroid/app/Notification;->priority:I

    .line 2213
    new-array p1, v1, [J

    iput-object p1, p2, Landroid/app/Notification;->vibrate:[J

    goto :goto_3

    .line 2215
    :cond_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lch/blinkenlights/android/vanilla/Song;->title:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lch/blinkenlights/android/vanilla/Song;->artist:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_6
    :goto_3
    return-object p2
.end method

.method public createNotificationAction(Landroid/content/SharedPreferences;)Landroid/app/PendingIntent;
    .locals 3

    const-string v0, "notification_action"

    const-string v1, "0"

    .line 2110
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "android.intent.action.MAIN"

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const-string p1, "VanillaMusic"

    const-string v2, "Unknown value for notification_action. Defaulting to 0."

    .line 2121
    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2112
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lch/blinkenlights/android/vanilla/PlaybackService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "ch.blinkenlights.android.vanilla.action.NEXT_SONG_AUTOPLAY"

    .line 2113
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2114
    invoke-static {p0, v1, p1, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    .line 2129
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v2, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2130
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2131
    invoke-static {p0, v1, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    .line 2117
    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lch/blinkenlights/android/vanilla/MiniPlaybackActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2118
    invoke-static {p0, v1, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    .line 2124
    :cond_3
    :goto_0
    new-instance p1, Landroid/content/Intent;

    const-class v2, Lch/blinkenlights/android/vanilla/LibraryActivity;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2125
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2126
    invoke-static {p0, v1, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public cycleFinishAction()I
    .locals 3

    .line 1306
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mStateLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 1307
    :try_start_0
    iget v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    invoke-static {v1}, Lch/blinkenlights/android/vanilla/PlaybackService;->finishAction(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    .line 1310
    :cond_0
    invoke-virtual {p0, v1}, Lch/blinkenlights/android/vanilla/PlaybackService;->setFinishAction(I)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1311
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public cycleShuffle()I
    .locals 3

    .line 1334
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mStateLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 1335
    :try_start_0
    iget v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    invoke-static {v1}, Lch/blinkenlights/android/vanilla/PlaybackService;->shuffleMode(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    .line 1338
    :cond_0
    invoke-virtual {p0, v1}, Lch/blinkenlights/android/vanilla/PlaybackService;->setShuffleMode(I)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1339
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deleteMedia(IJ)I
    .locals 3

    const-string v0, "_id"

    const-string v1, "path"

    .line 1770
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1771
    invoke-static {p1, p2, p3, v0, v1}, Lch/blinkenlights/android/vanilla/MediaUtils;->buildQuery(IJ[Ljava/lang/String;Ljava/lang/String;)Lch/blinkenlights/android/vanilla/QueryTask;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lch/blinkenlights/android/vanilla/QueryTask;->runQuery(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const/4 p3, 0x0

    .line 1774
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1775
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1776
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1777
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->removeSong(Landroid/content/Context;J)I

    .line 1778
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mTimeline:Lch/blinkenlights/android/vanilla/SongTimeline;

    invoke-virtual {v2, v0, v1}, Lch/blinkenlights/android/vanilla/SongTimeline;->removeSong(J)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 1782
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    move p2, p3

    :cond_2
    return p2
.end method

.method public emptyQueue()V
    .locals 1

    .line 1934
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->pause()I

    const/16 v0, 0x8

    .line 1935
    invoke-virtual {p0, v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->setFlag(I)V

    .line 1936
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mTimeline:Lch/blinkenlights/android/vanilla/SongTimeline;

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/SongTimeline;->emptyQueue()V

    return-void
.end method

.method public enqueueFromSong(Lch/blinkenlights/android/vanilla/Song;I)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 1909
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p1, Lch/blinkenlights/android/vanilla/Song;->id:J

    invoke-static {v1, v2, v3}, Lch/blinkenlights/android/vanilla/MediaUtils;->queryGenreForSong(Landroid/content/Context;J)J

    move-result-wide v1

    goto :goto_0

    .line 1912
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported media type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1906
    :cond_2
    iget-wide v1, p1, Lch/blinkenlights/android/vanilla/Song;->albumId:J

    goto :goto_0

    .line 1903
    :cond_3
    iget-wide v1, p1, Lch/blinkenlights/android/vanilla/Song;->artistId:J

    .line 1915
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id!="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lch/blinkenlights/android/vanilla/Song;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1916
    sget-object v3, Lch/blinkenlights/android/vanilla/Song;->FILLED_PROJECTION:[Ljava/lang/String;

    invoke-static {p2, v1, v2, v3, p1}, Lch/blinkenlights/android/vanilla/MediaUtils;->buildQuery(IJ[Ljava/lang/String;Ljava/lang/String;)Lch/blinkenlights/android/vanilla/QueryTask;

    move-result-object p1

    .line 1917
    iput v0, p1, Lch/blinkenlights/android/vanilla/QueryTask;->mode:I

    .line 1918
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->addSongs(Lch/blinkenlights/android/vanilla/QueryTask;)V

    return-void
.end method

.method public getAudioSession()I
    .locals 1

    .line 1713
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 1702
    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayerInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1704
    :cond_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 1944
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 1692
    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayerInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1694
    :cond_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getQueuePositionForSongId(J)I
    .locals 1

    .line 2431
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mTimeline:Lch/blinkenlights/android/vanilla/SongTimeline;

    invoke-virtual {v0, p1, p2}, Lch/blinkenlights/android/vanilla/SongTimeline;->getQueuePositionForSongId(J)I

    move-result p1

    return p1
.end method

.method public getReplayGainValues(Ljava/lang/String;)Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;
    .locals 1

    .line 776
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mBastpUtil:Lch/blinkenlights/android/vanilla/BastpUtil;

    invoke-virtual {v0, p1}, Lch/blinkenlights/android/vanilla/BastpUtil;->getReplayGainValues(Ljava/lang/String;)Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;

    move-result-object p1

    return-object p1
.end method

.method public getSong(I)Lch/blinkenlights/android/vanilla/Song;
    .locals 1

    .line 1491
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mTimeline:Lch/blinkenlights/android/vanilla/SongTimeline;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    .line 1494
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mCurrentSong:Lch/blinkenlights/android/vanilla/Song;

    return-object p1

    .line 1495
    :cond_1
    invoke-virtual {v0, p1}, Lch/blinkenlights/android/vanilla/SongTimeline;->getSong(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object p1

    return-object p1
.end method

.method public getSongByQueuePosition(I)Lch/blinkenlights/android/vanilla/Song;
    .locals 1

    .line 2422
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mTimeline:Lch/blinkenlights/android/vanilla/SongTimeline;

    invoke-virtual {v0, p1}, Lch/blinkenlights/android/vanilla/SongTimeline;->getSongByQueuePosition(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object p1

    return-object p1
.end method

.method public getState()I
    .locals 2

    .line 1682
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mStateLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 1683
    :try_start_0
    iget v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1684
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTimelineLength()I
    .locals 1

    .line 2415
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mTimeline:Lch/blinkenlights/android/vanilla/SongTimeline;

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/SongTimeline;->getLength()I

    move-result v0

    return v0
.end method

.method public getTimelinePosition()I
    .locals 1

    .line 2407
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mTimeline:Lch/blinkenlights/android/vanilla/SongTimeline;

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/SongTimeline;->getPosition()I

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    .line 1582
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    const/4 v2, 0x4

    const/4 v3, 0x7

    const/4 v4, 0x0

    if-eq v0, v2, :cond_8

    const/16 v5, 0xa

    if-eq v0, v5, :cond_7

    if-eq v0, v3, :cond_5

    const/16 v3, 0x8

    if-eq v0, v3, :cond_3

    packed-switch v0, :pswitch_data_0

    return v4

    .line 1667
    :pswitch_0
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mRemoteControlClient:Lch/blinkenlights/android/vanilla/RemoteControl$Client;

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mCurrentSong:Lch/blinkenlights/android/vanilla/Song;

    iget v2, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    iget-boolean v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mForceNotificationVisible:Z

    invoke-interface {p1, v0, v2, v3}, Lch/blinkenlights/android/vanilla/RemoteControl$Client;->updateRemote(Lch/blinkenlights/android/vanilla/Song;IZ)V

    goto/16 :goto_2

    .line 1657
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    .line 1658
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1659
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_0

    .line 1661
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 1663
    :cond_0
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 1643
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lch/blinkenlights/android/vanilla/Song;

    .line 1644
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1645
    :goto_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, p1}, Lch/blinkenlights/android/vanilla/PlayCountsHelper;->countSong(Landroid/content/Context;Lch/blinkenlights/android/vanilla/Song;Z)V

    .line 1647
    iget p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mAutoPlPlaycounts:I

    if-lez p1, :cond_b

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v5, 0x3fe999999999999aL    # 0.8

    cmpl-double p1, v2, v5

    if-lez p1, :cond_b

    .line 1648
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 1650
    sget v0, Lch/blinkenlights/android/vanilla/R$string;->autoplaylist_playcounts_name:I

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mAutoPlPlaycounts:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1651
    invoke-static {p1, v0}, Lch/blinkenlights/android/vanilla/Playlist;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    .line 1652
    iget v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mAutoPlPlaycounts:I

    invoke-static {p1, v0}, Lch/blinkenlights/android/vanilla/PlayCountsHelper;->getTopSongs(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1653
    invoke-static {p1, v2, v3, v0}, Lch/blinkenlights/android/vanilla/Playlist;->addToPlaylist(Landroid/content/Context;JLjava/util/ArrayList;)I

    goto/16 :goto_2

    .line 1640
    :pswitch_3
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->triggerGaplessUpdate()V

    goto/16 :goto_2

    .line 1631
    :pswitch_4
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->getTimelinePosition()I

    move-result v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, p1, :cond_2

    .line 1632
    invoke-direct {p0, v1}, Lch/blinkenlights/android/vanilla/PlaybackService;->setCurrentSong(I)Lch/blinkenlights/android/vanilla/Song;

    :cond_2
    const/4 p1, 0x0

    .line 1635
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mErrorMessage:Ljava/lang/String;

    .line 1636
    invoke-virtual {p0, v2}, Lch/blinkenlights/android/vanilla/PlaybackService;->unsetFlag(I)V

    .line 1637
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3, v4, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 1616
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->processNewState(II)V

    goto/16 :goto_2

    .line 1595
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lch/blinkenlights/android/vanilla/Song;

    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->processSong(Lch/blinkenlights/android/vanilla/Song;)V

    goto :goto_2

    .line 1592
    :pswitch_7
    invoke-virtual {p0, v4}, Lch/blinkenlights/android/vanilla/PlaybackService;->saveState(I)V

    goto :goto_2

    .line 1584
    :cond_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_4

    .line 1585
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->playPause()I

    goto :goto_2

    .line 1587
    :cond_4
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->setCurrentSong(I)Lch/blinkenlights/android/vanilla/Song;

    goto :goto_2

    .line 1606
    :cond_5
    iget p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mFadeOut:F

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_6

    .line 1607
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mIdleStart:J

    .line 1608
    invoke-virtual {p0, v1}, Lch/blinkenlights/android/vanilla/PlaybackService;->unsetFlag(I)V

    goto :goto_1

    :cond_6
    const v0, 0x3c23d70a    # 0.01f

    sub-float/2addr p1, v0

    .line 1610
    iput p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mFadeOut:F

    .line 1611
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHandler:Landroid/os/Handler;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1613
    :goto_1
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->refreshReplayGainValues()V

    goto :goto_2

    .line 1619
    :cond_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lch/blinkenlights/android/vanilla/TimestampedObject;

    .line 1620
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, v0, Lch/blinkenlights/android/vanilla/TimestampedObject;->object:Ljava/lang/Object;

    check-cast v2, Lch/blinkenlights/android/vanilla/Song;

    iget-wide v3, v0, Lch/blinkenlights/android/vanilla/TimestampedObject;->uptime:J

    invoke-direct {p0, p1, v2, v3, v4}, Lch/blinkenlights/android/vanilla/PlaybackService;->broadcastChange(ILch/blinkenlights/android/vanilla/Song;J)V

    goto :goto_2

    .line 1601
    :cond_8
    iget p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_b

    .line 1602
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHandler:Landroid/os/Handler;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 1598
    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lch/blinkenlights/android/vanilla/QueryTask;

    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->runQuery(Lch/blinkenlights/android/vanilla/QueryTask;)V

    goto :goto_2

    .line 1623
    :cond_a
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->enterSleepState()V

    :cond_b
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isPlaying()Z
    .locals 2

    .line 2399
    iget v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public jumpToQueuePosition(I)V
    .locals 1

    .line 2438
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mTimeline:Lch/blinkenlights/android/vanilla/SongTimeline;

    invoke-virtual {v0, p1}, Lch/blinkenlights/android/vanilla/SongTimeline;->setCurrentQueuePosition(I)Lch/blinkenlights/android/vanilla/Song;

    .line 2439
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->play()I

    return-void
.end method

.method public loadState()I
    .locals 9

    const-string v0, "Failed to load state"

    const-string v1, "VanillaMusic"

    const/4 v2, 0x0

    .line 2039
    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    const-string v4, "state"

    invoke-virtual {p0, v4}, Landroid/app/Service;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2041
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    const-wide v6, 0x1533574dc74b6ecL

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    .line 2042
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    iput v4, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mPendingSeek:I

    .line 2043
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mPendingSeekSong:J

    .line 2044
    iget-object v4, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mTimeline:Lch/blinkenlights/android/vanilla/SongTimeline;

    invoke-virtual {v4, v3}, Lch/blinkenlights/android/vanilla/SongTimeline;->readState(Ljava/io/DataInputStream;)V

    .line 2045
    iget-object v4, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mTimeline:Lch/blinkenlights/android/vanilla/SongTimeline;

    invoke-virtual {v4}, Lch/blinkenlights/android/vanilla/SongTimeline;->getShuffleMode()I

    move-result v4

    shl-int/lit8 v4, v4, 0x7

    or-int/2addr v2, v4

    .line 2046
    iget-object v4, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mTimeline:Lch/blinkenlights/android/vanilla/SongTimeline;

    invoke-virtual {v4}, Lch/blinkenlights/android/vanilla/SongTimeline;->getFinishAction()I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v2, v4

    .line 2049
    :cond_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 2053
    invoke-static {v1, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v3

    .line 2051
    invoke-static {v1, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v2
.end method

.method public moveSongPosition(II)V
    .locals 1

    .line 2449
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mTimeline:Lch/blinkenlights/android/vanilla/SongTimeline;

    invoke-virtual {v0, p1, p2}, Lch/blinkenlights/android/vanilla/SongTimeline;->moveSongPosition(II)V

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 5

    .line 2224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio focus change: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VanillaMusic"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mIgnoreAudioFocusLoss:Z

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, -0x3

    if-eqz v0, :cond_1

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x3

    :cond_1
    :goto_0
    const/16 v0, 0x400

    const/4 v4, 0x1

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_4

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    if-eq p1, v4, :cond_2

    goto :goto_2

    .line 2257
    :cond_2
    iget-boolean p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mTransientAudioLoss:Z

    if-eqz p1, :cond_7

    .line 2258
    iput-boolean v2, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mTransientAudioLoss:Z

    .line 2260
    invoke-virtual {p0, v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->unsetFlag(I)V

    .line 2261
    invoke-virtual {p0, v4}, Lch/blinkenlights/android/vanilla/PlaybackService;->setFlag(I)V

    goto :goto_2

    .line 2252
    :cond_3
    iput-boolean v2, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mTransientAudioLoss:Z

    .line 2253
    iput-boolean v4, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mForceNotificationVisible:Z

    .line 2254
    invoke-virtual {p0, v4}, Lch/blinkenlights/android/vanilla/PlaybackService;->unsetFlag(I)V

    goto :goto_2

    .line 2238
    :cond_4
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mStateLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 2239
    :try_start_0
    iget v2, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_6

    .line 2240
    iput-boolean v4, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mTransientAudioLoss:Z

    if-ne p1, v3, :cond_5

    .line 2243
    invoke-virtual {p0, v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->setFlag(I)V

    goto :goto_1

    .line 2245
    :cond_5
    iput-boolean v4, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mForceNotificationVisible:Z

    .line 2246
    invoke-virtual {p0, v4}, Lch/blinkenlights/android/vanilla/PlaybackService;->unsetFlag(I)V

    .line 2249
    :cond_6
    :goto_1
    monitor-exit v1

    :cond_7
    :goto_2
    return-void

    :catchall_0
    move-exception p1

    .line 2250
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 5

    .line 1456
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mCurrentSong:Lch/blinkenlights/android/vanilla/Song;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x11

    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v3, 0x320

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1458
    iget p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    invoke-static {p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->finishAction(I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1459
    invoke-direct {p0, v1}, Lch/blinkenlights/android/vanilla/PlaybackService;->setCurrentSong(I)Lch/blinkenlights/android/vanilla/Song;

    goto :goto_0

    .line 1460
    :cond_0
    iget p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    invoke-static {p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->finishAction(I)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1461
    invoke-virtual {p0, v2}, Lch/blinkenlights/android/vanilla/PlaybackService;->unsetFlag(I)V

    .line 1462
    invoke-direct {p0, v2}, Lch/blinkenlights/android/vanilla/PlaybackService;->setCurrentSong(I)Lch/blinkenlights/android/vanilla/Song;

    goto :goto_0

    .line 1464
    :cond_1
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mTimeline:Lch/blinkenlights/android/vanilla/SongTimeline;

    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/SongTimeline;->isEndOfQueue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1465
    invoke-virtual {p0, v2}, Lch/blinkenlights/android/vanilla/PlaybackService;->unsetFlag(I)V

    .line 1467
    :cond_2
    invoke-direct {p0, v2}, Lch/blinkenlights/android/vanilla/PlaybackService;->setCurrentSong(I)Lch/blinkenlights/android/vanilla/Song;

    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 8

    .line 445
    new-instance v0, Landroid/os/HandlerThread;

    const/4 v1, 0x0

    const-string v2, "PlaybackService"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 446
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 448
    new-instance v2, Lch/blinkenlights/android/vanilla/SongTimeline;

    invoke-direct {v2, p0}, Lch/blinkenlights/android/vanilla/SongTimeline;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mTimeline:Lch/blinkenlights/android/vanilla/SongTimeline;

    .line 449
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mTimeline:Lch/blinkenlights/android/vanilla/SongTimeline;

    invoke-virtual {v2, p0}, Lch/blinkenlights/android/vanilla/SongTimeline;->setCallback(Lch/blinkenlights/android/vanilla/SongTimeline$Callback;)V

    .line 450
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->loadState()I

    move-result v2

    .line 452
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->getNewMediaPlayer()Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    move-result-object v3

    iput-object v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    .line 453
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->getNewMediaPlayer()Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    move-result-object v3

    iput-object v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mPreparedMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    .line 455
    iget-object v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mPreparedMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    iget-object v4, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    .line 457
    new-instance v3, Lch/blinkenlights/android/vanilla/BastpUtil;

    invoke-direct {v3}, Lch/blinkenlights/android/vanilla/BastpUtil;-><init>()V

    iput-object v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mBastpUtil:Lch/blinkenlights/android/vanilla/BastpUtil;

    .line 458
    new-instance v3, Lch/blinkenlights/android/vanilla/ReadaheadThread;

    invoke-direct {v3}, Lch/blinkenlights/android/vanilla/ReadaheadThread;-><init>()V

    iput-object v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mReadahead:Lch/blinkenlights/android/vanilla/ReadaheadThread;

    .line 460
    new-instance v3, Lch/blinkenlights/android/vanilla/NotificationHelper;

    sget v4, Lch/blinkenlights/android/vanilla/R$string;->app_name:I

    invoke-virtual {p0, v4}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Playback"

    invoke-direct {v3, p0, v5, v4}, Lch/blinkenlights/android/vanilla/NotificationHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mNotificationHelper:Lch/blinkenlights/android/vanilla/NotificationHelper;

    const-string v3, "audio"

    .line 461
    invoke-virtual {p0, v3}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mAudioManager:Landroid/media/AudioManager;

    .line 463
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->getSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 464
    invoke-interface {v3, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const-string v4, "notification_visibility"

    const-string v5, "0"

    .line 465
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mNotificationVisibility:I

    const-string v4, "notification_nag"

    .line 466
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mNotificationNag:Z

    const-string v4, "scrobble"

    .line 467
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mScrobble:Z

    const-string v4, "use_idle_timeout"

    .line 468
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xe10

    const-string v5, "idle_timeout"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput v4, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mIdleTimeout:I

    const/4 v4, 0x1

    const-string v5, "coverloader_android"

    .line 470
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    sget v5, Lch/blinkenlights/android/vanilla/CoverCache;->mCoverLoadMode:I

    or-int/2addr v5, v4

    goto :goto_1

    :cond_1
    sget v5, Lch/blinkenlights/android/vanilla/CoverCache;->mCoverLoadMode:I

    and-int/lit8 v5, v5, -0x2

    :goto_1
    sput v5, Lch/blinkenlights/android/vanilla/CoverCache;->mCoverLoadMode:I

    const-string v5, "coverloader_vanilla"

    .line 471
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    sget v5, Lch/blinkenlights/android/vanilla/CoverCache;->mCoverLoadMode:I

    or-int/lit8 v5, v5, 0x2

    goto :goto_2

    :cond_2
    sget v5, Lch/blinkenlights/android/vanilla/CoverCache;->mCoverLoadMode:I

    and-int/lit8 v5, v5, -0x3

    :goto_2
    sput v5, Lch/blinkenlights/android/vanilla/CoverCache;->mCoverLoadMode:I

    const-string v5, "coverloader_shadow"

    .line 472
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    sget v5, Lch/blinkenlights/android/vanilla/CoverCache;->mCoverLoadMode:I

    or-int/lit8 v5, v5, 0x4

    goto :goto_3

    :cond_3
    sget v5, Lch/blinkenlights/android/vanilla/CoverCache;->mCoverLoadMode:I

    and-int/lit8 v5, v5, -0x5

    :goto_3
    sput v5, Lch/blinkenlights/android/vanilla/CoverCache;->mCoverLoadMode:I

    const-string v5, "coverloader_inline"

    .line 473
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    sget v5, Lch/blinkenlights/android/vanilla/CoverCache;->mCoverLoadMode:I

    or-int/lit8 v5, v5, 0x8

    goto :goto_4

    :cond_4
    sget v5, Lch/blinkenlights/android/vanilla/CoverCache;->mCoverLoadMode:I

    and-int/lit8 v5, v5, -0x9

    :goto_4
    sput v5, Lch/blinkenlights/android/vanilla/CoverCache;->mCoverLoadMode:I

    const-string v5, "headset_only"

    .line 475
    invoke-interface {v3, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHeadsetOnly:Z

    const-string v5, "stock_broadcast"

    .line 476
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mStockBroadcast:Z

    .line 477
    invoke-virtual {p0, v3}, Lch/blinkenlights/android/vanilla/PlaybackService;->createNotificationAction(Landroid/content/SharedPreferences;)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mNotificationAction:Landroid/app/PendingIntent;

    .line 478
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->getSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "headset_pause"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHeadsetPause:Z

    const-string v5, "enable_shake"

    .line 479
    invoke-interface {v3, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lch/blinkenlights/android/vanilla/PrefDefaults;->SHAKE_ACTION:Lch/blinkenlights/android/vanilla/Action;

    const-string v6, "shake_action"

    invoke-static {v3, v6, v5}, Lch/blinkenlights/android/vanilla/Action;->getAction(Landroid/content/SharedPreferences;Ljava/lang/String;Lch/blinkenlights/android/vanilla/Action;)Lch/blinkenlights/android/vanilla/Action;

    move-result-object v5

    goto :goto_5

    :cond_5
    sget-object v5, Lch/blinkenlights/android/vanilla/Action;->Nothing:Lch/blinkenlights/android/vanilla/Action;

    :goto_5
    iput-object v5, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mShakeAction:Lch/blinkenlights/android/vanilla/Action;

    const/16 v5, 0x50

    const-string v6, "shake_threshold"

    .line 480
    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x41200000    # 10.0f

    div-float/2addr v5, v6

    float-to-double v5, v5

    iput-wide v5, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mShakeThreshold:D

    const-string v5, "enable_track_replaygain"

    .line 482
    invoke-interface {v3, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mReplayGainTrackEnabled:Z

    const-string v5, "enable_album_replaygain"

    .line 483
    invoke-interface {v3, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mReplayGainAlbumEnabled:Z

    const/16 v5, 0x4b

    const-string v6, "replaygain_bump"

    .line 484
    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mReplayGainBump:I

    const/16 v5, 0x96

    const-string v6, "replaygain_untagged_debump"

    .line 485
    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mReplayGainUntaggedDeBump:I

    const/16 v5, 0x32

    const-string v6, "volume_during_ducking"

    .line 487
    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mVolumeDuringDucking:I

    const-string v5, "ignore_audiofocus_loss"

    .line 488
    invoke-interface {v3, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mIgnoreAudioFocusLoss:Z

    .line 489
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->refreshDuckingValues()V

    const-string v5, "enable_readahead"

    .line 491
    invoke-interface {v3, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mReadaheadEnabled:Z

    const-string v5, "playcounts_autoplaylist"

    .line 493
    invoke-interface {v3, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mAutoPlPlaycounts:I

    const-string v5, "power"

    .line 495
    invoke-virtual {p0, v5}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    const-string v6, "VanillaMusicLock"

    .line 496
    invoke-virtual {v5, v4, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 498
    new-instance v4, Lch/blinkenlights/android/vanilla/PlaybackService$Receiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lch/blinkenlights/android/vanilla/PlaybackService$Receiver;-><init>(Lch/blinkenlights/android/vanilla/PlaybackService;Lch/blinkenlights/android/vanilla/PlaybackService$1;)V

    iput-object v4, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mReceiver:Lch/blinkenlights/android/vanilla/PlaybackService$Receiver;

    .line 499
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.media.AUDIO_BECOMING_NOISY"

    .line 500
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.SCREEN_ON"

    .line 501
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 502
    iget-object v5, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mReceiver:Lch/blinkenlights/android/vanilla/PlaybackService$Receiver;

    invoke-virtual {p0, v5, v4}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 504
    iget-object v4, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mObserver:Lch/blinkenlights/android/medialibrary/LibraryObserver;

    invoke-static {v4}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->registerLibraryObserver(Lch/blinkenlights/android/medialibrary/LibraryObserver;)V

    .line 506
    new-instance v4, Lch/blinkenlights/android/vanilla/RemoteControl;

    invoke-direct {v4}, Lch/blinkenlights/android/vanilla/RemoteControl;-><init>()V

    invoke-virtual {v4, p0}, Lch/blinkenlights/android/vanilla/RemoteControl;->getClient(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/RemoteControl$Client;

    move-result-object v4

    iput-object v4, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mRemoteControlClient:Lch/blinkenlights/android/vanilla/RemoteControl$Client;

    .line 507
    iget-object v4, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mRemoteControlClient:Lch/blinkenlights/android/vanilla/RemoteControl$Client;

    invoke-interface {v4}, Lch/blinkenlights/android/vanilla/RemoteControl$Client;->initializeRemote()V

    const-string v4, "playlist_sync_mode"

    const-string v5, "0"

    .line 509
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "playlist_export_relative_paths"

    .line 510
    invoke-interface {v3, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "playlist_sync_folder"

    const-string v7, "/sdcard/Playlists"

    .line 511
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 512
    new-instance v6, Lch/blinkenlights/android/vanilla/PlaylistObserver;

    invoke-direct {v6, p0, v3, v4, v5}, Lch/blinkenlights/android/vanilla/PlaylistObserver;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    iput-object v6, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mPlaylistObserver:Lch/blinkenlights/android/vanilla/PlaylistObserver;

    .line 514
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mLooper:Landroid/os/Looper;

    .line 515
    new-instance v0, Landroid/os/Handler;

    iget-object v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHandler:Landroid/os/Handler;

    .line 517
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->initWidgets()V

    .line 519
    invoke-direct {p0, v2}, Lch/blinkenlights/android/vanilla/PlaybackService;->updateState(I)I

    .line 520
    invoke-direct {p0, v1}, Lch/blinkenlights/android/vanilla/PlaybackService;->setCurrentSong(I)Lch/blinkenlights/android/vanilla/Song;

    .line 522
    sput-object p0, Lch/blinkenlights/android/vanilla/PlaybackService;->sInstance:Lch/blinkenlights/android/vanilla/PlaybackService;

    .line 523
    sget-object v0, Lch/blinkenlights/android/vanilla/PlaybackService;->sWait:[Ljava/lang/Object;

    monitor-enter v0

    .line 524
    :try_start_0
    sget-object v1, Lch/blinkenlights/android/vanilla/PlaybackService;->sWait:[Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 525
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x0

    .line 527
    iput-wide v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mAccelFiltered:D

    const-wide v0, 0x40239d0140000000L    # 9.806650161743164

    .line 528
    iput-wide v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mAccelLast:D

    .line 529
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->setupSensor()V

    .line 531
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_6

    .line 532
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/ScheduledLibraryUpdate;->scheduleUpdate(Landroid/content/Context;)Z

    :cond_6
    return-void

    :catchall_0
    move-exception v1

    .line 525
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    .line 624
    sput-object v0, Lch/blinkenlights/android/vanilla/PlaybackService;->sInstance:Lch/blinkenlights/android/vanilla/PlaybackService;

    .line 626
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    const/4 v1, 0x1

    .line 629
    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 632
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->enterSleepState()V

    .line 635
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->getSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 638
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mObserver:Lch/blinkenlights/android/medialibrary/LibraryObserver;

    invoke-static {v1}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->unregisterLibraryObserver(Lch/blinkenlights/android/medialibrary/LibraryObserver;)V

    .line 639
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mPlaylistObserver:Lch/blinkenlights/android/vanilla/PlaylistObserver;

    invoke-virtual {v1}, Lch/blinkenlights/android/vanilla/PlaylistObserver;->unregister()V

    .line 641
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    if-eqz v1, :cond_0

    .line 642
    invoke-virtual {v1}, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->release()V

    .line 643
    iput-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    .line 646
    :cond_0
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mPreparedMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    if-eqz v1, :cond_1

    .line 647
    invoke-virtual {v1}, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->release()V

    .line 648
    iput-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mPreparedMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    .line 652
    :cond_1
    :try_start_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mReceiver:Lch/blinkenlights/android/vanilla/PlaybackService$Receiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    :catch_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    .line 658
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 660
    :cond_2
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mRemoteControlClient:Lch/blinkenlights/android/vanilla/RemoteControl$Client;

    if-eqz v0, :cond_3

    .line 661
    invoke-interface {v0}, Lch/blinkenlights/android/vanilla/RemoteControl$Client;->unregisterRemote()V

    .line 663
    :cond_3
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 1474
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MediaPlayer error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VanillaMusic"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->getMirrorLinkCallback()Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "MediaPlayer Error"

    .line 1478
    invoke-virtual {p1, p2}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->onError(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onMediaChange()V
    .locals 3

    .line 1516
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/MediaUtils;->isSongAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 1517
    iget v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1518
    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->setCurrentSong(I)Lch/blinkenlights/android/vanilla/Song;

    goto :goto_0

    .line 1520
    :cond_0
    invoke-virtual {p0, v1}, Lch/blinkenlights/android/vanilla/PlaybackService;->setFlag(I)V

    .line 1523
    :cond_1
    :goto_0
    sget-object v0, Lch/blinkenlights/android/vanilla/PlaybackService;->sCallbacks:Ljava/util/ArrayList;

    .line 1524
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    const/4 v2, -0x1

    add-int/2addr v1, v2

    if-eq v1, v2, :cond_2

    .line 1525
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/blinkenlights/android/vanilla/TimelineCallback;

    invoke-interface {v2}, Lch/blinkenlights/android/vanilla/TimelineCallback;->onMediaChange()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 2270
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget v0, p1, v0

    float-to-double v0, v0

    const/4 v2, 0x1

    .line 2271
    aget v2, p1, v2

    float-to-double v2, v2

    const/4 v4, 0x2

    .line 2272
    aget p1, p1, v4

    float-to-double v4, p1

    mul-double v0, v0, v0

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    mul-double v4, v4, v4

    add-double/2addr v0, v4

    .line 2274
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 2275
    iget-wide v2, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mAccelLast:D

    sub-double v2, v0, v2

    .line 2276
    iput-wide v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mAccelLast:D

    .line 2278
    iget-wide v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mAccelFiltered:D

    const-wide v4, 0x3fecccccc0000000L    # 0.8999999761581421

    mul-double v0, v0, v4

    add-double/2addr v0, v2

    .line 2279
    iput-wide v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mAccelFiltered:D

    .line 2281
    iget-wide v2, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mShakeThreshold:D

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    .line 2282
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2283
    iget-wide v2, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mLastShakeTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    .line 2284
    iput-wide v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mLastShakeTime:J

    .line 2285
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mShakeAction:Lch/blinkenlights/android/vanilla/Action;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->performAction(Lch/blinkenlights/android/vanilla/Action;Lch/blinkenlights/android/vanilla/PlaybackActivity;)V

    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 1532
    invoke-direct {p0, p2}, Lch/blinkenlights/android/vanilla/PlaybackService;->loadPreference(Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    const/4 p2, 0x2

    if-eqz p1, :cond_13

    .line 539
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    const-string v0, "extra_early_notification"

    .line 540
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mCurrentSong:Lch/blinkenlights/android/vanilla/Song;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lch/blinkenlights/android/vanilla/Song;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3}, Lch/blinkenlights/android/vanilla/Song;-><init>(J)V

    .line 544
    :goto_0
    iget v2, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    invoke-virtual {p0, v0, v2, v1}, Lch/blinkenlights/android/vanilla/PlaybackService;->createNotification(Lch/blinkenlights/android/vanilla/Song;II)Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :cond_1
    const-string v0, "ch.blinkenlights.android.vanilla.action.TOGGLE_PLAYBACK"

    .line 547
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 548
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->playPause()I

    goto/16 :goto_2

    :cond_2
    const-string v0, "ch.blinkenlights.android.vanilla.action.TOGGLE_PLAYBACK_NOTIFICATION"

    .line 549
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 550
    iput-boolean v2, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mForceNotificationVisible:Z

    .line 551
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mStateLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 552
    :try_start_0
    iget p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_3

    .line 553
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->pause()I

    goto :goto_1

    .line 555
    :cond_3
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->play()I

    .line 556
    :goto_1
    monitor-exit v0

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    const-string v0, "ch.blinkenlights.android.vanilla.action.TOGGLE_PLAYBACK_DELAYED"

    .line 557
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v3, 0x10000000

    const-wide/16 v4, 0x190

    const/16 v6, 0x8

    if-eqz v0, :cond_6

    .line 558
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, v6, p3}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 559
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, v6, p3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 560
    new-instance p1, Landroid/content/Intent;

    const-class p3, Lch/blinkenlights/android/vanilla/LibraryActivity;

    invoke-direct {p1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 561
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p3, "android.intent.action.MAIN"

    .line 562
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    invoke-virtual {p0, p1}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 565
    :cond_5
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, v6, v1, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {p1, p3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    :cond_6
    const-string v0, "ch.blinkenlights.android.vanilla.action.NEXT_SONG"

    .line 567
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 568
    invoke-virtual {p0, v2}, Lch/blinkenlights/android/vanilla/PlaybackService;->shiftCurrentSong(I)Lch/blinkenlights/android/vanilla/Song;

    goto/16 :goto_2

    :cond_7
    const-string v0, "ch.blinkenlights.android.vanilla.action.NEXT_SONG_AUTOPLAY"

    .line 569
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 570
    invoke-virtual {p0, v2}, Lch/blinkenlights/android/vanilla/PlaybackService;->shiftCurrentSong(I)Lch/blinkenlights/android/vanilla/Song;

    .line 571
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->play()I

    goto/16 :goto_2

    :cond_8
    const-string v0, "ch.blinkenlights.android.vanilla.action.NEXT_SONG_DELAYED"

    .line 572
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 573
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, v6, p3}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 574
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, v6, p3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 575
    new-instance p1, Landroid/content/Intent;

    const-class p3, Lch/blinkenlights/android/vanilla/LibraryActivity;

    invoke-direct {p1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 576
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p3, "android.intent.action.MAIN"

    .line 577
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    invoke-virtual {p0, p1}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 580
    :cond_9
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, v6, v2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {p1, p3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    :cond_a
    const-string v0, "ch.blinkenlights.android.vanilla.action.PREVIOUS_SONG"

    .line 582
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 583
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->rewindCurrentSong()Lch/blinkenlights/android/vanilla/Song;

    goto/16 :goto_2

    :cond_b
    const-string v0, "ch.blinkenlights.android.vanilla.action.PREVIOUS_SONG_AUTOPLAY"

    .line 584
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 585
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->rewindCurrentSong()Lch/blinkenlights/android/vanilla/Song;

    .line 586
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->play()I

    goto/16 :goto_2

    :cond_c
    const-string v0, "ch.blinkenlights.android.vanilla.action.PLAY"

    .line 587
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 588
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->play()I

    goto/16 :goto_2

    :cond_d
    const-string v0, "ch.blinkenlights.android.vanilla.action.PAUSE"

    .line 589
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 590
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->pause()I

    goto :goto_2

    :cond_e
    const-string v0, "ch.blinkenlights.android.vanilla.CYCLE_REPEAT"

    .line 591
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 592
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->cycleFinishAction()I

    goto :goto_2

    :cond_f
    const-string v0, "ch.blinkenlights.android.vanilla.CYCLE_SHUFFLE"

    .line 593
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 594
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->cycleShuffle()I

    goto :goto_2

    :cond_10
    const-string v0, "ch.blinkenlights.android.vanilla.action.RANDOM_MIX_AUTOPLAY"

    .line 595
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 596
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->pause()I

    .line 597
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->emptyQueue()V

    const/4 p1, 0x4

    .line 598
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->setFinishAction(I)I

    .line 602
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_11
    const-string v0, "ch.blinkenlights.android.vanilla.action.FROM_TYPE_ID_AUTOPLAY"

    .line 603
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p3, -0x1

    const-string v0, "type"

    .line 604
    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    const-wide/16 v2, -0x2

    const-string v0, "id"

    .line 605
    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 606
    sget-object p1, Lch/blinkenlights/android/vanilla/Song;->FILLED_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3, v2, v3, p1, v0}, Lch/blinkenlights/android/vanilla/MediaUtils;->buildQuery(IJ[Ljava/lang/String;Ljava/lang/String;)Lch/blinkenlights/android/vanilla/QueryTask;

    move-result-object p1

    .line 608
    iput v1, p1, Lch/blinkenlights/android/vanilla/QueryTask;->mode:I

    .line 609
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->addSongs(Lch/blinkenlights/android/vanilla/QueryTask;)V

    goto :goto_2

    :cond_12
    const-string p1, "ch.blinkenlights.android.vanilla.CLOSE_NOTIFICATION"

    .line 610
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 611
    iput-boolean v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mForceNotificationVisible:Z

    .line 612
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->pause()I

    .line 613
    invoke-virtual {p0, v2}, Landroid/app/Service;->stopForeground(Z)V

    .line 614
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->updateNotification()V

    :cond_13
    :goto_2
    return p2
.end method

.method public pause()I
    .locals 2

    .line 1261
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mStateLock:[Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1262
    :try_start_0
    iput-boolean v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mTransientAudioLoss:Z

    .line 1263
    iget v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    and-int/lit8 v1, v1, -0x2

    and-int/lit16 v1, v1, -0x401

    invoke-direct {p0, v1}, Lch/blinkenlights/android/vanilla/PlaybackService;->updateState(I)I

    move-result v1

    .line 1264
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->userActionTriggered()V

    .line 1265
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1266
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public performAction(Lch/blinkenlights/android/vanilla/Action;Lch/blinkenlights/android/vanilla/PlaybackActivity;)V
    .locals 3

    .line 2306
    sget-object v0, Lch/blinkenlights/android/vanilla/PlaybackService$2;->$SwitchMap$ch$blinkenlights$android$vanilla$Action:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 2391
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2383
    :pswitch_0
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mCurrentSong:Lch/blinkenlights/android/vanilla/Song;

    if-eqz p1, :cond_1

    .line 2384
    iget-wide p1, p1, Lch/blinkenlights/android/vanilla/Song;->id:J

    iput-wide p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mPendingSeekSong:J

    .line 2385
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->getPosition()I

    move-result p1

    add-int/lit16 p1, p1, -0x2710

    iput p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mPendingSeek:I

    .line 2386
    iget p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mPendingSeek:I

    if-ge p1, v2, :cond_0

    iput v2, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mPendingSeek:I

    .line 2387
    :cond_0
    invoke-direct {p0, v1}, Lch/blinkenlights/android/vanilla/PlaybackService;->setCurrentSong(I)Lch/blinkenlights/android/vanilla/Song;

    goto/16 :goto_0

    .line 2374
    :pswitch_1
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mCurrentSong:Lch/blinkenlights/android/vanilla/Song;

    if-eqz p1, :cond_1

    .line 2375
    iget-wide p1, p1, Lch/blinkenlights/android/vanilla/Song;->id:J

    iput-wide p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mPendingSeekSong:J

    .line 2376
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->getPosition()I

    move-result p1

    add-int/lit16 p1, p1, 0x2710

    iput p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mPendingSeek:I

    .line 2379
    invoke-direct {p0, v1}, Lch/blinkenlights/android/vanilla/PlaybackService;->setCurrentSong(I)Lch/blinkenlights/android/vanilla/Song;

    goto/16 :goto_0

    .line 2366
    :pswitch_2
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->clearQueue()V

    .line 2367
    sget p1, Lch/blinkenlights/android/vanilla/R$string;->queue_cleared:I

    invoke-direct {p0, p1, v1}, Lch/blinkenlights/android/vanilla/PlaybackService;->showMirrorLinkSafeToast(II)V

    goto/16 :goto_0

    .line 2363
    :pswitch_3
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mCurrentSong:Lch/blinkenlights/android/vanilla/Song;

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Lch/blinkenlights/android/vanilla/PlaybackService;->enqueueFromSong(Lch/blinkenlights/android/vanilla/Song;I)V

    goto/16 :goto_0

    .line 2360
    :pswitch_4
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mCurrentSong:Lch/blinkenlights/android/vanilla/Song;

    invoke-virtual {p0, p1, v1}, Lch/blinkenlights/android/vanilla/PlaybackService;->enqueueFromSong(Lch/blinkenlights/android/vanilla/Song;I)V

    goto :goto_0

    .line 2357
    :pswitch_5
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mCurrentSong:Lch/blinkenlights/android/vanilla/Song;

    invoke-virtual {p0, p1, v2}, Lch/blinkenlights/android/vanilla/PlaybackService;->enqueueFromSong(Lch/blinkenlights/android/vanilla/Song;I)V

    goto :goto_0

    .line 2351
    :pswitch_6
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->cycleShuffle()I

    move-result p1

    if-eqz p2, :cond_1

    .line 2353
    invoke-virtual {p2, p1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->setState(I)V

    goto :goto_0

    .line 2345
    :pswitch_7
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->cycleFinishAction()I

    move-result p1

    if-eqz p2, :cond_1

    .line 2347
    invoke-virtual {p2, p1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->setState(I)V

    goto :goto_0

    :pswitch_8
    const/4 p1, -0x2

    .line 2339
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->shiftCurrentSong(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 2341
    invoke-virtual {p2, p1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->setSong(Lch/blinkenlights/android/vanilla/Song;)V

    goto :goto_0

    :pswitch_9
    const/4 p1, 0x2

    .line 2333
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->shiftCurrentSong(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 2335
    invoke-virtual {p2, p1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->setSong(Lch/blinkenlights/android/vanilla/Song;)V

    goto :goto_0

    :pswitch_a
    const/4 p1, -0x1

    .line 2327
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->shiftCurrentSong(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 2329
    invoke-virtual {p2, p1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->setSong(Lch/blinkenlights/android/vanilla/Song;)V

    goto :goto_0

    .line 2321
    :pswitch_b
    invoke-virtual {p0, v2}, Lch/blinkenlights/android/vanilla/PlaybackService;->shiftCurrentSong(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 2323
    invoke-virtual {p2, p1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->setSong(Lch/blinkenlights/android/vanilla/Song;)V

    goto :goto_0

    .line 2315
    :pswitch_c
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->playPause()I

    move-result p1

    if-eqz p2, :cond_1

    .line 2317
    invoke-virtual {p2, p1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->setState(I)V

    goto :goto_0

    .line 2310
    :pswitch_d
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lch/blinkenlights/android/vanilla/LibraryActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x14000000

    .line 2311
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2312
    invoke-virtual {p0, p1}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    :pswitch_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_e
        :pswitch_e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public play()I
    .locals 3

    .line 1242
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mStateLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 1243
    :try_start_0
    iget v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    .line 1244
    invoke-virtual {p0, v1}, Lch/blinkenlights/android/vanilla/PlaybackService;->setFinishAction(I)I

    .line 1245
    sget v1, Lch/blinkenlights/android/vanilla/R$string;->random_enabling:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lch/blinkenlights/android/vanilla/PlaybackService;->showMirrorLinkSafeToast(II)V

    .line 1248
    :cond_0
    iget v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    or-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lch/blinkenlights/android/vanilla/PlaybackService;->updateState(I)I

    move-result v1

    .line 1249
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->userActionTriggered()V

    .line 1250
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1251
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public playPause()I
    .locals 2

    const/4 v0, 0x0

    .line 1276
    iput-boolean v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mForceNotificationVisible:Z

    .line 1277
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mStateLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 1278
    :try_start_0
    iget v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1279
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->pause()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1281
    :cond_0
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->play()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1282
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public positionInfoChanged()V
    .locals 4

    .line 1968
    sget-object v0, Lch/blinkenlights/android/vanilla/PlaybackService;->sCallbacks:Ljava/util/ArrayList;

    .line 1969
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    add-int/2addr v1, v2

    if-eq v1, v2, :cond_0

    .line 1970
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/blinkenlights/android/vanilla/TimelineCallback;

    invoke-interface {v2}, Lch/blinkenlights/android/vanilla/TimelineCallback;->onPositionInfoChanged()V

    goto :goto_0

    .line 1971
    :cond_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mRemoteControlClient:Lch/blinkenlights/android/vanilla/RemoteControl$Client;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mCurrentSong:Lch/blinkenlights/android/vanilla/Song;

    iget v2, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    iget-boolean v3, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mForceNotificationVisible:Z

    invoke-interface {v0, v1, v2, v3}, Lch/blinkenlights/android/vanilla/RemoteControl$Client;->updateRemote(Lch/blinkenlights/android/vanilla/Song;IZ)V

    return-void
.end method

.method public prepareMediaPlayer(Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 678
    invoke-virtual {p1, p2}, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 679
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 680
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->applyReplayGain(Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;)V

    return-void
.end method

.method public removeSongPosition(I)V
    .locals 1

    .line 2457
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mTimeline:Lch/blinkenlights/android/vanilla/SongTimeline;

    invoke-virtual {v0, p1}, Lch/blinkenlights/android/vanilla/SongTimeline;->removeSongPosition(I)V

    return-void
.end method

.method public rewindCurrentSong()Lch/blinkenlights/android/vanilla/Song;
    .locals 2

    .line 1808
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->getPosition()I

    move-result v0

    const/16 v1, 0x9c4

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->getDuration()I

    move-result v0

    const/16 v1, 0x1388

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 1811
    :goto_0
    invoke-virtual {p0, v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->shiftCurrentSong(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object v0

    return-object v0
.end method

.method public saveState(I)V
    .locals 4

    .line 2068
    :try_start_0
    new-instance v0, Ljava/io/DataOutputStream;

    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/Service;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2069
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mCurrentSong:Lch/blinkenlights/android/vanilla/Song;

    const-wide v2, 0x1533574dc74b6ecL

    .line 2070
    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    const/4 v2, 0x6

    .line 2071
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2072
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-nez v1, :cond_0

    const-wide/16 v1, -0x1

    goto :goto_0

    .line 2073
    :cond_0
    iget-wide v1, v1, Lch/blinkenlights/android/vanilla/Song;->id:J

    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2074
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mTimeline:Lch/blinkenlights/android/vanilla/SongTimeline;

    invoke-virtual {p1, v0}, Lch/blinkenlights/android/vanilla/SongTimeline;->writeState(Ljava/io/DataOutputStream;)V

    .line 2075
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "VanillaMusic"

    const-string v1, "Failed to save state"

    .line 2077
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public seekToPosition(I)V
    .locals 1

    .line 1735
    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayerInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 1738
    :cond_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1739
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public seekToProgress(I)V
    .locals 4

    .line 1723
    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayerInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 1725
    :cond_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mMediaPlayer:Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    int-to-long v2, p1

    mul-long v0, v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p1, v0

    .line 1726
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->seekToPosition(I)V

    return-void
.end method

.method public setFinishAction(I)I
    .locals 2

    .line 1294
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mStateLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 1295
    :try_start_0
    iget v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    and-int/lit8 v1, v1, -0x71

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p1, v1

    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->updateState(I)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1296
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setFlag(I)V
    .locals 2

    .line 968
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mStateLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 969
    :try_start_0
    iget v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    or-int/2addr p1, v1

    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->updateState(I)I

    .line 970
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setShuffleMode(I)I
    .locals 2

    .line 1322
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mStateLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 1323
    :try_start_0
    iget v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    and-int/lit16 v1, v1, -0x381

    shl-int/lit8 p1, p1, 0x7

    or-int/2addr p1, v1

    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->updateState(I)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1324
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public shiftCurrentSong(I)Lch/blinkenlights/android/vanilla/Song;
    .locals 0

    .line 1795
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->preparePlayCountsUpdate(I)V

    .line 1796
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->setCurrentSong(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object p1

    .line 1797
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->userActionTriggered()V

    return-object p1
.end method

.method public timelineChanged()V
    .locals 4

    .line 1950
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1951
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1956
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1957
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1959
    sget-object v0, Lch/blinkenlights/android/vanilla/PlaybackService;->sCallbacks:Ljava/util/ArrayList;

    .line 1960
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    add-int/2addr v1, v2

    if-eq v1, v2, :cond_0

    .line 1961
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/blinkenlights/android/vanilla/TimelineCallback;

    invoke-interface {v2}, Lch/blinkenlights/android/vanilla/TimelineCallback;->onTimelineChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public unsetFlag(I)V
    .locals 2

    .line 978
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mStateLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 979
    :try_start_0
    iget v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mState:I

    not-int p1, p1

    and-int/2addr p1, v1

    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->updateState(I)I

    .line 980
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public userActionTriggered()V
    .locals 7

    .line 1823
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1824
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1825
    iget v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mIdleTimeout:I

    if-eqz v0, :cond_0

    .line 1826
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mHandler:Landroid/os/Handler;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1828
    :cond_0
    iget v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mFadeOut:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 1829
    iput v1, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mFadeOut:F

    .line 1830
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->refreshReplayGainValues()V

    .line 1833
    :cond_1
    iget-wide v0, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mIdleStart:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 1834
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/32 v0, 0xea60

    cmp-long v6, v4, v0

    if-gez v6, :cond_2

    .line 1835
    iput-wide v2, p0, Lch/blinkenlights/android/vanilla/PlaybackService;->mIdleStart:J

    const/4 v0, 0x1

    .line 1836
    invoke-virtual {p0, v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->setFlag(I)V

    :cond_2
    return-void
.end method
