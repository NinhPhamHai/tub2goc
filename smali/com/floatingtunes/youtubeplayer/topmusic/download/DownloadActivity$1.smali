.class Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadActivity$1;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadActivity;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadActivity;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadActivity;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadActivity;)V

    .line 48
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
