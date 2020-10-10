.class public Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;
.super Landroidx/fragment/app/Fragment;
.source "TopListFragment.java"


# static fields
.field public static ARGS_PLAYLIST_BEAN:Ljava/lang/String; = "playlistbean"


# instance fields
.field private LOAD_FROM_FIREBASE:Z

.field private QUERY_MAX:I

.field firstGroup:Lcom/google/firebase/firestore/Query;

.field private isLoading:Z

.field public mCurrentPageToken:Ljava/lang/String;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;"
        }
    .end annotation
.end field

.field mFirebaseFirestore:Lcom/google/firebase/firestore/FirebaseFirestore;

.field private mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;"
        }
    .end annotation
.end field

.field mNetworkErrorLl:Landroid/widget/LinearLayout;

.field private mNextPageUrl:Ljava/lang/String;

.field private mPlayListId:Ljava/lang/String;

.field private mPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

.field mProgressBar:Landroid/widget/ProgressBar;

.field mTopRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field nextGroup:Lcom/google/firebase/firestore/Query;

.field unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mDataList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mPlayListId:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->isLoading:Z

    const/16 v1, 0x32

    .line 93
    iput v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->QUERY_MAX:I

    .line 98
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->LOAD_FROM_FIREBASE:Z

    return-void
.end method

