.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SearchMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter$HeaderViewHolder;,
        Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter$RecordViewHolder;
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
.field private HEADER_TYPE:I

.field private NORMAL_TYPE:I

.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;


# direct methods
.method private constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 p1, 0x1

    .line 121
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;->HEADER_TYPE:I

    const/4 p1, 0x2

    .line 122
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;->NORMAL_TYPE:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$1;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;->mSearchRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    .line 156
    iget p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;->HEADER_TYPE:I

    return p1

    .line 157
    :cond_0
    iget p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;->NORMAL_TYPE:I

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    if-nez p2, :cond_1

    .line 139
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter$HeaderViewHolder;

    .line 141
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;

    iget-object p2, p2, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;->mSearchRecords:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    .line 142
    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter$HeaderViewHolder;->mHeadHistory:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter$HeaderViewHolder;->mHeadHistory:Landroid/widget/RelativeLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 147
    :cond_1
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter$RecordViewHolder;

    .line 148
    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter$RecordViewHolder;->tv_title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;->mSearchRecords:Ljava/util/List;

    add-int/lit8 p2, p2, -0x1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;

    invoke-virtual {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;->getRecord()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 127
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;->HEADER_TYPE:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 128
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0101

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 129
    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter$HeaderViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter$HeaderViewHolder;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;Landroid/view/View;)V

    return-object p2

    .line 131
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0104

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 132
    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter$RecordViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter$RecordViewHolder;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;Landroid/view/View;)V

    return-object p2
.end method
