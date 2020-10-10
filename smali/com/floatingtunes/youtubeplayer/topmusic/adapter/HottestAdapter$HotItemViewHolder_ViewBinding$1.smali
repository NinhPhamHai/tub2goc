.class Lcom/floatingtunes/youtubeplayer/topmusic/adapter/HottestAdapter$HotItemViewHolder_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "HottestAdapter$HotItemViewHolder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/adapter/HottestAdapter$HotItemViewHolder_ViewBinding;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/HottestAdapter$HotItemViewHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/HottestAdapter$HotItemViewHolder_ViewBinding;

.field final synthetic val$target:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/HottestAdapter$HotItemViewHolder;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/HottestAdapter$HotItemViewHolder_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/HottestAdapter$HotItemViewHolder;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/HottestAdapter$HotItemViewHolder_ViewBinding$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/HottestAdapter$HotItemViewHolder_ViewBinding;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/HottestAdapter$HotItemViewHolder_ViewBinding$1;->val$target:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/HottestAdapter$HotItemViewHolder;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 36
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/HottestAdapter$HotItemViewHolder_ViewBinding$1;->val$target:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/HottestAdapter$HotItemViewHolder;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/HottestAdapter$HotItemViewHolder;->onHotItemClick()V

    const/4 p1, 0x0

    throw p1
.end method
