.class public Lcom/floatingtunes/youtubeplayer/topmusic/player/WatcherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WatcherReceiver.java"


# instance fields
.field private mHomeKeyReceiver:Lcom/floatingtunes/youtubeplayer/topmusic/player/WatcherReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/WatcherReceiver;->mHomeKeyReceiver:Lcom/floatingtunes/youtubeplayer/topmusic/player/WatcherReceiver;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "reason"

    .line 49
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "homekey"

    .line 51
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 52
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/bus/ButtonEvent;

    const-string v0, "HOME"

    invoke-direct {p2, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/ButtonEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p2, "recentapps"

    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 56
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/bus/ButtonEvent;

    const-string v0, "RECENT"

    invoke-direct {p2, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/ButtonEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 61
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/bus/LockEvent;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/LockEvent;-><init>(Z)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 63
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 64
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/bus/LockEvent;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/LockEvent;-><init>(Z)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public registerHomeKeyReceiver(Landroid/content/Context;)V
    .locals 2

    const-string v0, "WatcherReceiver"

    const-string v1, "registerHomeKeyReceiver: "

    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/WatcherReceiver;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/WatcherReceiver;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/WatcherReceiver;->mHomeKeyReceiver:Lcom/floatingtunes/youtubeplayer/topmusic/player/WatcherReceiver;

    .line 31
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 34
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/WatcherReceiver;->mHomeKeyReceiver:Lcom/floatingtunes/youtubeplayer/topmusic/player/WatcherReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregisterHomeKeyReceiver(Landroid/content/Context;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/WatcherReceiver;->mHomeKeyReceiver:Lcom/floatingtunes/youtubeplayer/topmusic/player/WatcherReceiver;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
