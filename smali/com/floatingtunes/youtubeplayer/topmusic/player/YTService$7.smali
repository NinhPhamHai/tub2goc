.class Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$7;
.super Landroid/widget/FrameLayout;
.source "YTService.java"


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
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;Landroid/content/Context;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$7;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 399
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 400
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 401
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    return v1

    .line 403
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 404
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 405
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$7;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/bus/ButtonEvent;

    const-string v2, "BACK"

    invoke-direct {v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/ButtonEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->onButtonEvent(Lcom/floatingtunes/youtubeplayer/topmusic/bus/ButtonEvent;)V

    .line 411
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
