.class Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder$1;
.super Ljava/lang/Object;
.source "NewTopListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;

.field final synthetic val$this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder$1;->val$this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 91
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;

    iget-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->t:Ljava/lang/Object;

    instance-of v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    if-eqz v1, :cond_0

    .line 92
    check-cast v0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    .line 94
    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;)Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;)Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;->onItemClick(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
