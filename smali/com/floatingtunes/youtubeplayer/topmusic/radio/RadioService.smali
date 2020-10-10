.class public Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;
.super Landroid/app/Service;
.source "RadioService.java"


# static fields
.field public static isStarting:Z = false


# instance fields
.field mMediaPlayer:Landroid/media/MediaPlayer;

.field mNSmallView:Landroid/widget/RemoteViews;

.field mNotification:Landroid/app/Notification;

.field mNotificationManager:Landroid/app/NotificationManager;

.field mPlayerQueueManager:Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private loadImage(Ljava/lang/String;)V
    .locals 2

    .line 289
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 291
    :cond_0
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 292
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 293
    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 294
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 296
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService$4;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService$4;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method


# virtual methods
.method public createNotificationChannelId()Ljava/lang/String;
    .locals 4

    .line 254
    const-class v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_channel_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 256
    new-instance v2, Landroid/app/NotificationChannel;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const v1, 0x7f06003d

    .line 258
    invoke-virtual {p0, v1}, Landroid/app/Service;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 259
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    const-string v1, "notification"

    .line 260
    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 261
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-object v0
.end method

.method public initNotification(Landroid/content/Context;)V
    .locals 4

    .line 209
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c00ff

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mNSmallView:Landroid/widget/RemoteViews;

    const-string v0, "notification"

    .line 211
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 213
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mNSmallView:Landroid/widget/RemoteViews;

    .line 215
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "PLAY AND PAUSE"

    .line 217
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x18c

    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 218
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mNSmallView:Landroid/widget/RemoteViews;

    const v3, 0x7f09011e

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 220
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "STOP NO"

    .line 222
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v2, 0x1f0

    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 223
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mNSmallView:Landroid/widget/RemoteViews;

    const v2, 0x7f09010f

    invoke-virtual {v0, v2, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 226
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->createNotificationChannelId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "RADIOSERVICE_NOTIFICATION_CHANNEL_ID"

    .line 232
    :goto_0
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 235
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "HOME"

    .line 236
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x254

    invoke-static {v2, v3, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const v2, 0x7f080271

    .line 239
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 240
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 241
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mNSmallView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 242
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 243
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 245
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mNotification:Landroid/app/Notification;

    const/16 p1, 0x38d

    .line 247
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0, p1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 188
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not yet implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate()V
    .locals 2

    .line 61
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const/4 v0, 0x1

    .line 62
    sput-boolean v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->isStarting:Z

    .line 65
    :try_start_0
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->getPlayerQueueManager()Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mPlayerQueueManager:Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;

    .line 66
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 67
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 68
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 69
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mPlayerQueueManager:Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->getCurrentMusic()Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getVideoId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 71
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 73
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService$1;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 79
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService$2;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 87
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService$3;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService$3;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    :goto_0
    invoke-virtual {p0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->initNotification(Landroid/content/Context;)V

    .line 105
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->updateNotification()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 193
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x0

    .line 194
    sput-boolean v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->isStarting:Z

    .line 195
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->releaseMediaPlayer()V

    .line 196
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 197
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->getPlayerQueueManager()Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 143
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 144
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PLAY AND PAUSE"

    .line 148
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 149
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 150
    invoke-virtual {p0, p3}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->pauseEvent(Lcom/floatingtunes/youtubeplayer/topmusic/radio/radio/PauseEvent;)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p0, p3}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->playEvent(Lcom/floatingtunes/youtubeplayer/topmusic/radio/radio/PlayingEvent;)V

    .line 154
    :goto_0
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->updateNotification()V

    :cond_1
    const-string p2, "STOP NO"

    .line 157
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 159
    sput-boolean p1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->isStarting:Z

    .line 160
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/radio/radio/RadioStopEvent;

    invoke-direct {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/radio/RadioStopEvent;-><init>()V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 161
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_1

    .line 169
    :cond_2
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mPlayerQueueManager:Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->isLast()Z

    move-result p1

    if-nez p1, :cond_3

    .line 171
    :try_start_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 172
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 173
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 174
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mPlayerQueueManager:Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;

    invoke-virtual {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->getCurrentMusic()Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getVideoId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 175
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_1
    const/4 p1, 0x2

    return p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    .line 321
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 322
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    const/4 p1, 0x0

    .line 323
    sput-boolean p1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->isStarting:Z

    return-void
.end method

.method public pauseEvent(Lcom/floatingtunes/youtubeplayer/topmusic/radio/radio/PauseEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 133
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 134
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mPlayerQueueManager:Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->setPlaying(Z)V

    .line 135
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mPlayerQueueManager:Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->setCurrentPauseTime(J)V

    .line 136
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->updateNotification()V

    return-void
.end method

.method public playEvent(Lcom/floatingtunes/youtubeplayer/topmusic/radio/radio/PlayingEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 123
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 124
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mPlayerQueueManager:Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->setPlaying(Z)V

    .line 125
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mPlayerQueueManager:Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->setCurrentResumeTime(J)V

    .line 126
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->updateNotification()V

    return-void
.end method

.method public releaseMediaPlayer()V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 203
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    return-void
.end method

.method public updateNotification()V
    .locals 4

    .line 268
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->getPlayerQueueManager()Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->getCurrentMusic()Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 271
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mNSmallView:Landroid/widget/RemoteViews;

    const v2, 0x7f0902c3

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 272
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    const v2, 0x7f09011e

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mNSmallView:Landroid/widget/RemoteViews;

    const v3, 0x7f080272

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 274
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/radio/radio/NotificationPlayEvent;

    invoke-direct {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/radio/NotificationPlayEvent;-><init>()V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mNSmallView:Landroid/widget/RemoteViews;

    const v3, 0x7f080273

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 277
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/radio/radio/NotificationPauseEvent;

    invoke-direct {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/radio/NotificationPauseEvent;-><init>()V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 279
    :goto_0
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x38d

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 281
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getThumbnails()Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->loadImage(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
