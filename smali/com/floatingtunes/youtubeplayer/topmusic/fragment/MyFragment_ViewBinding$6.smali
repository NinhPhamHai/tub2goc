.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding$6;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "MyFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding;

.field final synthetic val$target:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding$6;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding$6;->val$target:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 91
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding$6;->val$target:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;->onDownClicked()V

    return-void
.end method
