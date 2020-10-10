.class public Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;
.super Landroidx/fragment/app/Fragment;
.source "SearchMain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;,
        Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$OnMainHistoryListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$OnMainHistoryListener;

.field private mQueryKey:Ljava/lang/String;

.field private mRecordAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;

.field mRvContent:Landroidx/recyclerview/widget/RecyclerView;

.field mSearchRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;",
            ">;"
        }
    .end annotation
.end field

.field unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;->mQueryKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;->mQueryKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;)Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$OnMainHistoryListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$OnMainHistoryListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;)Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;->mRecordAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;

    return-object p0
.end method

.method private initView()V
    .locals 3

    .line 69
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->getAllSearchRecords()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;->mSearchRecords:Ljava/util/List;

    .line 70
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;->mSearchRecords:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 71
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 72
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 73
    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$1;)V

    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;->mRecordAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;

    .line 74
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 75
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;->mRecordAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$RecordAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public static newInstance()Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;
    .locals 1

    .line 49
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 80
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$OnMainHistoryListener;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$OnMainHistoryListener;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0086

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 63
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;->unbinder:Lbutterknife/Unbinder;

    .line 64
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;->initView()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 96
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 97
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 90
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain$OnMainHistoryListener;

    return-void
.end method
