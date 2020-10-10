.class public Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SleepReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 17
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/bus/TimeStopEvent;

    invoke-direct {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/TimeStopEvent;-><init>()V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
