.class Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ManageListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;


# direct methods
.method private constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListAdapter;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$1;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListAdapter;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListAdapter;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 131
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder;

    invoke-virtual {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListAdapter;->onBindViewHolder(Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder;I)V
    .locals 0

    .line 143
    invoke-virtual {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder;->bindData(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 131
    invoke-virtual {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder;
    .locals 2

    .line 136
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListAdapter;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00f0

    const/4 v1, 0x0

    .line 137
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 138
    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListAdapter;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;

    invoke-direct {p2, v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity$ListHolder;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;Landroid/view/View;)V

    return-object p2
.end method
