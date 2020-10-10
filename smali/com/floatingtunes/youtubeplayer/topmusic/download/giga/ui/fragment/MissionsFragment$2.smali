.class Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment$2;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "MissionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/fragment/MissionsFragment;)Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->getItemViewType(I)I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    return v0
.end method
