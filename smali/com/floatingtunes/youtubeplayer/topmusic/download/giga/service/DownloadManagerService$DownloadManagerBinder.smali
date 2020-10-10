.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;
.super Landroid/os/Binder;
.source "DownloadManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadManagerBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public addMissionEventListener(Landroid/os/Handler;)V
    .locals 2

    .line 613
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->access$300(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;Landroid/os/Handler;Z)V

    return-void
.end method

.method public askForSavePath()Z
    .locals 3

    .line 606
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->access$200(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;

    const v2, 0x7f110103

    .line 607
    invoke-virtual {v1, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 606
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public clearDownloadNotifications()V
    .locals 3

    .line 621
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->access$400(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;)Landroid/app/NotificationManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->access$500(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/16 v1, 0x3e9

    if-eqz v0, :cond_1

    .line 623
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->access$400(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 624
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->access$600(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 625
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;

    invoke-static {v0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->access$702(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;I)I

    .line 627
    :cond_1
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->access$800(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 628
    :goto_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->access$900(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;)I

    move-result v0

    if-le v0, v1, :cond_2

    .line 629
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->access$400(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;

    invoke-static {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->access$900(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 628
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->access$910(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;)I

    goto :goto_0

    .line 631
    :cond_2
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->access$1000(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 632
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->access$908(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;)I

    :cond_3
    return-void
.end method

.method public enableNotifications(Z)V
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;

    invoke-static {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->access$1102(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;Z)Z

    return-void
.end method

.method public getDownloadManager()Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;)Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    move-result-object v0

    return-object v0
.end method

.method public getMainStorageAudio()Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;)Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    move-result-object v0

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMainStorageAudio:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

    return-object v0
.end method

.method public getMainStorageVideo()Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;)Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    move-result-object v0

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMainStorageVideo:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

    return-object v0
.end method

.method public removeMissionEventListener(Landroid/os/Handler;)V
    .locals 2

    .line 617
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->access$300(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;Landroid/os/Handler;Z)V

    return-void
.end method
