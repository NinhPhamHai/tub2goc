.class Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$DiscoverAdapter$1;
.super Ljava/lang/Object;
.source "SpotlightOnViewAllActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$DiscoverAdapter;->setAllDataLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$DiscoverAdapter;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$DiscoverAdapter;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$DiscoverAdapter$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$DiscoverAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$DiscoverAdapter$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$DiscoverAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
