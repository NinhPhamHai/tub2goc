.class Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$4;
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

.field final synthetic val$topLayout:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$4;->val$topLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$4;->val$topLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 376
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$4;->val$topLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->access$102(I)I

    return-void
.end method
