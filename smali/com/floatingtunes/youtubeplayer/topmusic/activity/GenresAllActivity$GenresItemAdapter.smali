.class Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "GenresAllActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenresItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter$GenresItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;


# direct methods
.method private constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$1;)V
    .locals 0

    .line 223
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 250
    instance-of v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter$GenresItemHolder;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    .line 253
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter$GenresItemHolder;

    invoke-virtual {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter$GenresItemHolder;->bindData(Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 231
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;

    iget-object p2, p2, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;->type_name:Ljava/lang/String;

    const-string v0, "Genres"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 233
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0093

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 235
    :cond_0
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;

    iget-object p2, p2, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;->type_name:Ljava/lang/String;

    const-string v1, "Top World"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 237
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0050

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 241
    :cond_1
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c003d

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 245
    :goto_0
    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter$GenresItemHolder;

    invoke-direct {p2, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter$GenresItemHolder;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity$GenresItemAdapter;Landroid/view/View;)V

    return-object p2
.end method
