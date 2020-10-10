.class public Lcom/floatingtunes/youtubeplayer/topmusic/notification/MusicUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MusicUpdateReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 14
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->getMusicNotification(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 16
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/notification/NotiManager;->createNoti(Landroid/content/Context;)V

    .line 18
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/notification/NotiManager;->createScheduleNotification(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
