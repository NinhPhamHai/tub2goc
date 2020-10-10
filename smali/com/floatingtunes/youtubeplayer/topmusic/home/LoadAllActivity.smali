.class public Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;
.super Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;
.source "LoadAllActivity.java"


# static fields
.field private static PARAM_PLAYLIST_LIST:Ljava/lang/String; = "PLAY_LIST"

.field private static PARAM_TITLE:Ljava/lang/String; = "BAR_TITLE"


# instance fields
.field hasResult:Z

.field isLoading:Z

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;",
            ">;"
        }
    .end annotation
.end field

.field mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;",
            ">;"
        }
    .end annotation
.end field

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field mTitle:Ljava/lang/String;

.field mToolBar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->isLoading:Z

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->hasResult:Z

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->mDataList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->mDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->loadData()V

    return-void
.end method

.method private loadData()V
    .locals 5

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->isLoading:Z

    .line 153
    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 157
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 159
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->mDataList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;

    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;->getRank()Ljava/lang/Integer;

    move-result-object v2

    :cond_1
    const-string v3, "null"

    .line 163
    invoke-virtual {v1, v3}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v1

    iget-object v4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->mTitle:Ljava/lang/String;

    .line 164
    invoke-virtual {v1, v4}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v1

    .line 165
    invoke-virtual {v1, v3}, Lcom/google/firebase/firestore/DocumentReference;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v1

    const-wide/16 v3, 0xa

    .line 166
    invoke-virtual {v1, v3, v4}, Lcom/google/firebase/firestore/Query;->limit(J)Lcom/google/firebase/firestore/Query;

    move-result-object v1

    const-string v3, "rank"

    .line 167
    invoke-virtual {v1, v3}, Lcom/google/firebase/firestore/Query;->orderBy(Ljava/lang/String;)Lcom/google/firebase/firestore/Query;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 168
    invoke-virtual {v1, v0}, Lcom/google/firebase/firestore/Query;->startAfter([Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lcom/google/firebase/firestore/Query;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity$4;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity$4;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;)V

    .line 170
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 66
    invoke-super {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0022

    .line 67
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 68
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->PARAM_PLAYLIST_LIST:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->mDataList:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->PARAM_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->mTitle:Ljava/lang/String;

    .line 73
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->mToolBar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 74
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->mToolBar:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0801f1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 77
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->mTitle:Ljava/lang/String;

    const-string v1, "Activities"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0094

    goto :goto_0

    :cond_1
    const p1, 0x7f0c0093

    .line 86
    :goto_0
    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity$1;

    invoke-direct {v3, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;)V

    invoke-direct {v1, p0, v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;)V

    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    .line 110
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    invoke-virtual {v1, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->setItemLayoutId(I)V

    .line 111
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->setDataList(Ljava/util/List;)V

    .line 114
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x2

    invoke-direct {p1, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 116
    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity$2;

    invoke-direct {v2, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 123
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 124
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 125
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/view/LoadingGrid;

    .line 126
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700a9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-direct {v2, v1, v3, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/view/LoadingGrid;-><init>(IIZ)V

    .line 125
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 127
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity$3;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity$3;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 204
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 209
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
