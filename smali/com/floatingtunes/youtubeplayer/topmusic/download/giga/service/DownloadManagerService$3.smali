.class Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "DownloadManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 195
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;Z)V

    return-void
.end method
