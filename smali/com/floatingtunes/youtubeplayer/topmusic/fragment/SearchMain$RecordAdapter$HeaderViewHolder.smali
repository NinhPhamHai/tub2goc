.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter$HeaderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SearchMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field mClearHistory:Landroid/widget/TextView;

.field mHeadHistory:Landroid/widget/RelativeLayout;

.field mNewFlowLayout:Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout;

.field final synthetic this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;Landroid/view/View;)V
    .locals 1

    .line 210
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter$HeaderViewHolder;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;

    .line 211
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0900f0

    .line 212
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter$HeaderViewHolder;->mHeadHistory:Landroid/widget/RelativeLayout;

    const v0, 0x7f0900ef

    .line 213
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter$HeaderViewHolder;->mClearHistory:Landroid/widget/TextView;

    const v0, 0x7f0900d9

    .line 214
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter$HeaderViewHolder;->mNewFlowLayout:Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout;

    .line 215
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter$HeaderViewHolder;->mClearHistory:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter$HeaderViewHolder;->mNewFlowLayout:Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout;

    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter$HeaderViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter$HeaderViewHolder$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter$HeaderViewHolder;Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;)V

    invoke-virtual {p2, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/view/NewFlowLayout;->addTextViewClick(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900ef

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->deleteAllSearchRecords()V

    .line 230
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter$HeaderViewHolder;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;->mSearchRecords:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 231
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter$HeaderViewHolder;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;->access$300(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;)Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 232
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter$HeaderViewHolder;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;->access$300(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;)Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method
