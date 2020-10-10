.class Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$3;
.super Ljava/lang/Object;
.source "LockPlay.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 228
    check-cast p2, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$LocalBinder;

    .line 229
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;

    invoke-virtual {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$LocalBinder;->getService()Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    move-result-object p2

    iput-object p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mYTService:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    .line 230
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mBound:Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 235
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mBound:Z

    return-void
.end method
