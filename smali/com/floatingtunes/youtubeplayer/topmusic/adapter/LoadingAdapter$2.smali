.class Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter$2;
.super Ljava/lang/Object;
.source "LoadingAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->setDataList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
