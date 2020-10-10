.class Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$LoadViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SpotlightOnViewAllActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadViewHolder"
.end annotation


# instance fields
.field mProgressBar:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;Landroid/view/View;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$LoadViewHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;

    .line 227
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0901e2

    .line 228
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$LoadViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method public bindData(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 235
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$LoadViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 237
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$LoadViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method
