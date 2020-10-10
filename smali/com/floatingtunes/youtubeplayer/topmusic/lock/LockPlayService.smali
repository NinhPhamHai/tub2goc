.class public Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlayService;
.super Landroid/app/Service;
.source "LockPlayService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlayService$LockReceiver;
    }
.end annotation


# instance fields
.field mLockReceiver:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlayService$LockReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private registerLock()V
    .locals 2

    .line 43
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlayService$LockReceiver;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlayService$LockReceiver;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlayService;)V

    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlayService;->mLockReceiver:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlayService$LockReceiver;

    .line 47
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlayService;->mLockReceiver:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlayService$LockReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private unRegisterLock()V
    .locals 1

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlayService;->mLockReceiver:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlayService$LockReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 28
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 30
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlayService;->registerLock()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 35
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 37
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlayService;->unRegisterLock()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
