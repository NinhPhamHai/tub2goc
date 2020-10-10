.class Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderHeader;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MissionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolderHeader"
.end annotation


# instance fields
.field header:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;Landroid/view/View;)V
    .locals 0

    .line 914
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderHeader;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;

    .line 915
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 916
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f090106

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderHeader;->header:Landroid/widget/TextView;

    return-void
.end method
