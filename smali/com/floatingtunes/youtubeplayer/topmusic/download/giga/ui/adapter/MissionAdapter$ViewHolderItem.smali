.class Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MissionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolderItem"
.end annotation


# instance fields
.field cancel:Landroid/view/MenuItem;

.field checksum:Landroid/view/MenuItem;

.field delete:Landroid/view/MenuItem;

.field icon:Landroid/widget/ImageView;

.field item:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;

.field lastCurrent:I

.field lastDone:J

.field lastTimeStamp:J

.field name:Landroid/widget/TextView;

.field open:Landroid/view/MenuItem;

.field pause:Landroid/view/MenuItem;

.field popupMenu:Landroid/widget/PopupMenu;

.field progress:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;

.field queue:Landroid/view/MenuItem;

.field retry:Landroid/view/MenuItem;

.field showError:Landroid/view/MenuItem;

.field size:Landroid/widget/TextView;

.field source:Landroid/view/MenuItem;

.field start:Landroid/view/MenuItem;

.field state:I

.field status:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;Landroid/view/View;)V
    .locals 1

    .line 801
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;

    .line 802
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const-wide/16 p1, -0x1

    .line 796
    iput-wide p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastTimeStamp:J

    .line 797
    iput-wide p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastDone:J

    const/4 p1, -0x1

    .line 798
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastCurrent:I

    const/4 p1, 0x0

    .line 799
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->state:I

    .line 804
    new-instance p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;

    invoke-direct {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;-><init>()V

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;

    .line 805
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f090103

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 807
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f090108

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->status:Landroid/widget/TextView;

    .line 808
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f090106

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->name:Landroid/widget/TextView;

    .line 809
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f090104

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->icon:Landroid/widget/ImageView;

    .line 810
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f090107

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->size:Landroid/widget/TextView;

    .line 812
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->name:Landroid/widget/TextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 814
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f090105

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 815
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->buildPopup(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->popupMenu:Landroid/widget/PopupMenu;

    .line 816
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/-$$Lambda$MissionAdapter$ViewHolderItem$vDnHrudlQZu75Ab2xrVyHoz-xck;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/-$$Lambda$MissionAdapter$ViewHolderItem$vDnHrudlQZu75Ab2xrVyHoz-xck;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 818
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const v0, 0x7f090205

    .line 819
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->retry:Landroid/view/MenuItem;

    const v0, 0x7f090054

    .line 820
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->cancel:Landroid/view/MenuItem;

    const v0, 0x7f090267

    .line 821
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->start:Landroid/view/MenuItem;

    const v0, 0x7f0901cb

    .line 822
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->pause:Landroid/view/MenuItem;

    const v0, 0x7f090186

    .line 823
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->open:Landroid/view/MenuItem;

    const v0, 0x7f0901e8

    .line 824
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->queue:Landroid/view/MenuItem;

    const v0, 0x7f0900b3

    .line 825
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->showError:Landroid/view/MenuItem;

    const v0, 0x7f09008f

    .line 826
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->delete:Landroid/view/MenuItem;

    const v0, 0x7f09025b

    .line 827
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->source:Landroid/view/MenuItem;

    const v0, 0x7f090063

    .line 828
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->checksum:Landroid/view/MenuItem;

    .line 830
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 832
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/-$$Lambda$MissionAdapter$ViewHolderItem$_buHZxQrXX4DVZgiZHgM7xZfZIo;

    invoke-direct {p2, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/-$$Lambda$MissionAdapter$ViewHolderItem$_buHZxQrXX4DVZgiZHgM7xZfZIo;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 837
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/-$$Lambda$MissionAdapter$ViewHolderItem$qTlF94iYwCAYBDUQeut74rrR-t8;

    invoke-direct {p2, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/-$$Lambda$MissionAdapter$ViewHolderItem$qTlF94iYwCAYBDUQeut74rrR-t8;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private buildPopup(Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 2

    .line 903
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;

    invoke-static {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->access$400(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const p1, 0x7f0d0006

    .line 904
    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 905
    new-instance p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/-$$Lambda$MissionAdapter$ViewHolderItem$Z9rOKWwb7LT5vbAPE0zYspQXjPQ;

    invoke-direct {p1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/-$$Lambda$MissionAdapter$ViewHolderItem$Z9rOKWwb7LT5vbAPE0zYspQXjPQ;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    return-object v0
.end method

.method private showPopupMenu()V
    .locals 4

    .line 845
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->retry:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 846
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->cancel:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 847
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->start:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 848
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->pause:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 849
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->open:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 850
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->queue:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 851
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->showError:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 852
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->delete:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 853
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->source:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 854
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->checksum:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 856
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;

    instance-of v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 859
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->hasInvalidStorage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 860
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->retry:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 861
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->delete:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 862
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->showError:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 863
    :cond_1
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->isPsRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 864
    iget v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errCode:I

    const/16 v2, 0x3f1

    if-eq v0, v2, :cond_2

    const/16 v2, 0x3f2

    if-eq v0, v2, :cond_2

    goto :goto_1

    .line 867
    :cond_2
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->retry:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 868
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->cancel:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 869
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->showError:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 873
    :cond_3
    iget-boolean v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z

    if-eqz v2, :cond_4

    .line 874
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->pause:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 876
    :cond_4
    iget v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errCode:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 877
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->showError:Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 880
    :cond_5
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->queue:Landroid/view/MenuItem;

    iget-boolean v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->enqueued:Z

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 882
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->delete:Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 884
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->isPsFailed()Z

    move-result v0

    xor-int/2addr v0, v1

    .line 885
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->start:Landroid/view/MenuItem;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 886
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->queue:Landroid/view/MenuItem;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 890
    :cond_6
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->open:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 891
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->delete:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 892
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->checksum:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 895
    :goto_1
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->source:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 896
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->source:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 899
    :cond_7
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$buildPopup$3$MissionAdapter$ViewHolderItem(Landroid/view/MenuItem;)Z
    .locals 1

    .line 905
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;

    invoke-static {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->access$500(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$new$0$MissionAdapter$ViewHolderItem(Landroid/view/View;)V
    .locals 0

    .line 816
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->showPopupMenu()V

    return-void
.end method

.method public synthetic lambda$new$1$MissionAdapter$ViewHolderItem(Landroid/view/View;)V
    .locals 1

    .line 833
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;

    instance-of v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/FinishedMission;

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;

    invoke-static {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->access$600(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$2$MissionAdapter$ViewHolderItem(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    .line 838
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 839
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->showPopupMenu()V

    const/4 p1, 0x1

    return p1
.end method
