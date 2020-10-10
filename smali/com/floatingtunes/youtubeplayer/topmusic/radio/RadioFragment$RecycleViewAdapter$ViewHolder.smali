.class public Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RadioFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field ll:Landroid/view/ViewGroup;

.field mTv:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter;Landroid/view/View;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter$ViewHolder;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter;

    .line 272
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0902b7

    .line 273
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter$ViewHolder;->mTv:Landroid/widget/TextView;

    const p1, 0x7f090142

    .line 274
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter$ViewHolder;->ll:Landroid/view/ViewGroup;

    return-void
.end method
