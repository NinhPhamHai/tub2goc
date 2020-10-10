.class public Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;
.super Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;
.source "NewTopListActivity.java"


# instance fields
.field mAdContainer:Landroid/widget/LinearLayout;

.field mArtistList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;",
            ">;"
        }
    .end annotation
.end field

.field private mArtistListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ListItemListener;

.field mErrorView:Landroid/widget/LinearLayout;

.field mMusicBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;"
        }
    .end annotation
.end field

.field private mMusicItemListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;"
        }
    .end annotation
.end field

.field mRetry:Landroid/widget/Button;

.field mRvContent:Landroidx/recyclerview/widget/RecyclerView;

.field mToolbar:Landroidx/appcompat/widget/Toolbar;

.field progressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;-><init>()V

    .line 95
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity$1;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mMusicItemListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;

    .line 141
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity$2;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mArtistListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ListItemListener;

    return-void
.end method

.method static synthetic access$000(Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->initView()V

    return-void
.end method

.method public static actionStart(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    .line 89
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private initView()V
    .locals 6

    .line 273
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/data/DataModule;->getTopCountry()Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;

    move-result-object v0

    if-nez v0, :cond_0

    .line 274
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->loadErrorView()V

    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mErrorView:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 283
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "type"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "top_songs_list"

    .line 286
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 288
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/data/DataModule;->getTopCountry()Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->getTop_songs_list()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mMusicBeanList:Ljava/util/List;

    .line 289
    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mMusicBeanList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v3, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    iget-object v5, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mMusicItemListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;

    invoke-direct {v2, p0, v3, v1, v5}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;)V

    :cond_1
    const-string v3, "top_mv_list"

    .line 291
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 293
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/data/DataModule;->getTopCountry()Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->getTop_mv_list()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mMusicBeanList:Ljava/util/List;

    .line 294
    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mMusicBeanList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v3, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    iget-object v5, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mMusicItemListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;

    invoke-direct {v2, p0, v3, v1, v5}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;)V

    :cond_2
    const-string v3, "trending_mv_list"

    .line 296
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 297
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/data/DataModule;->getTopCountry()Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->getTrending_mv_list()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mMusicBeanList:Ljava/util/List;

    .line 298
    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mMusicBeanList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v3, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    iget-object v5, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mMusicItemListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;

    invoke-direct {v2, p0, v3, v1, v5}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;)V

    :cond_3
    const-string v3, "artist_list"

    .line 301
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 302
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/data/DataModule;->getTopCountry()Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->getArtist_list()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mArtistList:Ljava/util/List;

    .line 303
    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mArtistList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mArtistListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ListItemListener;

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ListItemListener;)V

    .line 308
    :cond_4
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 310
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 312
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 314
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private loadAd()V
    .locals 4

    .line 250
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner;-><init>()V

    .line 252
    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobConfig;->AD_NATIVE_SPLASH:Ljava/lang/String;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mAdContainer:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity$4;

    invoke-direct {v3, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity$4;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;)V

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner;->load(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AmListener;)V

    return-void
.end method

.method private loadErrorView()V
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mErrorView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 325
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->getTopCache()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->getCacheCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    :try_start_0
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 330
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->getTopCache()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity$5;

    invoke-direct {v2, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity$5;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;)V

    .line 331
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 330
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;

    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->getTop_songs_list()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->getTop_songs_list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 335
    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/data/DataModule;->setTopCountry(Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;)V

    .line 337
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->initView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 343
    :catch_0
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->reqCountry()V

    goto :goto_0

    .line 347
    :cond_0
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->reqCountry()V

    :cond_1
    :goto_0
    return-void
.end method

