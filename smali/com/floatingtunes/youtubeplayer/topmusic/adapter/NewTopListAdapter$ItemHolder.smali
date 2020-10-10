.class public Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NewTopListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;"
    }
.end annotation


# instance fields
.field mChannelTitle:Landroid/widget/TextView;

.field mCover:Landroid/widget/ImageView;

.field mDuration:Landroid/widget/TextView;

.field mFavorite:Landroid/widget/CheckBox;

.field mMore:Landroid/widget/ImageView;

.field mRank:Landroid/widget/TextView;

.field mRankView:Landroid/widget/ImageView;

.field mTitle:Landroid/widget/TextView;

.field mViewCount:Landroid/widget/TextView;

.field t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;Landroid/view/View;)V
    .locals 1

    .line 74
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;

    .line 75
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0902c8

    .line 76
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0902ad

    .line 77
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mChannelTitle:Landroid/widget/TextView;

    const v0, 0x7f0902cb

    .line 78
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mViewCount:Landroid/widget/TextView;

    const v0, 0x7f0902bd

    .line 79
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mRank:Landroid/widget/TextView;

    const v0, 0x7f0902b5

    .line 80
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mDuration:Landroid/widget/TextView;

    const v0, 0x7f090111

    .line 82
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mCover:Landroid/widget/ImageView;

    const v0, 0x7f090117

    .line 83
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mFavorite:Landroid/widget/CheckBox;

    const v0, 0x7f09011c

    .line 84
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mMore:Landroid/widget/ImageView;

    const v0, 0x7f090120

    .line 85
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mRankView:Landroid/widget/ImageView;

    .line 87
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mMore:Landroid/widget/ImageView;

    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder$2;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->isDownloadEnable(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 118
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mFavorite:Landroid/widget/CheckBox;

    const v0, 0x7f080253

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mFavorite:Landroid/widget/CheckBox;

    const v0, 0x7f080089

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 123
    :goto_0
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mFavorite:Landroid/widget/CheckBox;

    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder$3;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder$3;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method bindView(Ljava/lang/Object;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->t:Ljava/lang/Object;

    .line 142
    instance-of v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    const v1, 0x7f080215

    const v2, 0x7f080216

    const v3, 0x7f0800bb

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v0, :cond_6

    .line 144
    move-object v0, p1

    check-cast v0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    .line 146
    iget-object v6, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v6, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mChannelTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getChannelTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->isFavoriteVideo(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    .line 150
    iget-object v6, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mFavorite:Landroid/widget/CheckBox;

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object v6, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mFavorite:Landroid/widget/CheckBox;

    invoke-virtual {v6, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 155
    :goto_0
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getDuration()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 156
    iget-object v6, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mDuration:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getDuration()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 158
    :cond_1
    iget-object v6, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mDuration:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    :goto_1
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getViewCount()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 162
    iget-object v6, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mViewCount:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getViewCount()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " views"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 164
    :cond_2
    iget-object v6, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mDuration:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    :goto_2
    iget-object v6, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mRank:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getCurrentRanks()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getCurrentRanks()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    .line 170
    iget-object v6, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mRank:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr p2, v7

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_3
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getCurrentRanks()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getPreviousRanks()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 175
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getCurrentRanks()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 176
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getPreviousRanks()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr p2, v6

    if-lez p2, :cond_4

    .line 179
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mRankView:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 181
    :cond_4
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mRankView:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 185
    :cond_5
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mRankView:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    :goto_3
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;

    invoke-static {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getThumbnails()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mCover:Landroid/widget/ImageView;

    invoke-static {p2, v0, v6}, Lcom/floatingtunes/youtubeplayer/topmusic/util/ImageUtil;->loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 193
    :cond_6
    instance-of p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;

    if-eqz p2, :cond_a

    .line 195
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;

    .line 196
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mChannelTitle:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mViewCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->getViewCount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->getThumbnail()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    const-string v0, "="

    .line 202
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 203
    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string v0, " https:"

    .line 205
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 212
    :cond_7
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->getCurrentRanks()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->getPreviousRanks()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 213
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->getCurrentRanks()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 214
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->getPreviousRanks()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_8

    .line 217
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mRankView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 219
    :cond_8
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mRankView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 223
    :cond_9
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mRankView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 227
    :goto_4
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mRank:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->getCurrentRanks()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mDuration:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->mCover:Landroid/widget/ImageView;

    invoke-static {p1, p2, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/util/ImageUtil;->loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_a
    return-void
.end method
