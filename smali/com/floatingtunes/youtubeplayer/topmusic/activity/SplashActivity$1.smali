.class Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$1;
.super Landroid/os/Handler;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 58
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e7

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;)V

    :goto_0
    return-void
.end method
