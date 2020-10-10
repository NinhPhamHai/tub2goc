.class public Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;
.super Landroid/media/MediaPlayer;
.source "VanillaMediaPlayer.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataSource:Ljava/lang/String;

.field private mDuckingFactor:F

.field private mHasNextMediaPlayer:Z

.field private mIsDucking:Z

.field private mReplayGain:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 36
    iput v0, p0, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->mReplayGain:F

    .line 37
    iput v0, p0, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->mDuckingFactor:F

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->mIsDucking:Z

    .line 45
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->mContext:Landroid/content/Context;

    return-void
.end method

.method private updateVolume()V
    .locals 2

    .line 159
    iget v0, p0, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->mReplayGain:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget v0, p0, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->mReplayGain:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 162
    :goto_0
    iget-boolean v1, p0, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->mIsDucking:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->mDuckingFactor:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    iget v1, p0, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->mDuckingFactor:F

    mul-float v0, v0, v1

    .line 166
    :cond_1
    invoke-virtual {p0, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method


# virtual methods
.method public closeAudioFx()V
    .locals 3

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v1

    const-string v2, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->mDataSource:Ljava/lang/String;

    return-object v0
.end method

.method public hasNextMediaPlayer()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->mHasNextMediaPlayer:Z

    return v0
.end method

.method public openAudioFx()V
    .locals 3

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v1

    const-string v2, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->mDataSource:Ljava/lang/String;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->mHasNextMediaPlayer:Z

    .line 63
    invoke-super {p0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->mDataSource:Ljava/lang/String;

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->mHasNextMediaPlayer:Z

    .line 54
    invoke-super {p0}, Landroid/media/MediaPlayer;->reset()V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 75
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 76
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->mDataSource:Ljava/lang/String;

    return-void
.end method

.method public setDuckingFactor(F)V
    .locals 0

    .line 151
    iput p1, p0, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->mDuckingFactor:F

    .line 152
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->updateVolume()V

    return-void
.end method

.method public setIsDucking(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->mIsDucking:Z

    .line 140
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->updateVolume()V

    return-void
.end method

.method public setNextMediaPlayer(Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;)V
    .locals 0

    .line 91
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setNextMediaPlayer(Landroid/media/MediaPlayer;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 92
    :goto_0
    iput-boolean p1, p0, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->mHasNextMediaPlayer:Z

    return-void
.end method

.method public setReplayGain(F)V
    .locals 0

    .line 129
    iput p1, p0, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->mReplayGain:F

    .line 130
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/VanillaMediaPlayer;->updateVolume()V

    return-void
.end method
