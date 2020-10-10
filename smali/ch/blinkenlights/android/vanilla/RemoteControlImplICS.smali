.class public Lch/blinkenlights/android/vanilla/RemoteControlImplICS;
.super Ljava/lang/Object;
.source "RemoteControlImplICS.java"

# interfaces
.implements Lch/blinkenlights/android/vanilla/RemoteControl$Client;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mRemote:Landroid/media/RemoteControlClient;

.field private mShowCover:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplICS;->mShowCover:I

    .line 57
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplICS;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public initializeRemote()V
    .locals 5

    .line 65
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/RemoteControlImplICS;->unregisterRemote()V

    .line 66
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplICS;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;->useHeadsetControls(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplICS;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 71
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplICS;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 74
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplICS;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 76
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplICS;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 77
    new-instance v2, Landroid/media/RemoteControlClient;

    invoke-direct {v2, v1}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    const/16 v1, 0x9d

    .line 85
    invoke-virtual {v2, v1}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 87
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 88
    iput-object v2, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplICS;->mRemote:Landroid/media/RemoteControlClient;

    return-void
.end method

.method public reloadPreference()V
    .locals 1

    const/4 v0, -0x1

    .line 109
    iput v0, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplICS;->mShowCover:I

    return-void
.end method

.method public unregisterRemote()V
    .locals 4

    .line 95
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplICS;->mRemote:Landroid/media/RemoteControlClient;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplICS;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 97
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplICS;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 99
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplICS;->mRemote:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplICS;->mRemote:Landroid/media/RemoteControlClient;

    :cond_0
    return-void
.end method

.method public updateRemote(Lch/blinkenlights/android/vanilla/Song;IZ)V
    .locals 5

    .line 123
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplICS;->mRemote:Landroid/media/RemoteControlClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    and-int/2addr p2, v1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 129
    :goto_0
    iget v3, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplICS;->mShowCover:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 130
    iget-object v3, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplICS;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->getSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "cover_on_lockscreen"

    .line 131
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput v3, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplICS;->mShowCover:I

    :cond_2
    if-eqz p2, :cond_3

    const/4 v3, 0x3

    goto :goto_1

    :cond_3
    const/4 v3, 0x2

    .line 134
    :goto_1
    invoke-virtual {v0, v3}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 135
    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    if-eqz p1, :cond_8

    .line 136
    iget-object v3, p1, Lch/blinkenlights/android/vanilla/Song;->artist:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p1, Lch/blinkenlights/android/vanilla/Song;->album:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lch/blinkenlights/android/vanilla/Song;->artist:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lch/blinkenlights/android/vanilla/Song;->album:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    iget-object v4, p1, Lch/blinkenlights/android/vanilla/Song;->artist:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    iget-object v3, p1, Lch/blinkenlights/android/vanilla/Song;->album:Ljava/lang/String;

    .line 139
    :cond_4
    iget-object v4, p1, Lch/blinkenlights/android/vanilla/Song;->album:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    iget-object v3, p1, Lch/blinkenlights/android/vanilla/Song;->artist:Ljava/lang/String;

    .line 141
    :cond_5
    invoke-virtual {v0, v1, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    const/4 v3, 0x7

    .line 142
    iget-object v4, p1, Lch/blinkenlights/android/vanilla/Song;->title:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 143
    iget-object v3, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplICS;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Lch/blinkenlights/android/vanilla/Song;->getCover(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 144
    iget v3, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplICS;->mShowCover:I

    if-ne v3, v1, :cond_7

    if-nez p2, :cond_6

    if-eqz p3, :cond_7

    .line 147
    :cond_6
    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_2

    .line 152
    :cond_7
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 p2, 0x10

    invoke-static {p2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_2
    const/16 p2, 0x64

    .line 154
    invoke-virtual {v0, p2, p1}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 156
    :cond_8
    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    return-void
.end method
