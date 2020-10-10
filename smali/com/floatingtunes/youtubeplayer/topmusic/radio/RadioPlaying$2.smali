.class Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying$2;
.super Ljava/lang/Object;
.source "RadioPlaying.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 180
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mPlayerQueueManager:Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 181
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mPlayerQueueManager:Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->setPlaying(Z)V

    .line 182
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->ivPlayPause:Landroid/widget/ImageView;

    const v0, 0x7f080273

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/radio/PauseEvent;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/radio/PauseEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 186
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mPlayerQueueManager:Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->setPlaying(Z)V

    .line 187
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->ivPlayPause:Landroid/widget/ImageView;

    const v0, 0x7f080272

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/radio/PlayingEvent;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/radio/PlayingEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