.method static synthetic access$000(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->loadData()V

    return-void
.end method

.method static synthetic access$300(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->isLoading:Z

    return p0
.end method

.method static synthetic access$302(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->isLoading:Z

    return p1
.end method

.method static synthetic access$400(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->QUERY_MAX:I

    return p0
.end method

.method static synthetic access$500(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mPlayListId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    return-object p0
.end method

.method static synthetic access$700(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->initRecyclerView()V

    return-void
.end method

.method static synthetic access$800(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mNextPageUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;Lorg/json/JSONObject;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->getDataList(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getDataList(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "simpleText"

    const-string v1, "contents"

    .line 597
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    const/4 v4, 0x0

    .line 598
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v4, v10, :cond_0

    .line 600
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "playlistVideoRenderer"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    :try_start_0
    const-string v11, "videoId"

    .line 603
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v11

    .line 605
    invoke-virtual {v11}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    :try_start_1
    const-string v11, "thumbnail"

    .line 609
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "thumbnails"

    .line 610
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 612
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "url"

    .line 613
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v11

    .line 615
    invoke-virtual {v11}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    :try_start_2
    const-string v11, "title"

    .line 619
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 620
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v11

    .line 622
    invoke-virtual {v11}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    :try_start_3
    const-string v11, "shortBylineText"

    .line 626
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "runs"

    .line 627
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-virtual {v11, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "text"

    .line 628
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v11

    .line 630
    invoke-virtual {v11}, Lorg/json/JSONException;->printStackTrace()V

    :goto_4
    :try_start_4
    const-string v11, "lengthText"

    .line 634
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 635
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    move-exception v10

    .line 637
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    :goto_5
    :try_start_5
    const-string v10, "continuations"

    .line 642
    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "nextContinuationData"

    .line 643
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "continuation"

    .line 644
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mNextPageUrl:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    .line 646
    :catch_5
    iput-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mNextPageUrl:Ljava/lang/String;

    .line 650
    :goto_6
    new-instance v10, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-direct {v10}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;-><init>()V

    .line 651
    invoke-virtual {v10, v5}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setTitle(Ljava/lang/String;)V

    .line 652
    invoke-virtual {v10, v6}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setChannelTitle(Ljava/lang/String;)V

    .line 653
    invoke-virtual {v10, v8}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setDuration(Ljava/lang/String;)V

    .line 654
    invoke-virtual {v10, v7}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setThumbnails(Ljava/lang/String;)V

    .line 655
    invoke-virtual {v10, v9}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->setVideoId(Ljava/lang/String;)V

    .line 657
    iget-object v11, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 660
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method private initRecyclerView()V
    .locals 4

    .line 197
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mTopRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$1;

    invoke-direct {v3, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    .line 246
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    const v1, 0x7f0c0047

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->setItemLayoutId(I)V

    .line 247
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->setEnableAd(ZI)V

    .line 248
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->setDataList(Ljava/util/List;)V

    .line 251
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 252
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 254
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mTopRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    .line 255
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 256
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mTopRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 257
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mTopRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$2;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->setDataList(Ljava/util/List;)V

    .line 291
    :cond_1
    :goto_0
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/retrofit/YConfig;->NO_MORE_PAGE:Ljava/lang/String;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mCurrentPageToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    if-eqz v0, :cond_2

    .line 294
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->getLoadingSate()Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    move-result-object v0

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;->NO_RESULT:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    if-eq v0, v1, :cond_2

    .line 295
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->setLoadingSate(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;)V

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    .line 302
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private loadData()V
    .locals 3

    .line 352
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->isFromFacebook(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 353
    iput-boolean v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->LOAD_FROM_FIREBASE:Z

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getMusicBeanList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getMusicBeanList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mDataList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getMusicBeanList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 359
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/retrofit/YConfig;->NO_MORE_PAGE:Ljava/lang/String;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mCurrentPageToken:Ljava/lang/String;

    .line 360
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->initRecyclerView()V

    return-void

    .line 365
    :cond_1
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/retrofit/YConfig;->NO_MORE_PAGE:Ljava/lang/String;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mCurrentPageToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 368
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->isLoading:Z

    .line 372
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "artist"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 373
    iput-boolean v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->LOAD_FROM_FIREBASE:Z

    .line 376
    :cond_3
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "search"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    .line 377
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "base_top_data"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 379
    :cond_4
    iput-boolean v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->LOAD_FROM_FIREBASE:Z

    .line 384
    :cond_5
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->LOAD_FROM_FIREBASE:Z

    if-eqz v0, :cond_6

    .line 385
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->loadDataFromServer()V

    goto :goto_0

    .line 387
    :cond_6
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mPlayListId:Ljava/lang/String;

    .line 388
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->loadDataFromYoutubeHTML()V

    :goto_0
    return-void
.end method

.method private loadDataFromServer()V
    .locals 3

    .line 396
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mCurrentPageToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/retrofit/YConfig;->NO_MORE_PAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 402
    :cond_0
    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mFirebaseFirestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 404
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mFirebaseFirestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v1, "music_db_201905"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    .line 405
    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v0

    const-string v1, "playlist_list"

    .line 406
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/DocumentReference;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mPlayListId:Ljava/lang/String;

    .line 407
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v0

    const-string v1, "video_list"

    .line 408
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/DocumentReference;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->QUERY_MAX:I

    int-to-long v1, v1

    .line 409
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/firestore/Query;->limit(J)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/firestore/Query$Direction;->DESCENDING:Lcom/google/firebase/firestore/Query$Direction;

    const-string v2, "date"

    .line 410
    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/Query;->orderBy(Ljava/lang/String;Lcom/google/firebase/firestore/Query$Direction;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->firstGroup:Lcom/google/firebase/firestore/Query;

    .line 413
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->nextGroup:Lcom/google/firebase/firestore/Query;

    if-nez v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->firstGroup:Lcom/google/firebase/firestore/Query;

    :cond_1
    const/4 v1, 0x1

    .line 419
    iput-boolean v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->isLoading:Z

    .line 421
    invoke-virtual {v0}, Lcom/google/firebase/firestore/Query;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$4;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$4;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)V

    .line 422
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private loadDataFromYoutubeHTML()V
    .locals 2

    const/4 v0, 0x1

    .line 490
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->isLoading:Z

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www.youtube.com/playlist?list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mPlayListId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 498
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mNextPageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www.youtube.com/browse_ajax?continuation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mNextPageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 503
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&pbj=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    :goto_0
    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)V

    invoke-static {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/net/OkHttpUtil;->request(Ljava/lang/String;Lokhttp3/Callback;)V

    return-void
.end method

.method public static newInstance(Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;)Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;
    .locals 2

    .line 102
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 103
    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->ARGS_PLAYLIST_BEAN:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 104
    new-instance p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;-><init>()V

    .line 105
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 112
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->ARGS_PLAYLIST_BEAN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    .line 118
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "spotlighton"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    .line 119
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mood"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mPlayListId:Ljava/lang/String;

    goto :goto_1

    .line 121
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mPlaylistBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mPlayListId:Ljava/lang/String;

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 p3, 0x0

    const v0, 0x7f0c008d

    .line 138
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 139
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->unbinder:Lbutterknife/Unbinder;

    .line 140
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 142
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->loadData()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 150
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 151
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method

.method public onViewClicked()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mNetworkErrorLl:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 344
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->loadData()V

    return-void
.end method

.method public playAllMusicOrder()V
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->getQueueLab()Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->clearQueues()V

    .line 167
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 168
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->getQueueLab()Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;

    move-result-object v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-virtual {v1, v0, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->addMusicListToQueue(Ljava/util/List;Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    .line 169
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-static {v1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->start(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    :cond_0
    return-void
.end method

.method public playAllMusicShuffle()V
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->getQueueLab()Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->clearQueues()V

    .line 184
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 185
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 186
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->getQueueLab()Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;

    move-result-object v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-virtual {v1, v0, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->addMusicListToQueue(Ljava/util/List;Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    .line 187
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-static {v1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->start(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    :cond_0
    return-void
.end method

.method public saveToMyMusic()V
    .locals 0

    return-void
.end method
