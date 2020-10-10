.class public Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "RadioPlaying.java"


# instance fields
.field imageView2:Landroid/widget/ImageView;

.field ivNext:Landroid/widget/ImageView;

.field ivPlayPause:Landroid/widget/ImageView;

.field ivPrevious:Landroid/widget/ImageView;

.field llBg:Landroid/widget/LinearLayout;

.field mAdContainer:Landroid/widget/LinearLayout;

.field mAdmobNative:Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;

.field mContext:Landroid/content/Context;

.field mMusicBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

.field mPlayerQueueManager:Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;

.field progressbar:Landroid/widget/ProgressBar;

.field status:Lcom/floatingtunes/youtubeplayer/topmusic/view/StatusBarView;

.field toolbar:Landroidx/appcompat/widget/Toolbar;

.field tvTitle:Landroid/widget/TextView;

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->width:I

    return-void
.end method

.method public static actionStart(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "MUSIC_BEAN"

    .line 117
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 118
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private initData()V
    .locals 5

    .line 177
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->ivPlayPause:Landroid/widget/ImageView;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying$2;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080272

    const v2, 0x7f080273

    const/16 v3, 0x8

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "HOME"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 203
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->progressbar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mPlayerQueueManager:Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->ivPlayPause:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->ivPlayPause:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 210
    :goto_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mPlayerQueueManager:Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->getCurrentMusic()Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mMusicBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    goto :goto_2

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mPlayerQueueManager:Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;

    iget-object v4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mMusicBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-virtual {v0, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->setCurrentMusic(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 219
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mPlayerQueueManager:Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->ivPlayPause:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->ivPlayPause:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 226
    :goto_1
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->progressbar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method private loadAdS()V
    .locals 7

    .line 154
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mAdmobNative:Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;

    .line 155
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mAdmobNative:Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;

    sget-object v3, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobConfig;->AD_NATIVE_RADIO:Ljava/lang/String;

    iget-object v4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mAdContainer:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying$1;

    invoke-direct {v6, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;)V

    const v5, 0x7f0c0036

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;->load(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;ILcom/floatingtunes/youtubeplayer/topmusic/admediation/AmListener;)V

    return-void
.end method

.method private loadHttpBitmap(Ljava/lang/String;)V
    .locals 2

    const-string v0, "http"

    .line 333
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 335
    :cond_0
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 336
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 337
    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 338
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 340
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying$4;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying$4;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method private setToolbar(Ljava/lang/String;)V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0801f1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 238
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 239
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 240
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->toolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying$3;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying$3;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mMusicBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getThumbnails()Ljava/lang/String;

    move-result-object p1

    .line 251
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->loadHttpBitmap(Ljava/lang/String;)V

    .line 252
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mMusicBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getThumbnails()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->imageView2:Landroid/widget/ImageView;

    invoke-static {p1, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/util/ImageUtil;->loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public changeMusic(Z)V
    .locals 4

    .line 457
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mPlayerQueueManager:Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->isPlaying()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mPlayerQueueManager:Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->setPlaying(Z)V

    .line 460
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/radio/radio/PauseEvent;

    invoke-direct {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/radio/PauseEvent;-><init>()V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mPlayerQueueManager:Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mMusicBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-virtual {v0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->getIndexByBean(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)I

    move-result v0

    .line 467
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mPlayerQueueManager:Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;

    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->getSize()I

    move-result v2

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 474
    rem-int p1, v0, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, v2

    .line 477
    rem-int p1, v0, v2

    .line 481
    :goto_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mPlayerQueueManager:Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;

    invoke-virtual {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->getBeanByIndex(I)Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mMusicBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    .line 482
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mPlayerQueueManager:Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mMusicBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->setCurrentMusic(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)Z

    .line 484
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->progressbar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 485
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mMusicBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->setToolbar(Ljava/lang/String;)V

    .line 486
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public notificationPause(Lcom/floatingtunes/youtubeplayer/topmusic/radio/radio/NotificationPauseEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 416
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->ivPlayPause:Landroid/widget/ImageView;

    const v0, 0x7f080273

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public notificationPlay(Lcom/floatingtunes/youtubeplayer/topmusic/radio/radio/NotificationPlayEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 423
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->ivPlayPause:Landroid/widget/ImageView;

    const v0, 0x7f080272

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 127
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002c

    .line 128
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 129
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 130
    iput-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mContext:Landroid/content/Context;

    .line 131
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 133
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->getPlayerQueueManager()Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mPlayerQueueManager:Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;

    .line 135
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "MUSIC_BEAN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mMusicBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    .line 137
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mMusicBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    if-nez p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mPlayerQueueManager:Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->getCurrentMusic()Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mMusicBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mMusicBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->setToolbar(Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->initData()V

    .line 145
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->loadAdS()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 429
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 431
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 2

    .line 436
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09011d

    const/16 v1, 0x3c

    if-eq p1, v0, :cond_1

    const v0, 0x7f09011f

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 448
    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->changeMusic(Z)V

    .line 449
    invoke-static {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/mopub/AdUtil;->getRandomBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 450
    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->getInstance(Landroid/app/Activity;)Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->showInterstitial()Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 441
    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->changeMusic(Z)V

    .line 442
    invoke-static {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/mopub/AdUtil;->getRandomBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 443
    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->getInstance(Landroid/app/Activity;)Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->showInterstitial()Z

    :cond_2
    :goto_0
    return-void
.end method

.method public radioStop(Lcom/floatingtunes/youtubeplayer/topmusic/radio/radio/RadioStopEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 410
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public startPlayingSong(Lcom/floatingtunes/youtubeplayer/topmusic/radio/radio/MusicStartEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 399
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mPlayerQueueManager:Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->setCurrentStartTime(J)V

    .line 400
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mPlayerQueueManager:Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/PlayerQueueManager;->setPlaying(Z)V

    .line 402
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->progressbar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 404
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->ivPlayPause:Landroid/widget/ImageView;

    const v0, 0x7f080272

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
