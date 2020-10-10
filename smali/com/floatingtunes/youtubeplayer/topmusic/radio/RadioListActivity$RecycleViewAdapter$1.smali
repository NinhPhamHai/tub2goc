.class Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$RecycleViewAdapter$1;
.super Ljava/lang/Object;
.source "RadioListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$RecycleViewAdapter;->setLoadingSate(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$RecycleViewAdapter;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$RecycleViewAdapter;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$RecycleViewAdapter$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$RecycleViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$RecycleViewAdapter$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$RecycleViewAdapter;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$RecycleViewAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
