.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$1$1;
.super Ljava/lang/Object;
.source "SearchPlaylist.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$1;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$1;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$1;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$1$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$1$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$1;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->access$302(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;Z)Z

    .line 227
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$1$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$1;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->access$400(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;)V

    .line 228
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$1$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$1;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->access$508(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;)I

    return-void
.end method
