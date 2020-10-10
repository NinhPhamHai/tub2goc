.class public Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;
.super Landroidx/fragment/app/Fragment;
.source "NewTopFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;,
        Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$CuratedHolder;,
        Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleListAdapter;,
        Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter;
    }
.end annotation


# instance fields
.field private countryPicker:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;

.field private isForceLoad:Z

.field private isLoading:Z

.field private mCuratedPlaylist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;",
            ">;"
        }
    .end annotation
.end field

.field mLoadingView:Landroid/view/View;

.field mRvContent:Landroidx/recyclerview/widget/RecyclerView;

.field private mStringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private mTopCountry:Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;

.field mTopList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;",
            ">;"
        }
    .end annotation
.end field

.field topArrays:[Ljava/lang/String;

.field topImages:[Ljava/lang/String;

.field topTitles:[Ljava/lang/String;

.field unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 115
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 93
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mStringMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->isForceLoad:Z

    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->isLoading:Z

    const-string v0, "PLFgquLnL59alW3xmYiWRaoz0oM3H17Lth"

    const-string v1, "PLFgquLnL59alCl_2TQvOiD5Vgm1hCaGSI"

    const-string v2, "PLFgquLnL59akA2PflFpeQG9L01VFg90wS"

    const-string v3, "PLFgquLnL59ak5gmnz28ZiMd59ryeTPXjT"

    .line 97
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->topArrays:[Ljava/lang/String;

    const-string v0, "top_song.webp"

    const-string v1, "top_mv.webp"

    const-string v2, "top_trend.webp"

    const-string v3, "top_artist.webp"

    .line 103
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->topImages:[Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mCuratedPlaylist:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->isLoading:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->loadFbUserView()V

    return-void
.end method

.method static synthetic access$102(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;Z)Z
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->isForceLoad:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->loadNormalUserView()V

    return-void
.end method

.method static synthetic access$200(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->startLoadData()V

    return-void
.end method

.method static synthetic access$300(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->showCountryDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;)Ljava/util/List;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mCuratedPlaylist:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;)Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mTopCountry:Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;

    return-object p0
.end method

.method static synthetic access$800(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;)Ljava/util/Map;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mStringMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$900(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->processThumbnail(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initData()V
    .locals 7

    const/4 v0, 0x4

    .line 121
    new-array v0, v0, [Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1102fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1102fb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f1102fd

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f1102fa

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->topTitles:[Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mTopList:Ljava/util/List;

    .line 130
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;-><init>()V

    .line 131
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->topArrays:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setId(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->topTitles:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setTitle(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->topImages:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setThumbnail(Ljava/lang/String;)V

    const-string v1, "base_top_data"

    .line 134
    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setType(Ljava/lang/String;)V

    .line 135
    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-direct {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;-><init>()V

    .line 136
    iget-object v6, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->topArrays:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v2, v6}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setId(Ljava/lang/String;)V

    .line 137
    iget-object v6, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->topTitles:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v2, v6}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setTitle(Ljava/lang/String;)V

    .line 138
    iget-object v6, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->topImages:[Ljava/lang/String;

    aget-object v3, v6, v3

    invoke-virtual {v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setThumbnail(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v2, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setType(Ljava/lang/String;)V

    .line 140
    new-instance v3, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-direct {v3}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;-><init>()V

    .line 141
    iget-object v6, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->topArrays:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v3, v6}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setId(Ljava/lang/String;)V

    .line 142
    iget-object v6, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->topTitles:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v3, v6}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setTitle(Ljava/lang/String;)V

    .line 143
    iget-object v6, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->topImages:[Ljava/lang/String;

    aget-object v4, v6, v4

    invoke-virtual {v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setThumbnail(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v3, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setType(Ljava/lang/String;)V

    .line 145
    new-instance v4, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-direct {v4}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;-><init>()V

    .line 146
    iget-object v6, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->topArrays:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v4, v6}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setId(Ljava/lang/String;)V

    .line 147
    iget-object v6, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->topTitles:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v4, v6}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setTitle(Ljava/lang/String;)V

    .line 148
    iget-object v6, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->topImages:[Ljava/lang/String;

    aget-object v5, v6, v5

    invoke-virtual {v4, v5}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setThumbnail(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v4, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setType(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mTopList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mTopList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mTopList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mTopList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$1;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method private initLocalCuratedPlaylist()V
    .locals 7

    .line 181
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/util/CuratedPlaylist;->CURATED_DATA:Ljava/lang/String;

    .line 183
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 184
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 186
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    .line 188
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "playlistId"

    .line 189
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "thumbnail"

    .line 190
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "description"

    .line 191
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 193
    new-instance v6, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-direct {v6}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;-><init>()V

    .line 194
    invoke-virtual {v6, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setTitle(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v6, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setId(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v6, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setDescription(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v6, v5}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setThumbnail(Ljava/lang/String;)V

    const-string v2, "base_top_data"

    .line 198
    invoke-virtual {v6, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->setType(Ljava/lang/String;)V

    .line 200
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mCuratedPlaylist:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 204
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private loadFbUserView()V
    .locals 7

    .line 391
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 394
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->isLoading:Z

    .line 395
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 396
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mLoadingView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 397
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 399
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 401
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 403
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 406
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/data/DataModule;->getTopCountry()Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;

    move-result-object v1

    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mTopCountry:Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;

    .line 408
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mTopCountry:Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->getTop_songs_list()Ljava/util/List;

    move-result-object v1

    .line 409
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mTopCountry:Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;

    invoke-virtual {v3}, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->getTop_mv_list()Ljava/util/List;

    move-result-object v3

    .line 410
    iget-object v4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mTopCountry:Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;

    invoke-virtual {v4}, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->getTrending_mv_list()Ljava/util/List;

    move-result-object v4

    .line 411
    iget-object v5, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mTopCountry:Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;

    invoke-virtual {v5}, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->getArtist_list()Ljava/util/List;

    move-result-object v5

    if-eqz v1, :cond_1

    .line 414
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 416
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mStringMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "top_songs_list"

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_1
    if-eqz v3, :cond_2

    .line 418
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 420
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mStringMap:Ljava/util/Map;

    add-int/lit8 v2, v0, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "top_mv_list"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v4, :cond_3

    .line 422
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 424
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mStringMap:Ljava/util/Map;

    add-int/lit8 v2, v0, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "trending_mv_list"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v5, :cond_4

    .line 426
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 428
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mStringMap:Ljava/util/Map;

    add-int/lit8 v2, v0, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "artist_list"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    :cond_4
    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleListAdapter;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;Landroid/content/Context;I)V

    .line 433
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private loadNormalUserView()V
    .locals 3

    const/4 v0, 0x0

    .line 372
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->isLoading:Z

    .line 373
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 374
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mLoadingView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 375
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 377
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 379
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 381
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 383
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$1;)V

    .line 385
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 387
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->setLastRefreshTime(Landroid/content/Context;J)V

    return-void
.end method

.method private processThumbnail(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string p2, "w720-h405-p-l90-rj"

    if-eqz p1, :cond_1

    const-string v0, "w64-h36-p-l90-rj"

    .line 716
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 717
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "w64-h36-l90-rj"

    .line 720
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 721
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 728
    :cond_1
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "="

    .line 729
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    .line 730
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-object p1
.end method

.method private reqCountry()V
    .locals 6

    .line 742
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->setLastRefreshTime(Landroid/content/Context;J)V

    .line 744
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/util/CountryUtil;->getCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 746
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://charts.youtube.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "global"

    .line 751
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "{\"context\":{\"client\":{\"clientName\":\"WEB_MUSIC_ANALYTICS\",\"clientVersion\":\"0.2\",\"hl\":\"en-us\",\"gl\":\"US\",\"experimentIds\":null,\"theme\":\"MUSIC\"},\"capabilities\":{},\"request\":{\"internalExperimentFlags\":[]}},\"browseId\":\"FEmusic_analytics_charts_home\",\"query\":\"chart_params_type=WEEK&perspective=CHART&flags=viral_video_chart&selected_chart=TRACKS&chart_params_id=weekly%3A0%3A0\"}"

    goto :goto_0

    .line 755
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{\"context\":{\"client\":{\"clientName\":\"WEB_MUSIC_ANALYTICS\",\"clientVersion\":\"0.2\",\"hl\":\"en-us\",\"gl\":\"US\",\"experimentIds\":null,\"theme\":\"MUSIC\"},\"capabilities\":{},\"request\":{\"internalExperimentFlags\":[]}},\"browseId\":\"FEmusic_analytics_charts_home\",\"query\":\"chart_params_type=WEEK&perspective=CHART&flags=viral_video_chart&selected_chart=TRACKS&chart_params_id=weekly%3A0%3A0%3A"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "application/json; charset=utf-8"

    .line 760
    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    .line 761
    invoke-static {v3, v2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 763
    new-instance v3, Lokhttp3/Headers$Builder;

    invoke-direct {v3}, Lokhttp3/Headers$Builder;-><init>()V

    const-string v4, "Host"

    const-string v5, "charts.youtube.com"

    .line 764
    invoke-virtual {v3, v4, v5}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    const-string v4, "User-Agent"

    const-string v5, "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0"

    .line 765
    invoke-virtual {v3, v4, v5}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    const-string v4, "Referer"

    .line 766
    invoke-virtual {v3, v4, v1}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    const-string v1, "Content-Type"

    const-string v4, "application/json"

    .line 767
    invoke-virtual {v3, v1, v4}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    const-string v1, "Cookie"

    const-string v4, "GPS=1; YSC=9OKhkPVA0P8; PREF=f1=50000000; VISITOR_INFO1_LIVE=tSZ04EdCFW0; _ga=GA1.2.291493040.1570763218; _gid=GA1.2.1137783504.1570763218; _gat=1"

    .line 768
    invoke-virtual {v3, v1, v4}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 769
    invoke-virtual {v3}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v1

    .line 771
    new-instance v3, Lokhttp3/OkHttpClient;

    invoke-direct {v3}, Lokhttp3/OkHttpClient;-><init>()V

    .line 772
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    const-string v5, "https://charts.youtube.com/youtubei/v1/browse?alt=json&key=AIzaSyCzEW7JUJdSql0-2V4tHUb6laYm4iAE_dM"

    .line 773
    invoke-virtual {v4, v5}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v5, "POST"

    .line 774
    invoke-virtual {v4, v5, v2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 775
    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    .line 776
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 780
    invoke-virtual {v3, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    .line 781
    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$7;

    invoke-direct {v2, p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$7;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method private showCountryDialog()V
    .locals 2

    .line 338
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;-><init>()V

    .line 339
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;->with(Landroid/content/Context;)Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$5;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$5;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;)V

    .line 340
    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;->listener(Lcom/floatingtunes/youtubeplayer/topmusic/country/listeners/OnCountryPickerListener;)Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;

    const/4 v1, 0x1

    .line 350
    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;->canSearch(Z)Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;

    .line 351
    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;->sortBy(I)Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;

    .line 353
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;->build()Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->countryPicker:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;

    .line 354
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->countryPicker:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->showDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    .line 356
    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$6;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$6;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 364
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showToastDialog()V
    .locals 2

    .line 313
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1102a8

    .line 314
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    const v1, 0x7f1100a9

    .line 315
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    const v1, 0x7f1100e0

    .line 316
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    const v1, 0x7f1100df

    .line 317
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    const/4 v1, 0x0

    .line 318
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$4;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$4;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;)V

    .line 319
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$3;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$3;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;)V

    .line 325
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNegative(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 332
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method private startLoadData()V
    .locals 3

    .line 260
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->isLoading:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 263
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->isLoading:Z

    .line 265
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mLoadingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 268
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->isFromFacebook(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 270
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->isForceLoad:Z

    if-eqz v0, :cond_1

    .line 271
    iput-boolean v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->isForceLoad:Z

    .line 272
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->reqCountry()V

    return-void

    .line 276
    :cond_1
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->getTopCache()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->getCacheCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    :try_start_0
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 281
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->getTopCache()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$2;

    invoke-direct {v2, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;)V

    .line 282
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 281
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;

    if-eqz v0, :cond_4

    .line 284
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->getTop_songs_list()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->getTop_songs_list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 286
    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/data/DataModule;->setTopCountry(Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;)V

    .line 288
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->loadFbUserView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    :catch_0
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->reqCountry()V

    goto :goto_0

    .line 298
    :cond_2
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->reqCountry()V

    goto :goto_0

    .line 303
    :cond_3
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->loadNormalUserView()V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public countryNotice(Lcom/floatingtunes/youtubeplayer/topmusic/bus/FBEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 237
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->isFromFacebook(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 238
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->isCountrySet()Z

    move-result p1

    if-nez p1, :cond_0

    .line 239
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->showToastDialog()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00d0

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 216
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->unbinder:Lbutterknife/Unbinder;

    .line 217
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 218
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->initData()V

    .line 219
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->initLocalCuratedPlaylist()V

    .line 221
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->isFromFacebook(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 222
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->isCountrySet()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->startLoadData()V

    goto :goto_0

    .line 225
    :cond_0
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->showToastDialog()V

    goto :goto_0

    .line 228
    :cond_1
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->startLoadData()V

    :goto_0
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 824
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 825
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    .line 827
    :try_start_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 829
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 248
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 250
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->isUserCountryChange()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 251
    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->setUserCountryChange(Z)V

    const/4 v0, 0x1

    .line 252
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->isForceLoad:Z

    .line 253
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->startLoadData()V

    :cond_0
    return-void
.end method
