.class Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService$3;
.super Ljava/lang/Object;
.source "RadioService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 91
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/radio/MusicStartEvent;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/radio/MusicStartEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 92
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 93
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->getPlayerQueueManager()Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->setPlaying(Z)V

    .line 94
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;->updateNotification()V

    return-void
.end method
