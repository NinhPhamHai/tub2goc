.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "TopListFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment_ViewBinding;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment_ViewBinding;

.field final synthetic val$target:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment_ViewBinding$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment_ViewBinding;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment_ViewBinding$1;->val$target:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 35
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment_ViewBinding$1;->val$target:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->onViewClicked()V

    return-void
.end method
