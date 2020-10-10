.class public Lcom/floatingtunes/youtubeplayer/topmusic/notification/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 12
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/notification/NotiManager;->createNoti(Landroid/content/Context;)V

    .line 14
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/notification/NotiManager;->createScheduleNotification(Landroid/content/Context;)V

    return-void
.end method
