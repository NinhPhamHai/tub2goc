.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MissionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$RecoverHelper;,
        Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ChecksumTask;,
        Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderHeader;,
        Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALGORITHMS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClear:Landroid/view/MenuItem;

.field private mContext:Landroid/content/Context;

.field private mDeleter:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;

.field private mDownloadManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

.field private mEmptyMessage:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIterator:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;

.field private mLayout:I

.field private mPauseButton:Landroid/view/MenuItem;

.field private mPendingDownloadsItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRecover:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$RecoverHelper;

.field private mStartButton:Landroid/view/MenuItem;

.field private mUpdaterRunning:Z

.field private final rUpdater:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->ALGORITHMS:Landroid/util/SparseArray;

    .line 84
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->ALGORITHMS:Landroid/util/SparseArray;

    const v1, 0x7f090156

    const-string v2, "MD5"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->ALGORITHMS:Landroid/util/SparseArray;

    const v1, 0x7f090248

    const-string v2, "SHA1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;Landroid/view/View;)V
    .locals 1

    .line 102
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mPendingDownloadsItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 730
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mUpdaterRunning:Z

    .line 731
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/-$$Lambda$MissionAdapter$jpX_b2E_fHyPxF5WlPyrPFGGWNg;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/-$$Lambda$MissionAdapter$jpX_b2E_fHyPxF5WlPyrPFGGWNg;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->rUpdater:Ljava/lang/Runnable;

    .line 103
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mDownloadManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    const/4 p1, 0x0

    .line 105
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mDeleter:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;

    .line 107
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p1, 0x7f0c00c8

    .line 108
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mLayout:I

    .line 110
    new-instance p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mHandler:Landroid/os/Handler;

    .line 132
    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mEmptyMessage:Landroid/view/View;

    .line 134
    invoke-virtual {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->getIterator()Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mIterator:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;

    .line 136
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->checkEmptyMessageVisibility()V

    return-void
.end method

.method static synthetic access$000(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;Landroid/os/Message;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->onServiceMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;)Landroid/view/MenuItem;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mStartButton:Landroid/view/MenuItem;

    return-object p0
.end method

.method static synthetic access$200(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;)Landroid/view/MenuItem;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mPauseButton:Landroid/view/MenuItem;

    return-object p0
.end method

.method static synthetic access$300(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->checkMasterButtonsVisibility()V

    return-void
.end method

.method static synthetic access$400(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;)Landroid/content/Context;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;Landroid/view/MenuItem;)Z
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->handlePopupItem(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->viewWithFileProvider(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;)V

    return-void
.end method

.method private checkEmptyMessageVisibility()V
    .locals 2

    .line 677
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mIterator:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->getOldListSize()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 678
    :goto_0
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mEmptyMessage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mEmptyMessage:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private checkInvalidFile(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;)Z
    .locals 2

    .line 418
    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->existsAsFile()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 420
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f1101ef

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method private checkMasterButtonsVisibility()V
    .locals 3

    .line 682
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mIterator:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->hasValidPendingMissions()[Z

    move-result-object v0

    .line 684
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mStartButton:Landroid/view/MenuItem;

    const/4 v2, 0x0

    aget-boolean v2, v0, v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 685
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mPauseButton:Landroid/view/MenuItem;

    const/4 v2, 0x1

    aget-boolean v0, v0, v2

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private handlePopupItem(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;Landroid/view/MenuItem;)Z
    .locals 5

    .line 555
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    .line 556
    iget-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;

    instance-of v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const/4 v3, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_2

    .line 561
    :sswitch_0
    iget-object p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->status:Landroid/widget/TextView;

    const-string v1, "--.-%"

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    iput v3, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->state:I

    .line 563
    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->size:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->getLength()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility;->formatBytes(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mDownloadManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->resumeMission(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V

    return v2

    .line 583
    :sswitch_1
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->hasInvalidStorage()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 584
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mDownloadManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->tryRecover(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V

    .line 585
    iget-object p1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->isInvalid()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 586
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mRecover:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$RecoverHelper;

    invoke-interface {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$RecoverHelper;->tryRecover(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V

    goto :goto_1

    .line 588
    :cond_1
    invoke-virtual {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->recoverMission(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V

    :goto_1
    return v2

    .line 592
    :cond_2
    invoke-virtual {v0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->psContinue(Z)V

    return v2

    .line 577
    :sswitch_2
    iget-object p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->queue:Landroid/view/MenuItem;

    invoke-interface {p2}, Landroid/view/MenuItem;->isChecked()Z

    move-result p2

    xor-int/2addr p2, v2

    .line 578
    iget-object v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->queue:Landroid/view/MenuItem;

    invoke-interface {v1, p2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 579
    invoke-virtual {v0, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->setEnqueued(Z)V

    .line 580
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->updateProgress(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    return v2

    .line 567
    :sswitch_3
    iput v3, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->state:I

    .line 568
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mDownloadManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    invoke-virtual {p2, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->pauseMission(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V

    .line 569
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->updateProgress(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    const-wide/16 v0, -0x1

    .line 570
    iput-wide v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastTimeStamp:J

    .line 571
    iput-wide v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastDone:J

    return v2

    .line 574
    :sswitch_4
    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->showError(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V

    return v2

    .line 595
    :sswitch_5
    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->psContinue(Z)V

    return v1

    :cond_3
    :goto_2
    sparse-switch p2, :sswitch_data_1

    return v1

    .line 603
    :sswitch_6
    :try_start_0
    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;

    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->shareFile(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 605
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return v2

    .line 618
    :sswitch_7
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ChecksumTask;

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ChecksumTask;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    aput-object p1, v3, v1

    sget-object p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->ALGORITHMS:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v2

    .line 609
    :sswitch_8
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mDeleter:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;

    if-nez p2, :cond_4

    .line 610
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mDownloadManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;

    invoke-virtual {p2, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->deleteMission(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;)V

    goto :goto_4

    .line 612
    :cond_4
    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;

    invoke-virtual {p2, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->append(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;)V

    .line 614
    :goto_4
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->applyChanges()V

    return v2

    :sswitch_data_0
    .sparse-switch
        0x7f090054 -> :sswitch_5
        0x7f0900b3 -> :sswitch_4
        0x7f0901cb -> :sswitch_3
        0x7f0901e8 -> :sswitch_2
        0x7f090205 -> :sswitch_1
        0x7f090267 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x7f09008f -> :sswitch_8
        0x7f090156 -> :sswitch_7
        0x7f090186 -> :sswitch_6
        0x7f090248 -> :sswitch_7
    .end sparse-switch
.end method

.method private isNotFinite(Ljava/lang/Float;)Z
    .locals 1

    .line 767
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static synthetic lambda$jpX_b2E_fHyPxF5WlPyrPFGGWNg(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->updater()V

    return-void
.end method

.method static synthetic lambda$showError$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 532
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method private onServiceMessage(Landroid/os/Message;)V
    .locals 4

    .line 429
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    .line 430
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->setAutoRefresh(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 434
    :goto_0
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mPendingDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 435
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mPendingDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    .line 436
    iget-object v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;

    iget-object v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eq v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 438
    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 440
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->applyChanges()V

    return-void

    .line 444
    :cond_2
    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->updateProgress(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    :cond_3
    return-void
.end method

.method private static resolveMimeType(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;)Ljava/lang/String;
    .locals 3

    .line 403
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "application/octet-stream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 409
    :cond_0
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "*/*"

    if-nez p0, :cond_1

    return-object v0

    .line 412
    :cond_1
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    move-object p0, v0

    :cond_2
    return-object p0
.end method

.method private setAutoRefresh(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 738
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mUpdaterRunning:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    .line 739
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mUpdaterRunning:Z

    .line 740
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->updater()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 741
    iget-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mUpdaterRunning:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 742
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mUpdaterRunning:Z

    .line 743
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->rUpdater:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private shareFile(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;)V
    .locals 3

    .line 377
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->checkInvalidFile(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 379
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 380
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->resolveMimeType(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 381
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 384
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    .line 385
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/io/File;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    .line 388
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    const-string p1, "com.floatingtunes.youtubeplayer.topmusic.provider"

    .line 385
    invoke-static {v1, p1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 391
    :cond_1
    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getUri()Landroid/net/Uri;

    move-result-object p1

    :goto_0
    const-string v1, "android.intent.extra.STREAM"

    .line 395
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 397
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showError(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V
    .locals 6

    .line 453
    iget v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/16 v1, 0xcc

    const/16 v2, 0x258

    const/16 v3, 0x64

    const v4, 0x7f11016b

    const/4 v5, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0xce

    if-eq v0, v1, :cond_4

    const/16 v1, 0x194

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1a0

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    if-lt v0, v3, :cond_0

    if-ge v0, v2, :cond_0

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 508
    :cond_0
    iget-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    if-nez v0, :cond_1

    const-string v5, "(not_decelerated_error_code)"

    goto :goto_0

    .line 511
    :cond_1
    sget-object p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/UserAction;->DOWNLOAD_FAILED:Lcom/floatingtunes/youtubeplayer/topmusic/download/UserAction;

    invoke-direct {p0, v0, p1, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->showError(Ljava/lang/Exception;Lcom/floatingtunes/youtubeplayer/topmusic/download/UserAction;I)V

    return-void

    :pswitch_0
    const v4, 0x7f110130

    goto :goto_0

    :pswitch_1
    const v4, 0x7f11012d

    goto :goto_0

    :pswitch_2
    const v4, 0x7f110127

    goto :goto_0

    :pswitch_3
    const v4, 0x7f11012c

    goto :goto_0

    .line 491
    :pswitch_4
    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/UserAction;->DOWNLOAD_POSTPROCESSING:Lcom/floatingtunes/youtubeplayer/topmusic/download/UserAction;

    const v1, 0x7f11012b

    invoke-direct {p0, p1, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->showError(Ljava/lang/Exception;Lcom/floatingtunes/youtubeplayer/topmusic/download/UserAction;I)V

    return-void

    :pswitch_5
    const v4, 0x7f110121

    goto :goto_0

    :pswitch_6
    const v4, 0x7f110131

    goto :goto_0

    :pswitch_7
    const v4, 0x7f11012f

    goto :goto_0

    :pswitch_8
    const v4, 0x7f110240

    goto :goto_0

    .line 497
    :pswitch_9
    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/UserAction;->DOWNLOAD_FAILED:Lcom/floatingtunes/youtubeplayer/topmusic/download/UserAction;

    invoke-direct {p0, p1, v0, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->showError(Ljava/lang/Exception;Lcom/floatingtunes/youtubeplayer/topmusic/download/UserAction;I)V

    return-void

    :pswitch_a
    const v4, 0x7f110122

    goto :goto_0

    :pswitch_b
    const v4, 0x7f110129

    goto :goto_0

    :cond_2
    const v4, 0x7f110125

    goto :goto_0

    :cond_3
    const v4, 0x7f110124

    goto :goto_0

    :cond_4
    const v4, 0x7f110126

    goto :goto_0

    :cond_5
    const v4, 0x7f110123

    .line 517
    :goto_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v5, :cond_6

    .line 520
    invoke-virtual {v0, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_1

    .line 522
    :cond_6
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 525
    :goto_1
    iget-object v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    if-eqz v1, :cond_8

    iget v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errCode:I

    if-lt v1, v3, :cond_7

    if-lt v1, v2, :cond_8

    :cond_7
    const v1, 0x7f11012e

    .line 527
    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/-$$Lambda$MissionAdapter$uCy7JtYsA9U-Go6sadDy0kTMoJg;

    invoke-direct {v2, p0, p1, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/-$$Lambda$MissionAdapter$uCy7JtYsA9U-Go6sadDy0kTMoJg;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;I)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_8
    const v1, 0x104000a

    .line 532
    sget-object v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/-$$Lambda$MissionAdapter$5S1oSMKOULYuJtVkuEA-wzVl77o;->INSTANCE:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/-$$Lambda$MissionAdapter$5S1oSMKOULYuJtVkuEA-wzVl77o;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    .line 533
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 534
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 535
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showError(Ljava/lang/Exception;Lcom/floatingtunes/youtubeplayer/topmusic/download/UserAction;I)V
    .locals 0

    const-string p1, "Error happens"

    .line 539
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/ToastUtil;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method private updateProgress(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_16

    .line 234
    iget-object v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;

    if-eqz v2, :cond_16

    iget-object v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;

    instance-of v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/FinishedMission;

    if-eqz v2, :cond_0

    goto/16 :goto_a

    .line 236
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 237
    iget-object v4, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;

    iget-object v4, v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;

    check-cast v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    .line 239
    iget v5, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastCurrent:I

    iget v6, v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->current:I

    const-wide/16 v7, 0x0

    if-eq v5, v6, :cond_1

    .line 240
    iput v6, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastCurrent:I

    .line 241
    iput-wide v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastTimeStamp:J

    .line 242
    iput-wide v7, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastDone:J

    goto :goto_0

    .line 244
    :cond_1
    iget-wide v5, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastTimeStamp:J

    const-wide/16 v9, -0x1

    cmp-long v11, v5, v9

    if-nez v11, :cond_2

    iput-wide v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastTimeStamp:J

    .line 245
    :cond_2
    iget-wide v5, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastDone:J

    cmp-long v11, v5, v9

    if-nez v11, :cond_3

    iget-wide v5, v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->done:J

    iput-wide v5, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastDone:J

    .line 248
    :cond_3
    :goto_0
    iget-wide v5, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastTimeStamp:J

    sub-long v5, v2, v5

    .line 249
    iget-wide v9, v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->done:J

    iget-wide v11, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastDone:J

    sub-long/2addr v9, v11

    .line 250
    iget v11, v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errCode:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    const/4 v11, 0x1

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    .line 255
    :goto_1
    iget-object v12, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;

    if-nez v11, :cond_6

    invoke-virtual {v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->isInitialized()Z

    move-result v15

    if-eqz v15, :cond_5

    iget-boolean v15, v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->unknownLength:Z

    if-eqz v15, :cond_6

    :cond_5
    const/4 v15, 0x1

    goto :goto_2

    :cond_6
    const/4 v15, 0x0

    :goto_2
    invoke-virtual {v12, v15}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->setMarquee(Z)V

    .line 258
    iget-boolean v12, v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->unknownLength:Z

    if-eqz v12, :cond_7

    .line 260
    iget-object v15, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;

    const/4 v12, 0x0

    invoke-virtual {v15, v12}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->setProgress(F)V

    const/high16 v7, 0x7fc00000    # Float.NaN

    goto :goto_3

    .line 262
    :cond_7
    iget-wide v7, v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->done:J

    long-to-double v7, v7

    iget-wide v13, v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->length:J

    long-to-double v13, v13

    div-double/2addr v7, v13

    double-to-float v7, v7

    .line 263
    iget-object v8, v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    array-length v13, v8

    const/4 v14, 0x1

    if-le v13, v14, :cond_8

    iget v13, v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->current:I

    array-length v14, v8

    if-ge v13, v14, :cond_8

    .line 264
    array-length v14, v8

    int-to-float v14, v14

    div-float/2addr v7, v14

    int-to-float v13, v13

    array-length v8, v8

    int-to-float v8, v8

    div-float/2addr v13, v8

    add-float/2addr v7, v13

    :cond_8
    :goto_3
    if-eqz v11, :cond_a

    .line 269
    iget-object v8, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->isNotFinite(Ljava/lang/Float;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/high16 v7, 0x3f800000    # 1.0f

    :cond_9
    invoke-virtual {v8, v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->setProgress(F)V

    .line 270
    iget-object v7, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->status:Landroid/widget/TextView;

    const v8, 0x7f1101f6

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 271
    :cond_a
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->isNotFinite(Ljava/lang/Float;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 272
    iget-object v7, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->status:Landroid/widget/TextView;

    const-string v8, "--.-%"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    const/4 v12, 0x0

    goto :goto_5

    .line 274
    :cond_b
    iget-object v8, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->status:Landroid/widget/TextView;

    const/4 v11, 0x1

    new-array v13, v11, [Ljava/lang/Object;

    const/high16 v11, 0x42c80000    # 100.0f

    mul-float v11, v11, v7

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v13, v12

    const-string v11, "%.2f%%"

    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v8, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;

    invoke-virtual {v8, v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->setProgress(F)V

    .line 278
    :goto_5
    invoke-virtual {v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->getLength()J

    move-result-wide v7

    .line 281
    invoke-virtual {v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->isPsFailed()Z

    move-result v11

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-nez v11, :cond_f

    iget v11, v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errCode:I

    const/16 v12, 0x3f1

    if-ne v11, v12, :cond_c

    goto :goto_6

    .line 283
    :cond_c
    iget-boolean v11, v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z

    if-nez v11, :cond_e

    .line 284
    iget-boolean v11, v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->enqueued:Z

    if-eqz v11, :cond_d

    const/4 v11, 0x1

    goto :goto_7

    :cond_d
    const/4 v11, 0x2

    goto :goto_7

    .line 285
    :cond_e
    invoke-virtual {v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->isPsRunning()Z

    move-result v11

    if-eqz v11, :cond_f

    const/4 v11, 0x3

    goto :goto_7

    :cond_f
    :goto_6
    const/4 v11, 0x0

    :goto_7
    if-eqz v11, :cond_15

    .line 293
    iget v5, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->state:I

    if-eq v5, v11, :cond_13

    .line 295
    iput v11, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->state:I

    const/4 v2, 0x1

    if-eq v11, v2, :cond_12

    if-eq v11, v14, :cond_11

    if-eq v11, v13, :cond_10

    const-string v2, "?"

    goto :goto_8

    .line 305
    :cond_10
    iget-object v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f110260

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 302
    :cond_11
    iget-object v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f11023f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 299
    :cond_12
    iget-object v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f110274

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 312
    :goto_8
    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->size:Landroid/widget/TextView;

    invoke-static {v7, v8}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility;->formatBytes(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "  ("

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_13
    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    if-lez v5, :cond_14

    .line 314
    iput-wide v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastTimeStamp:J

    .line 315
    iget-wide v2, v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->done:J

    iput-wide v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastDone:J

    :cond_14
    :goto_9
    return-void

    :cond_15
    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-lez v13, :cond_16

    cmp-long v13, v5, v11

    if-lez v13, :cond_16

    long-to-float v9, v9

    const/high16 v10, 0x447a0000    # 1000.0f

    mul-float v9, v9, v10

    long-to-float v5, v5

    div-float/2addr v9, v5

    .line 324
    invoke-static {v9}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility;->formatSpeed(F)Ljava/lang/String;

    move-result-object v5

    .line 325
    invoke-static {v7, v8}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility;->formatBytes(J)Ljava/lang/String;

    move-result-object v6

    .line 327
    iget-object v7, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->size:Landroid/widget/TextView;

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iput-wide v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastTimeStamp:J

    .line 330
    iget-wide v2, v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->done:J

    iput-wide v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastDone:J

    :cond_16
    :goto_a
    return-void
.end method

.method private updater()V
    .locals 5

    .line 748
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mUpdaterRunning:Z

    if-nez v0, :cond_0

    return-void

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mPendingDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    .line 753
    iget-object v4, v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;

    iget-object v4, v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;

    check-cast v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-boolean v4, v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z

    if-nez v4, :cond_1

    goto :goto_0

    .line 755
    :cond_1
    invoke-direct {p0, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->updateProgress(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 760
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->rUpdater:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 762
    :cond_3
    iput-boolean v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mUpdaterRunning:Z

    :goto_1
    return-void
.end method

.method private viewWithFileProvider(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;)V
    .locals 3

    .line 335
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->checkInvalidFile(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 337
    :cond_0
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->resolveMimeType(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;)Ljava/lang/String;

    move-result-object v0

    .line 344
    iget-object v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 346
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/io/File;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    .line 349
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    const-string p1, "com.floatingtunes.youtubeplayer.topmusic.provider"

    .line 346
    invoke-static {v1, p1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 352
    :cond_1
    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getUri()Landroid/net/Uri;

    move-result-object p1

    .line 355
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    .line 356
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 358
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 360
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    const/16 v0, 0x80

    .line 361
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 363
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-gt v0, v2, :cond_3

    const/high16 v0, 0x10000000

    .line 364
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 369
    :cond_3
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 370
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 372
    :cond_4
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f1102f8

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method


# virtual methods
.method public applyChanges()V
    .locals 2

    .line 637
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mIterator:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->start()V

    .line 638
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mIterator:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 639
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mIterator:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->end()V

    .line 641
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->checkEmptyMessageVisibility()V

    .line 642
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mClear:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mIterator:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->hasFinishedMissions()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public clearFinishedDownloads()V
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mDownloadManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->forgetFinishedDownloads()V

    .line 551
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->applyChanges()V

    return-void
.end method

.method public deleterDispose(Z)V
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mDeleter:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->dispose(Z)V

    :cond_0
    return-void
.end method

.method public deleterLoad(Landroid/view/View;)V
    .locals 8

    .line 703
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mDeleter:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;

    if-nez v0, :cond_0

    .line 704
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mDownloadManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    iget-object v6, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mIterator:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;

    iget-object v7, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mHandler:Landroid/os/Handler;

    move-object v1, v0

    move-object v2, p1

    move-object v4, p0

    invoke-direct/range {v1 .. v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;-><init>(Landroid/view/View;Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mDeleter:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;

    :cond_0
    return-void
.end method

.method public deleterResume()V
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mDeleter:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->resume()V

    :cond_0
    return-void
.end method

.method public ensurePausedMissions()V
    .locals 4

    .line 689
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mPendingDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    .line 690
    iget-object v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;

    iget-object v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;

    check-cast v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-boolean v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 691
    :cond_0
    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->updateProgress(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    const-wide/16 v2, -0x1

    .line 692
    iput-wide v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastTimeStamp:J

    .line 693
    iput-wide v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastDone:J

    goto :goto_0

    :cond_1
    return-void
.end method

.method public forceUpdate()V
    .locals 4

    .line 646
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mIterator:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->start()V

    .line 647
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mIterator:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->end()V

    .line 649
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mPendingDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    const-wide/16 v2, -0x1

    .line 650
    iput-wide v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastTimeStamp:J

    goto :goto_0

    .line 653
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mIterator:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->getOldListSize()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mIterator:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->getSpecialAtItem(I)I

    move-result p1

    return p1
.end method

.method public getMessenger()Landroid/os/Handler;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public synthetic lambda$showError$0$MissionAdapter(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 528
    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    sget-object p3, Lcom/floatingtunes/youtubeplayer/topmusic/download/UserAction;->DOWNLOAD_FAILED:Lcom/floatingtunes/youtubeplayer/topmusic/download/UserAction;

    invoke-direct {p0, p1, p3, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->showError(Ljava/lang/Exception;Lcom/floatingtunes/youtubeplayer/topmusic/download/UserAction;I)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mIterator:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->getItem(I)Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;

    move-result-object p2

    .line 180
    instance-of v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderHeader;

    if-eqz v0, :cond_3

    .line 181
    iget p2, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;->special:I

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const p2, 0x7f1101f1

    goto :goto_0

    :cond_1
    const p2, 0x7f1101f0

    .line 187
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mClear:Landroid/view/MenuItem;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 190
    :cond_2
    :goto_0
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderHeader;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderHeader;->header:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 194
    :cond_3
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    .line 195
    iput-object p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;

    .line 197
    iget-object v0, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;

    iget-char v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->kind:C

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility;->getFileType(CLjava/lang/String;)Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;

    move-result-object v0

    .line 199
    iget-object v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->icon:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility;->getIconForFileType(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 200
    iget-object v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->name:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;

    iget-object v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility;->getBackgroundForFileType(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;)I

    move-result v2

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility;->getForegroundForFileType(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->setColors(II)V

    .line 204
    iget-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;

    instance-of v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    if-eqz v0, :cond_6

    .line 205
    iget-object p2, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;

    check-cast p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    .line 206
    invoke-virtual {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->getLength()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility;->formatBytes(J)Ljava/lang/String;

    move-result-object v0

    .line 207
    iget-boolean v1, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->isPsRunning()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --.- kB/s"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    :cond_4
    iget-object v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->size:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->pause:Landroid/view/MenuItem;

    iget-boolean v1, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->unknownLength:Z

    if-eqz v1, :cond_5

    const v1, 0x7f1102d7

    goto :goto_1

    :cond_5
    const v1, 0x7f11023b

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 211
    iget p2, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->current:I

    iput p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastCurrent:I

    .line 212
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->updateProgress(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    .line 213
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mPendingDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 215
    :cond_6
    iget-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->setMarquee(Z)V

    .line 216
    iget-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->status:Landroid/widget/TextView;

    const-string v1, "100%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->setProgress(F)V

    .line 218
    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->size:Landroid/widget/TextView;

    iget-object p2, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;

    iget-wide v0, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->length:J

    invoke-static {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility;->formatBytes(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 148
    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mLayout:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;Landroid/view/View;)V

    return-object p2

    .line 145
    :cond_0
    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderHeader;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c00cb

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderHeader;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onPaused()V
    .locals 1

    const/4 v0, 0x0

    .line 734
    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->setAutoRefresh(Z)V

    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .line 153
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 155
    instance-of v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderHeader;

    if-eqz v0, :cond_0

    return-void

    .line 156
    :cond_0
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    .line 158
    iget-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;

    instance-of v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mPendingDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mPendingDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_2

    .line 161
    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->setAutoRefresh(Z)V

    .line 162
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mStartButton:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mPauseButton:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 167
    :cond_2
    iget-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    const/4 v0, 0x0

    .line 168
    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;

    const-wide/16 v2, -0x1

    .line 169
    iput-wide v2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastTimeStamp:J

    .line 170
    iput-wide v2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastDone:J

    const/4 v0, -0x1

    .line 171
    iput v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastCurrent:I

    .line 172
    iput v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->state:I

    return-void
.end method

.method public recoverMission(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V
    .locals 6

    .line 712
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mPendingDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    .line 713
    iget-object v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;

    iget-object v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 715
    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 716
    invoke-virtual {p1, v3, v0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->resetState(ZZI)V

    .line 718
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->status:Landroid/widget/TextView;

    const-string v4, "--.-%"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 719
    iput v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->state:I

    .line 720
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->size:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->getLength()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility;->formatBytes(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;

    invoke-virtual {v0, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/ProgressDrawable;->setMarquee(Z)V

    .line 723
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mDownloadManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    invoke-virtual {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->resumeMission(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V

    :cond_1
    return-void
.end method

.method public setClearButton(Landroid/view/MenuItem;)V
    .locals 1

    .line 661
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mClear:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mIterator:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->hasFinishedMissions()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 664
    :cond_0
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mClear:Landroid/view/MenuItem;

    return-void
.end method

.method public setLinear(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f0c00c9

    goto :goto_0

    :cond_0
    const p1, 0x7f0c00c8

    .line 657
    :goto_0
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mLayout:I

    return-void
.end method

.method public setMasterButtons(Landroid/view/MenuItem;Landroid/view/MenuItem;)V
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mStartButton:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mPauseButton:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 670
    :goto_1
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mStartButton:Landroid/view/MenuItem;

    .line 671
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mPauseButton:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 673
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->checkMasterButtonsVisibility()V

    :cond_2
    return-void
.end method

.method public setRecover(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$RecoverHelper;)V
    .locals 0

    .line 771
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->mRecover:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter$RecoverHelper;

    return-void
.end method
