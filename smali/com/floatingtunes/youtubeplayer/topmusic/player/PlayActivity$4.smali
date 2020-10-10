.class Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$4;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 261
    check-cast p2, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$LocalBinder;

    .line 262
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;

    invoke-virtual {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$LocalBinder;->getService()Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    move-result-object p2

    iput-object p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mYTService:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    .line 263
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBound:Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 268
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBound:Z

    return-void
.end method
