.class public Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;
.super Ljava/lang/Object;
.source "QueueLab.java"


# static fields
.field private static sQueueLab:Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;


# instance fields
.field private mQueues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->mQueues:Ljava/util/ArrayList;

    return-void
.end method

.method public static getQueueLab()Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;
    .locals 1

    .line 25
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->sQueueLab:Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;-><init>()V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->sQueueLab:Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;

    .line 28
    :cond_0
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->sQueueLab:Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;

    return-object v0
.end method


# virtual methods
.method public addMusicListToQueue(Ljava/util/List;Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->getIndexById(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)I

    move-result v0

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-ne v0, p2, :cond_0

    return-void

    .line 62
    :cond_0
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->mQueues:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 63
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->mQueues:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 64
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/bus/DataChange;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/DataChange;-><init>(ZI)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public addMusicToQueue(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->mQueues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->mQueues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/bus/DataChange;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/DataChange;-><init>(ZI)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public clearQueues()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->mQueues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public delete(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->mQueues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public getIdByIndex(I)Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;
    .locals 1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->mQueues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getIndexById(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)I
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->mQueues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getQueues()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->mQueues:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->mQueues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
