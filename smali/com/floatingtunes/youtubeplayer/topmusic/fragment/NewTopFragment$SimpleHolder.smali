.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NewTopFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleHolder"
.end annotation


# instance fields
.field itemName:Ljava/lang/String;

.field mCover:Landroid/widget/ImageView;

.field mDescription:Landroid/widget/TextView;

.field mDescription0:Landroid/widget/TextView;

.field mDescription2:Landroid/widget/TextView;

.field mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;Landroid/view/View;)V
    .locals 4

    .line 616
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    .line 617
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0902c8

    .line 618
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f090111

    .line 619
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->mCover:Landroid/widget/ImageView;

    const v0, 0x7f0902b1

    .line 621
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->mDescription:Landroid/widget/TextView;

    const v0, 0x7f0902b3

    .line 622
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->mDescription2:Landroid/widget/TextView;

    const v0, 0x7f0902b2

    .line 623
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->mDescription0:Landroid/widget/TextView;

    .line 625
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->mDescription0:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110317

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->access$700(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;)Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->getUpdate_time()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method bindView(I)V
    .locals 4

    .line 642
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->access$800(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->itemName:Ljava/lang/String;

    .line 643
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->itemName:Ljava/lang/String;

    const-string v0, "top_songs_list"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 645
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f1102fc

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 647
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->access$700(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;)Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->getTop_songs_list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    .line 648
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getThumbnails()Ljava/lang/String;

    move-result-object v1

    .line 649
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->itemName:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->access$900(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 650
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->mDescription2:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getChannelTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 653
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->topImages:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->mCover:Landroid/widget/ImageView;

    invoke-static {p1, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/util/ImageUtil;->loadImageFromAsset(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 655
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->mCover:Landroid/widget/ImageView;

    invoke-static {p1, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/util/ImageUtil;->loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 658
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->itemName:Ljava/lang/String;

    const-string v1, "top_mv_list"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 659
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f1102fb

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 661
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->access$700(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;)Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->getTop_mv_list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    .line 662
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getThumbnails()Ljava/lang/String;

    move-result-object v1

    .line 663
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->itemName:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->access$900(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 664
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 665
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->mDescription2:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getChannelTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 667
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->topImages:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->mCover:Landroid/widget/ImageView;

    invoke-static {p1, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/util/ImageUtil;->loadImageFromAsset(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1

    .line 669
    :cond_2
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->mCover:Landroid/widget/ImageView;

    invoke-static {p1, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/util/ImageUtil;->loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 673
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->itemName:Ljava/lang/String;

    const-string v1, "trending_mv_list"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 675
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f1102fd

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 677
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->access$700(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;)Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->getTrending_mv_list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    .line 678
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getThumbnails()Ljava/lang/String;

    move-result-object v1

    .line 679
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->itemName:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->access$900(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 680
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->mDescription2:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getChannelTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 683
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->topImages:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->mCover:Landroid/widget/ImageView;

    invoke-static {p1, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/util/ImageUtil;->loadImageFromAsset(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_2

    .line 685
    :cond_4
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->mCover:Landroid/widget/ImageView;

    invoke-static {p1, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/util/ImageUtil;->loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 688
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->itemName:Ljava/lang/String;

    const-string v1, "artist_list"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 690
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f1102fa

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 692
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->access$700(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;)Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->getArtist_list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;

    .line 693
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->getThumbnail()Ljava/lang/String;

    move-result-object v0

    .line 694
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->itemName:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->access$900(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 695
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->getViewCount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 697
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->mDescription2:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->getViewCount()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " views"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 700
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->topImages:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->mCover:Landroid/widget/ImageView;

    invoke-static {p1, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/util/ImageUtil;->loadImageFromAsset(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_3

    .line 702
    :cond_7
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->mCover:Landroid/widget/ImageView;

    invoke-static {p1, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/util/ImageUtil;->loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_8
    :goto_3
    return-void
.end method
