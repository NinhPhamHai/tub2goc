.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$1$1;
.super Ljava/lang/Object;
.source "SearchVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$1;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$1;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$1;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$1$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$1$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$1;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->access$202(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;Z)Z

    .line 263
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$1$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$1;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->access$300(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;)V

    .line 264
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$1$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$1;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;

    iget v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->page:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->page:I

    return-void
.end method
