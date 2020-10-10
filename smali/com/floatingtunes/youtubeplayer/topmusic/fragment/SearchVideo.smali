.class public Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;
.super Lcom/floatingtunes/youtubeplayer/topmusic/fragment/BaseFragment;
.source "SearchVideo.java"


# instance fields
.field private isLoading:Z

.field private mCurrentPageToken:Ljava/lang/String;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;"
        }
    .end annotation
.end field

.field mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;"
        }
    .end annotation
.end field

.field mProgressBar:Landroid/widget/ProgressBar;

.field mQueryKey:Ljava/lang/String;

.field mRvContent:Landroidx/recyclerview/widget/RecyclerView;

.field public page:I

.field unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/BaseFragment;-><init>()V

    const-string v0, ""

    .line 71
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->mCurrentPageToken:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->mDataList:Ljava/util/List;

    const/4 v0, 0x1

    .line 117
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->page:I

    return-void
.end method

.method static synthetic access$000(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;Ljava/lang/Throwable;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->loadingErrorPrompt(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;)Ljava/util/List;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->mDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->isLoading:Z

    return p0
.end method

.method static synthetic access$202(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->isLoading:Z

    return p1
.end method

.method static synthetic access$300(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->initRecyclerView()V

    return-void
.end method

.method static synthetic access$402(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->mCurrentPageToken:Ljava/lang/String;

    return-object p1
.end method

.method private initRecyclerView()V
    .locals 4

    .line 279
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$2;

    invoke-direct {v3, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    .line 324
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    const v1, 0x7f0c0047

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->setItemLayoutId(I)V

    .line 325
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->setEnableAd(ZI)V

    .line 326
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->mDataList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->setDataList(Ljava/util/List;)V

    .line 329
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 330
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 331
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    .line 332
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 333
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 334
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$3;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$3;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->mDataList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->setDataList(Ljava/util/List;)V

    .line 368
    :cond_1
    :goto_0
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/retrofit/YConfig;->NO_MORE_PAGE:Ljava/lang/String;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->mCurrentPageToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    if-eqz v0, :cond_2

    .line 371
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->getLoadingSate()Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    move-result-object v0

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;->NO_RESULT:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    if-eq v0, v1, :cond_2

    .line 372
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->setLoadingSate(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;)V

    .line 378
    :cond_2
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    .line 379
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private loadYOUTUBE()V
    .locals 5

    .line 123
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->mQueryKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->mQueryKey:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->mQueryKey:Ljava/lang/String;

    const-string v1, " "

    const-string v2, "+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->mQueryKey:Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www.youtube.com/results?search_query="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->mQueryKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&pbj=1&page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    .line 130
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    .line 131
    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v3, "User-Agent"

    const-string v4, "Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101 Firefox/68.0"

    .line 132
    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v3, "X-YouTube-Client-Name"

    const-string v4, "1"

    .line 136
    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v3, "X-YouTube-Client-Version"

    const-string v4, "2.20200214.04.00"

    .line 137
    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 138
    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 139
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 141
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$1;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method private loadingErrorPrompt(Ljava/lang/Throwable;)V
    .locals 1

    .line 386
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 387
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$4;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$4;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;
    .locals 3

    .line 82
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;-><init>()V

    .line 83
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ARG_QUERY_KEY"

    .line 84
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public fetchData()V
    .locals 0

    .line 413
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->loadAllResult()V

    return-void
.end method

.method public loadAllResult()V
    .locals 1

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->isLoading:Z

    .line 112
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->loadYOUTUBE()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 91
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ARG_QUERY_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->mQueryKey:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0084

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 101
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->unbinder:Lbutterknife/Unbinder;

    .line 102
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->mDataList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    return-object p1
.end method
