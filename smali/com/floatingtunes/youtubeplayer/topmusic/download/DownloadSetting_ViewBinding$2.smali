.class Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "DownloadSetting_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting_ViewBinding;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting_ViewBinding;

.field final synthetic val$target:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting_ViewBinding$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting_ViewBinding;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting_ViewBinding$2;->val$target:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 52
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting_ViewBinding$2;->val$target:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;->onRlAudioPathClicked()V

    return-void
.end method
