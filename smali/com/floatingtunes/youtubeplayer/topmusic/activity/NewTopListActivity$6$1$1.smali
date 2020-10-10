.class Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity$6$1$1;
.super Ljava/lang/Object;
.source "NewTopListActivity.java"

# interfaces
.implements Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity$6$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity$6$1;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity$6$1;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity$6$1$1;->this$2:Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;",
            ">;)V"
        }
    .end annotation

    .line 414
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity$6$1$1;->this$2:Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity$6$1;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity$6$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity$6;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity$6;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;)V

    return-void
.end method
