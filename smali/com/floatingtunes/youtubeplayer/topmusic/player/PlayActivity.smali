.class public Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PlayActivity.java"

# interfaces
.implements Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog$Listener;


# static fields
.field private static STEP:I


# instance fields
.field adContainer:Landroid/widget/LinearLayout;

.field layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field mAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter;

.field mBound:Z

.field mBtnDown:Landroid/widget/ImageButton;

.field mBtnFavourite:Landroid/widget/ImageView;

.field mBtnNext:Landroid/widget/ImageButton;

.field mBtnOptions:Landroid/widget/ImageButton;

.field mBtnPlay:Landroid/widget/ImageButton;

.field mBtnPlaymode:Landroid/widget/ImageButton;

.field mBtnPrevious:Landroid/widget/ImageButton;

.field private mConnection:Landroid/content/ServiceConnection;

.field mDurationEnd:Landroid/widget/TextView;

.field mDurationStart:Landroid/widget/TextView;

.field mPlayerContainer:Landroid/widget/FrameLayout;

.field mPlayerCover:Landroid/widget/LinearLayout;

.field mRootParent:Landroid/widget/LinearLayout;

.field mRvSongList:Landroidx/recyclerview/widget/RecyclerView;

.field mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

.field mToolBar:Landroidx/appcompat/widget/Toolbar;

.field mTvAlbum:Landroid/widget/TextView;

.field mTvSongName:Landroid/widget/TextView;

.field mVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

.field mVideoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;"
        }
    .end annotation
.end field

.field mYTService:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBound:Z

    .line 150
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->getQueueLab()Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->getQueues()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mVideoList:Ljava/util/List;

    .line 256
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$4;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$4;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 79
    sget v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->STEP:I

    return v0
.end method

.method static synthetic access$008()I
    .locals 2

    .line 79
    sget v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->STEP:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->STEP:I

    return v0
.end method

