.class public Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlayService$LockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LockPlayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlayService;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlayService;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlayService$LockReceiver;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_3

    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 81
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlayService$LockReceiver;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlayService;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->isLockEnable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlayService$LockReceiver;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlayService;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->isFromFacebook(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 86
    sget-boolean p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mServiceRunning:Z

    if-nez p1, :cond_1

    return-void

    .line 90
    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlayService$LockReceiver;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlayService;

    const-class v0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x10000000

    .line 91
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x80000

    .line 92
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 93
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlayService$LockReceiver;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlayService;

    .line 94
    invoke-virtual {p2}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 96
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 98
    invoke-virtual {p1}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method