.method private reqCountry()V
    .locals 6

    .line 356
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mErrorView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 360
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/util/CountryUtil;->getCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://charts.youtube.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "global"

    .line 367
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "{\"context\":{\"client\":{\"clientName\":\"WEB_MUSIC_ANALYTICS\",\"clientVersion\":\"0.2\",\"hl\":\"en-us\",\"gl\":\"US\",\"experimentIds\":null,\"theme\":\"MUSIC\"},\"capabilities\":{},\"request\":{\"internalExperimentFlags\":[]}},\"browseId\":\"FEmusic_analytics_charts_home\",\"query\":\"chart_params_type=WEEK&perspective=CHART&flags=viral_video_chart&selected_chart=TRACKS&chart_params_id=weekly%3A0%3A0\"}"

    goto :goto_0

    .line 371
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

    .line 376
    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    .line 377
    invoke-static {v3, v2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 379
    new-instance v3, Lokhttp3/Headers$Builder;

    invoke-direct {v3}, Lokhttp3/Headers$Builder;-><init>()V

    const-string v4, "Host"

    const-string v5, "charts.youtube.com"

    .line 380
    invoke-virtual {v3, v4, v5}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    const-string v4, "User-Agent"

    const-string v5, "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0"

    .line 381
    invoke-virtual {v3, v4, v5}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    const-string v4, "Referer"

    .line 382
    invoke-virtual {v3, v4, v1}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    const-string v1, "Content-Type"

    const-string v4, "application/json"

    .line 383
    invoke-virtual {v3, v1, v4}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    const-string v1, "Cookie"

    const-string v4, "GPS=1; YSC=9OKhkPVA0P8; PREF=f1=50000000; VISITOR_INFO1_LIVE=tSZ04EdCFW0; _ga=GA1.2.291493040.1570763218; _gid=GA1.2.1137783504.1570763218; _gat=1"

    .line 384
    invoke-virtual {v3, v1, v4}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 385
    invoke-virtual {v3}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v1

    .line 387
    new-instance v3, Lokhttp3/OkHttpClient;

    invoke-direct {v3}, Lokhttp3/OkHttpClient;-><init>()V

    .line 388
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    const-string v5, "https://charts.youtube.com/youtubei/v1/browse?alt=json&key=AIzaSyCzEW7JUJdSql0-2V4tHUb6laYm4iAE_dM"

    .line 389
    invoke-virtual {v4, v5}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v5, "POST"

    .line 390
    invoke-virtual {v4, v5, v2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 391
    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    .line 392
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 394
    invoke-virtual {v3, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    .line 395
    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity$6;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 156
    invoke-super {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 157
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "artist_list"

    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0c001d

    .line 159
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    goto :goto_0

    :cond_0
    const v1, 0x7f0c0034

    .line 161
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    :goto_0
    const-string v1, "top_songs_list"

    .line 166
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f1102fc

    .line 167
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    const-string v2, "top_mv_list"

    .line 169
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v1, 0x7f1102fb

    .line 170
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string v2, "trending_mv_list"

    .line 172
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v1, 0x7f1102fd

    .line 173
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 175
    :cond_3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f1102fa

    .line 176
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 178
    :cond_4
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 180
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0801f1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 181
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 182
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 184
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mRetry:Landroid/widget/Button;

    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity$3;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity$3;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->initView()V

    .line 193
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->isFromFacebook(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 194
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->loadAd()V

    :cond_5
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 233
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000c

    .line 234
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09018a

    .line 235
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f090187

    .line 236
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 238
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "artist_list"

    .line 239
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 240
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 241
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 201
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_2

    const v1, 0x7f090187

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const v1, 0x7f09018a

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mMusicBeanList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 208
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->getQueueLab()Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->clearQueues()V

    .line 209
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mMusicBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 210
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 211
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->getQueueLab()Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;

    move-result-object v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-virtual {v1, v0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->addMusicListToQueue(Ljava/util/List;Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    .line 212
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-static {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->start(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mMusicBeanList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 219
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->getQueueLab()Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->clearQueues()V

    .line 220
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mMusicBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 221
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->getQueueLab()Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;

    move-result-object v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-virtual {v1, v0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->addMusicListToQueue(Ljava/util/List;Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    .line 222
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-static {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->start(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    goto :goto_0

    .line 203
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 227
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
