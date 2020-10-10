.class public Lch/blinkenlights/android/vanilla/RemoteControlImplLp;
.super Ljava/lang/Object;
.source "RemoteControlImplLp.java"

# interfaces
.implements Lch/blinkenlights/android/vanilla/RemoteControl$Client;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMediaSession:Landroid/media/session/MediaSession;

.field private mShowCover:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplLp;->mShowCover:I

    .line 54
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplLp;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lch/blinkenlights/android/vanilla/RemoteControlImplLp;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplLp;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public initializeRemote()V
    .locals 4

    .line 62
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/RemoteControlImplLp;->unregisterRemote()V

    .line 63
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplLp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;->useHeadsetControls(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 66
    :cond_0
    new-instance v0, Landroid/media/session/MediaSession;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplLp;->mContext:Landroid/content/Context;

    const-string v2, "Vanilla Music"

    invoke-direct {v0, v1, v2}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplLp;->mMediaSession:Landroid/media/session/MediaSession;

    .line 68
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplLp;->mMediaSession:Landroid/media/session/MediaSession;

    new-instance v1, Lch/blinkenlights/android/vanilla/RemoteControlImplLp$1;

    invoke-direct {v1, p0}, Lch/blinkenlights/android/vanilla/RemoteControlImplLp$1;-><init>(Lch/blinkenlights/android/vanilla/RemoteControlImplLp;)V

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 92
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 93
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplLp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 94
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplLp;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplLp;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    .line 98
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplLp;->mMediaSession:Landroid/media/session/MediaSession;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setFlags(I)V

    return-void
.end method

.method public reloadPreference()V
    .locals 1

    const/4 v0, -0x1

    .line 116
    iput v0, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplLp;->mShowCover:I

    return-void
.end method

.method public unregisterRemote()V
    .locals 2

    .line 105
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplLp;->mMediaSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 106
    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setActive(Z)V

    .line 107
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplLp;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->release()V

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplLp;->mMediaSession:Landroid/media/session/MediaSession;

    :cond_0
    return-void
.end method

.method public updateRemote(Lch/blinkenlights/android/vanilla/Song;IZ)V
    .locals 6

    .line 129
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplLp;->mMediaSession:Landroid/media/session/MediaSession;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    and-int/2addr p2, v1

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 135
    :goto_0
    iget v2, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplLp;->mShowCover:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 136
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplLp;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->getSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "cover_on_lockscreen"

    .line 137
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput v2, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplLp;->mShowCover:I

    .line 140
    :cond_2
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplLp;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object v2

    if-eqz p1, :cond_6

    const/4 v3, 0x0

    .line 144
    iget v4, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplLp;->mShowCover:I

    if-ne v4, v1, :cond_4

    if-nez p2, :cond_3

    if-eqz p3, :cond_4

    .line 145
    :cond_3
    iget-object p3, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplLp;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p3}, Lch/blinkenlights/android/vanilla/Song;->getCover(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 148
    :cond_4
    new-instance p3, Landroid/media/MediaMetadata$Builder;

    invoke-direct {p3}, Landroid/media/MediaMetadata$Builder;-><init>()V

    iget-object v4, p1, Lch/blinkenlights/android/vanilla/Song;->artist:Ljava/lang/String;

    const-string v5, "android.media.metadata.ARTIST"

    .line 149
    invoke-virtual {p3, v5, v4}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object p3

    iget-object v4, p1, Lch/blinkenlights/android/vanilla/Song;->album:Ljava/lang/String;

    const-string v5, "android.media.metadata.ALBUM"

    .line 150
    invoke-virtual {p3, v5, v4}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object p3

    iget-object v4, p1, Lch/blinkenlights/android/vanilla/Song;->title:Ljava/lang/String;

    const-string v5, "android.media.metadata.TITLE"

    .line 151
    invoke-virtual {p3, v5, v4}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object p3

    iget-wide v4, p1, Lch/blinkenlights/android/vanilla/Song;->duration:J

    const-string p1, "android.media.metadata.DURATION"

    .line 152
    invoke-virtual {p3, p1, v4, v5}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    move-result-object p1

    const-string p3, "android.media.metadata.ALBUM_ART"

    .line 153
    invoke-virtual {p1, p3, v3}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    move-result-object p1

    .line 156
    invoke-virtual {v2}, Lch/blinkenlights/android/vanilla/PlaybackService;->getState()I

    move-result p3

    invoke-static {p3}, Lch/blinkenlights/android/vanilla/PlaybackService;->finishAction(I)I

    move-result p3

    const/4 v3, 0x4

    if-eq p3, v3, :cond_5

    .line 157
    invoke-virtual {v2}, Lch/blinkenlights/android/vanilla/PlaybackService;->getTimelinePosition()I

    move-result p3

    add-int/2addr p3, v1

    int-to-long v3, p3

    const-string p3, "android.media.metadata.TRACK_NUMBER"

    invoke-virtual {p1, p3, v3, v4}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    .line 158
    invoke-virtual {v2}, Lch/blinkenlights/android/vanilla/PlaybackService;->getTimelineLength()I

    move-result p3

    int-to-long v3, p3

    const-string p3, "android.media.metadata.NUM_TRACKS"

    invoke-virtual {p1, p3, v3, v4}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    .line 161
    :cond_5
    invoke-virtual {p1}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    :cond_6
    if-eqz p2, :cond_7

    const/4 p1, 0x3

    goto :goto_1

    :cond_7
    const/4 p1, 0x2

    .line 166
    :goto_1
    new-instance p2, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {p2}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    .line 167
    invoke-virtual {v2}, Lch/blinkenlights/android/vanilla/PlaybackService;->getPosition()I

    move-result p3

    int-to-long v2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1, v2, v3, p3}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    move-result-object p1

    const-wide/16 p2, 0x237

    .line 168
    invoke-virtual {p1, p2, p3}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    move-result-object p1

    .line 170
    invoke-virtual {p1}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object p1

    .line 166
    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 171
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplLp;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {p1, v1}, Landroid/media/session/MediaSession;->setActive(Z)V

    return-void
.end method
