.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MissionIterator"
.end annotation


# instance fields
.field final FINISHED:Ljava/lang/Object;

.field final PENDING:Ljava/lang/Object;

.field current:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field hasFinished:Z

.field hidden:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;",
            ">;"
        }
    .end annotation
.end field

.field snapshot:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;


# direct methods
.method private constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;)V
    .locals 1

    .line 572
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    .line 563
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->FINISHED:Ljava/lang/Object;

    .line 564
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->PENDING:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 570
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->hasFinished:Z

    .line 573
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->hidden:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 574
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->current:Ljava/util/ArrayList;

    .line 575
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->getSpecialItems()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->snapshot:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$1;)V
    .locals 0

    .line 562
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;)V

    return-void
.end method

.method private getSpecialItems()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 579
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    monitor-enter v0

    .line 580
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    invoke-static {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 581
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    invoke-static {v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->access$200(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 582
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->hidden:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 585
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 586
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 587
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;

    .line 588
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 591
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    add-int/lit8 v3, v3, 0x1

    .line 594
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    .line 595
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    .line 597
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 598
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 599
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->PENDING:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 602
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 603
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->FINISHED:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 607
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v1, 0x1

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->hasFinished:Z

    .line 609
    monitor-exit v0

    return-object v4

    :catchall_0
    move-exception v1

    .line 610
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->snapshot:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 698
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->current:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 700
    instance-of v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;

    if-eqz v0, :cond_0

    .line 701
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    check-cast p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;

    iget-object p2, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->equals(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public areItemsTheSame(II)Z
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->snapshot:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->current:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public end()V
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->current:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->snapshot:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 638
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->current:Ljava/util/ArrayList;

    return-void
.end method

.method public getItem(I)Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;
    .locals 3

    .line 614
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->snapshot:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 616
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->PENDING:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;I)V

    return-object p1

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->FINISHED:Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    new-instance p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;I)V

    return-object p1

    .line 619
    :cond_1
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    const/4 v2, 0x0

    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;

    invoke-direct {v0, v1, v2, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;ILcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;)V

    return-object v0
.end method

.method public getNewListSize()I
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->current:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->snapshot:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSpecialAtItem(I)I
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->snapshot:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 625
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->PENDING:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->FINISHED:Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hasFinishedMissions()Z
    .locals 1

    .line 650
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->hasFinished:Z

    return v0
.end method

.method public hasValidPendingMissions()[Z
    .locals 8

    .line 664
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    monitor-enter v0

    .line 665
    :try_start_0
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    invoke-static {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    .line 666
    iget-object v7, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->hidden:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v5}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->isCorrupt()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 669
    :cond_1
    iget-boolean v5, v5, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 674
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    .line 676
    new-array v0, v0, [Z

    aput-boolean v3, v0, v2

    aput-boolean v4, v0, v6

    return-object v0

    :catchall_0
    move-exception v1

    .line 674
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public hide(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;)V
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->hidden:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public start()V
    .locals 1

    .line 633
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->getSpecialItems()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->current:Ljava/util/ArrayList;

    return-void
.end method

.method public unHide(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;)V
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->hidden:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
