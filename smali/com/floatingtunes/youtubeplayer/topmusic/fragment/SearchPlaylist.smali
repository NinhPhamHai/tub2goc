.class public Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;
.super Lcom/floatingtunes/youtubeplayer/topmusic/fragment/BaseFragment;
.source "SearchPlaylist.java"


# instance fields
.field private isLoading:Z

.field private mCurrentPageToken:Ljava/lang/String;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;",
            ">;"
        }
    .end annotation
.end field

.field mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;",
            ">;"
        }
    .end annotation
.end field

.field mProgressBar:Landroid/widget/ProgressBar;

.field mQueryKey:Ljava/lang/String;

.field mRvContent:Landroidx/recyclerview/widget/RecyclerView;

.field private page:I

.field unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/BaseFragment;-><init>()V

    const-string v0, ""

    .line 66
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->mCurrentPageToken:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->mDataList:Ljava/util/List;

    const/4 v0, 0x1

    .line 112
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->page:I

    return-void
.end method

.method static synthetic access$000(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;Ljava/lang/Throwable;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->loadingErrorPrompt(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;)Ljava/util/List;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->mDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->mCurrentPageToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->isLoading:Z

    return p0
.end method

.method static synthetic access$302(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->isLoading:Z

    return p1
.end method

.method static synthetic access$400(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->initRecyclerView()V

    return-void
.end method

.method static synthetic access$500(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->page:I

    return p0
.end method

.method static synthetic access$508(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;)I
    .locals 2

    .line 52
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->page:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->page:I

    return v0
.end method

.method private initRecyclerView()V
    .locals 4

    .line 243
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$2;

    invoke-direct {v3, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    .line 273
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    const v1, 0x7f0c00fb

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->setItemLayoutId(I)V

    .line 274
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->setEnableAd(ZI)V

    .line 275
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->mDataList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->setDataList(Ljava/util/List;)V

    .line 278
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 279
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 280
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    .line 281
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 282
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 283
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$3;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$3;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    .line 314
    :cond_0
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->mDataList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->setDataList(Ljava/util/List;)V

    .line 317
    :cond_1
    :goto_0
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/retrofit/YConfig;->NO_MORE_PAGE:Ljava/lang/String;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->mCurrentPageToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    if-eqz v0, :cond_2

    .line 320
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->getLoadingSate()Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    move-result-object v0

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;->NO_RESULT:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    if-eq v0, v1, :cond_2

    .line 321
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->setLoadingSate(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;)V

    .line 327
    :cond_2
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    .line 328
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private loadYOUTUBE()V
    .locals 5

    .line 118
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->mQueryKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->mQueryKey:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->mQueryKey:Ljava/lang/String;

    const-string v1, " "

    const-string v2, "+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->mQueryKey:Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www.youtube.com/results?search_query="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->mQueryKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&amp;sp=EgIQAw%253D%253D&amp;pbj=1&amp;page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadYOUTUBE: req playlist url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SearchPlaylist"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    .line 128
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    .line 129
    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v3, "User-Agent"

    const-string v4, "Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101 Firefox/68.0"

    .line 130
    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v3, "X-YouTube-Client-Name"

    const-string v4, "1"

    .line 134
    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v3, "X-YouTube-Client-Version"

    const-string v4, "2.20200214.04.00"

    .line 135
    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 136
    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 137
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 139
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$1;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method private loadingErrorPrompt(Ljava/lang/Throwable;)V
    .locals 1

    .line 335
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 336
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$4;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$4;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;
    .locals 3

    .line 77
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;-><init>()V

    .line 78
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ARG_QUERY_KEY"

    .line 79
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public fetchData()V
    .locals 0

    .line 362
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->loadAllResult()V

    return-void
.end method

.method public loadAllResult()V
    .locals 1

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->isLoading:Z

    .line 107
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->loadYOUTUBE()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ARG_QUERY_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->mQueryKey:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0084

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 96
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->unbinder:Lbutterknife/Unbinder;

    .line 97
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->mDataList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    return-object p1
.end method