.method public static actionStart(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ARG_VIDEO"

    .line 131
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 132
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x20000000

    .line 133
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 135
    invoke-static {p0, p1, v0, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 137
    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 139
    invoke-virtual {p0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private initRecyclerView()V
    .locals 4

    .line 640
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 641
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 642
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mRvSongList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 643
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mVideoList:Ljava/util/List;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mRvSongList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$7;

    invoke-direct {v3, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$7;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/IVideoItemListener;)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter;

    .line 671
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mRvSongList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 672
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter;

    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->getQueueLab()Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;

    move-result-object v1

    sget-object v2, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-virtual {v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->getIndexById(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter;->setSelectedItemPosition(I)V

    return-void
.end method

.method private initView(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 276
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getThumbnails()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getThumbnails()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->loadHttpBitmap(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 280
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mTvAlbum:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getChannelTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mTvSongName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 284
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->isFavoriteVideo(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBtnFavourite:Landroid/widget/ImageView;

    const v1, 0x7f08021a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBtnFavourite:Landroid/widget/ImageView;

    const v1, 0x7f08021e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 290
    :goto_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter;

    if-eqz v0, :cond_3

    .line 291
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mVideoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter;->setSelectedItemPosition(I)V

    .line 294
    :cond_3
    sget-object p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentMode:Ljava/lang/String;

    const/4 v0, -0x1

    .line 295
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7020de65

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_6

    const v2, -0x59af2d27

    if-eq v1, v2, :cond_5

    const v2, 0x47f8f2e

    if-eq v1, v2, :cond_4

    goto :goto_1

    :cond_4
    const-string v1, "ORDER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    const-string v1, "SHUFFLE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 v0, 0x2

    goto :goto_1

    :cond_6
    const-string v1, "REPEAT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :cond_7
    :goto_1
    if-eqz v0, :cond_a

    if-eq v0, v4, :cond_9

    if-eq v0, v3, :cond_8

    goto :goto_2

    .line 303
    :cond_8
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBtnPlaymode:Landroid/widget/ImageButton;

    const v0, 0x7f080263

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2

    .line 300
    :cond_9
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBtnPlaymode:Landroid/widget/ImageButton;

    const v0, 0x7f080264

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2

    .line 297
    :cond_a
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBtnPlaymode:Landroid/widget/ImageButton;

    const v0, 0x7f080261

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 307
    :goto_2
    sget-boolean p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->isPlaying:Z

    if-eqz p1, :cond_b

    .line 308
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBtnPlay:Landroid/widget/ImageButton;

    const v0, 0x7f080269

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_b
    return-void
.end method

.method private loadAd()V
    .locals 4

    .line 236
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner;-><init>()V

    .line 237
    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobConfig;->AD_NATIVE_SPLASH:Ljava/lang/String;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->adContainer:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$3;

    invoke-direct {v3, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$3;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;)V

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner;->load(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AmListener;)V

    return-void
.end method

.method private loadHttpBitmap(Ljava/lang/String;)V
    .locals 2

    const-string v0, "http"

    .line 562
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 564
    :cond_0
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 565
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 566
    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 567
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 569
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$6;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$6;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method private showDownloadDialog(Landroid/app/Activity;Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V
    .locals 2

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 444
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string p2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 446
    filled-new-array {v0, p2}, [Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x11c1

    invoke-static {p1, p2, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 451
    :cond_0
    invoke-static {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadUtil;->startDownload(Landroid/app/Activity;Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 156
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0028

    .line 157
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 158
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 159
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 161
    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->isDownloadEnable(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBtnDown:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBtnDown:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 168
    :goto_0
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 171
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "ARG_VIDEO"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    .line 172
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    if-nez p1, :cond_1

    .line 173
    sget-object p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    .line 176
    :cond_1
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    if-nez p1, :cond_2

    return-void

    .line 180
    :cond_2
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mToolBar:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f080218

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 181
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mToolBar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 182
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 185
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 186
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 187
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$1;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 211
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBtnFavourite:Landroid/widget/ImageView;

    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$2;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->initRecyclerView()V

    .line 229
    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->isFromFacebook(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 230
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->loadAd()V

    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 429
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000b

    .line 430
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDeleteClick(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V
    .locals 1

    .line 678
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->getQueueLab()Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->delete(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    .line 679
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter;

    invoke-virtual {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter;->removeItem(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 626
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 627
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBound:Z

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 629
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBound:Z

    .line 631
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onDownloadClick()V
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-direct {p0, p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->showDownloadDialog(Landroid/app/Activity;Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    return-void
.end method

.method public onMBtnFavouriteClicked()V
    .locals 0

    return-void
.end method

.method public onMBtnNextClicked()V
    .locals 2

    .line 545
    sget v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->STEP:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->STEP:I

    .line 547
    sget v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->STEP:I

    rem-int/lit8 v0, v0, 0x6

    if-nez v0, :cond_0

    .line 548
    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->getInstance(Landroid/app/Activity;)Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->showInterstitialNow()Z

    .line 552
    :cond_0
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBound:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mServiceRunning:Z

    if-eqz v0, :cond_1

    .line 553
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mYTService:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->onPreOrNextButtonClick(Z)V

    :cond_1
    return-void
.end method

.method public onMBtnOptionsClicked()V
    .locals 2

    .line 477
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBtnOptions:Landroid/widget/ImageButton;

    invoke-direct {v0, p0, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 478
    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$5;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$5;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    const v1, 0x7f0d000a

    .line 495
    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 496
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method public onMBtnPlayClicked()V
    .locals 1

    .line 536
    sget v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->STEP:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->STEP:I

    .line 538
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBound:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mServiceRunning:Z

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mYTService:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->onPlayButtonClick()V

    :cond_0
    return-void
.end method

.method public onMBtnPlaymodeClicked()V
    .locals 6

    .line 504
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBound:Z

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mServiceRunning:Z

    if-eqz v0, :cond_7

    .line 505
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mYTService:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->setPlayMode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 506
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x7020de65

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_2

    const v3, -0x59af2d27

    if-eq v2, v3, :cond_1

    const v3, 0x47f8f2e

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "ORDER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "SHUFFLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const-string v2, "REPEAT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    if-eqz v1, :cond_6

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_4

    goto :goto_1

    .line 514
    :cond_4
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBtnPlaymode:Landroid/widget/ImageButton;

    const v1, 0x7f080263

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 511
    :cond_5
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBtnPlaymode:Landroid/widget/ImageButton;

    const v1, 0x7f080264

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 508
    :cond_6
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBtnPlaymode:Landroid/widget/ImageButton;

    const v1, 0x7f080261

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method public onMBtnPreviousClicked()V
    .locals 2

    .line 522
    sget v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->STEP:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->STEP:I

    .line 524
    sget v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->STEP:I

    rem-int/lit8 v0, v0, 0x6

    if-nez v0, :cond_0

    .line 525
    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->getInstance(Landroid/app/Activity;)Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->showInterstitialNow()Z

    .line 529
    :cond_0
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBound:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mServiceRunning:Z

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mYTService:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->onPreOrNextButtonClick(Z)V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 345
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 356
    :sswitch_0
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBound:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mServiceRunning:Z

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mYTService:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->openPowerMode()V

    .line 359
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 350
    :sswitch_1
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBound:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mServiceRunning:Z

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mYTService:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->loadFullPlayer()V

    .line 353
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 347
    :sswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 363
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_2
        0x7f090184 -> :sswitch_1
        0x7f090185 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .line 331
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0x11c1

    if-eq p1, p2, :cond_0

    return-void

    .line 461
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 463
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-static {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/PlayToDownload;->actionStart(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    goto :goto_0

    :cond_1
    const-string p1, "Please enable Storage Write Permission to continue download file."

    .line 466
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/ToastUtil;->showMessage(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 316
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 318
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/bus/busforplay/RemoveViewEvent;

    invoke-direct {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/busforplay/RemoveViewEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 319
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    .line 320
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    if-eqz v0, :cond_0

    .line 321
    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->initView(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mPlayerContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWebPlayer:Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;

    if-eqz v1, :cond_1

    .line 324
    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->getPlayer()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onStateEvent(Lcom/floatingtunes/youtubeplayer/topmusic/bus/StateEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 374
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/StateEvent;->getState()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x35

    if-eq v0, v1, :cond_3

    const/16 v1, 0x39

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5a4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x61f

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    goto :goto_1

    :pswitch_1
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    goto :goto_1

    :pswitch_2
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :pswitch_3
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x6

    goto :goto_1

    :cond_0
    const-string v0, "10"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x7

    goto :goto_1

    :cond_1
    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x5

    goto :goto_1

    :cond_3
    const-string v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x4

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_1

    goto :goto_2

    .line 381
    :pswitch_4
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBtnPlay:Landroid/widget/ImageButton;

    const v0, 0x7f08026a

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2

    .line 378
    :pswitch_5
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBtnPlay:Landroid/widget/ImageButton;

    const v0, 0x7f080269

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_2
    :pswitch_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method protected onStop()V
    .locals 3

    .line 336
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 338
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentSize:Ljava/lang/String;

    const-string v1, "FULL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/bus/busforplay/PlayActivityEvent;

    const/16 v2, 0x2453

    invoke-direct {v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/busforplay/PlayActivityEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onTimeEvent(Lcom/floatingtunes/youtubeplayer/topmusic/bus/TimeEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 406
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/TimeEvent;->getCurrent()I

    move-result v0

    .line 407
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/TimeEvent;->getTotal()I

    move-result p1

    .line 409
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mDurationStart:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/util/Utils;->formatDuration(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mDurationEnd:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/util/Utils;->formatDuration(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mDurationEnd:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/util/Utils;->formatDuration(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 415
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 417
    :cond_1
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public onVideoChange(Lcom/floatingtunes/youtubeplayer/topmusic/bus/busforplay/PlayVideoChangeEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 423
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/busforplay/PlayVideoChangeEvent;->getVideo()Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    .line 424
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/busforplay/PlayVideoChangeEvent;->getVideo()Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->initView(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    return-void
.end method

.method public onViewClicked()V
    .locals 0

    return-void
.end method
