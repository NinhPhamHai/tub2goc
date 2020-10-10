.class public Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity_ViewBinding;
.super Ljava/lang/Object;
.source "RadioListActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;Landroid/view/View;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;

    .line 28
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f090299

    const-string v2, "field \'toolBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->toolBar:Landroidx/appcompat/widget/Toolbar;

    .line 29
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090200

    const-string v2, "field \'recycleView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f0901e3

    const-string v2, "field \'progressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->progressBar:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;

    .line 40
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->toolBar:Landroidx/appcompat/widget/Toolbar;

    .line 41
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->progressBar:Landroid/widget/ProgressBar;

    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
