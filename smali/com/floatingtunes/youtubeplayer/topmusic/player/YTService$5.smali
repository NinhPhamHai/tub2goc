.class Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$5;
.super Ljava/lang/Object;
.source "YTService.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->initWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$5;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$5;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCloseLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 384
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$5;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCloseLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->access$202(I)I

    return-void
.end method
