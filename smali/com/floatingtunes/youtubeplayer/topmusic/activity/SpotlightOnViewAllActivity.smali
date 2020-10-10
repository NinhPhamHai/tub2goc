.class public Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;
.super Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;
.source "SpotlightOnViewAllActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$LoadViewHolder;,
        Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$GenresHolder;,
        Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$DiscoverAdapter;
    }
.end annotation


# instance fields
.field public PAGE_TOKEN_END:Ljava/lang/String;

.field public final QUERY_MAX:I

.field firstGroup:Lcom/google/firebase/firestore/Query;

.field private isLoading:Z

.field mBtnRetry:Landroid/widget/Button;

.field public mCurrentPageToken:Ljava/lang/String;

.field mDiscoverAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$DiscoverAdapter;

.field mNetworkErrorLl:Landroid/widget/LinearLayout;

.field private mPlaylistBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;",
            ">;"
        }
    .end annotation
.end field

.field mProgressBar:Landroid/widget/ProgressBar;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field mToolBar:Landroidx/appcompat/widget/Toolbar;

.field nextGroup:Lcom/google/firebase/firestore/Query;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->mPlaylistBeanList:Ljava/util/List;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->isLoading:Z

    const-string v0, "end"

    .line 67
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->PAGE_TOKEN_END:Ljava/lang/String;

    const/16 v0, 0x14

    .line 69
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->QUERY_MAX:I

    return-void
.end method

.method static synthetic access$000(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->mPlaylistBeanList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->handleError()V

    return-void
.end method

.method static synthetic access$200(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->isLoading:Z

    return p0
.end method

.method static synthetic access$202(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->isLoading:Z

    return p1
.end method

.method static synthetic access$300(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->initRecyclerView()V

    return-void
.end method

.method static synthetic access$400(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->loadData()V

    return-void
.end method

.method private handleError()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->mNetworkErrorLl:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private initRecyclerView()V
    .locals 5

    .line 350
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->mDiscoverAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$DiscoverAdapter;

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$DiscoverAdapter;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$DiscoverAdapter;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->mDiscoverAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$DiscoverAdapter;

    .line 353
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/view/GridSpacingItemDecoration;

    const/4 v2, 0x2

    .line 354
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/view/GridSpacingItemDecoration;-><init>(IIZ)V

    .line 353
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 355
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->mDiscoverAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$DiscoverAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 356
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$2;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->PAGE_TOKEN_END:Ljava/lang/String;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->mCurrentPageToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->mDiscoverAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$DiscoverAdapter;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->mPlaylistBeanList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private loadData()V
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->mCurrentPageToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->PAGE_TOKEN_END:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 254
    :cond_0
    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    const-string v1, "music_db_201905"

    .line 257
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v1

    const-string v2, "mood"

    .line 258
    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v1

    const-string v2, "playlist_list"

    .line 259
    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/DocumentReference;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v1

    const-wide/16 v2, 0x14

    .line 260
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/firestore/Query;->limit(J)Lcom/google/firebase/firestore/Query;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/firestore/Query$Direction;->DESCENDING:Lcom/google/firebase/firestore/Query$Direction;

    const-string v3, "update_date"

    .line 261
    invoke-virtual {v1, v3, v2}, Lcom/google/firebase/firestore/Query;->orderBy(Ljava/lang/String;Lcom/google/firebase/firestore/Query$Direction;)Lcom/google/firebase/firestore/Query;

    move-result-object v1

    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->firstGroup:Lcom/google/firebase/firestore/Query;

    .line 264
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->nextGroup:Lcom/google/firebase/firestore/Query;

    if-nez v1, :cond_1

    .line 265
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->firstGroup:Lcom/google/firebase/firestore/Query;

    :cond_1
    const/4 v2, 0x1

    .line 270
    iput-boolean v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->isLoading:Z

    .line 272
    invoke-virtual {v1}, Lcom/google/firebase/firestore/Query;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    .line 273
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 73
    invoke-super {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0033

    .line 74
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 75
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 77
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->mToolBar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 78
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 79
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->mToolBar:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0801f1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 80
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const-string v1, "Mood"

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x2

    invoke-direct {p1, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 85
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 87
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 89
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->loadData()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 94
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 99
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onViewClicked()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->mNetworkErrorLl:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 116
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->loadData()V

    return-void
.end method
