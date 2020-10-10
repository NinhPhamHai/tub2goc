.class public Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;
.super Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;
.source "LockPlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$TimeReceiver;
    }
.end annotation


# instance fields
.field STEP:I

.field adContainer:Landroid/widget/LinearLayout;

.field btnFavourite:Landroid/widget/ImageView;

.field btnNext:Landroid/widget/ImageButton;

.field btnPlay:Landroid/widget/ImageButton;

.field btnPlaymode:Landroid/widget/ImageButton;

.field btnPrevious:Landroid/widget/ImageButton;

.field durationEnd:Landroid/widget/TextView;

.field durationStart:Landroid/widget/TextView;

.field ivCover:Landroid/widget/ImageView;

.field mAppLayout:Landroid/widget/RelativeLayout;

.field mBound:Z

.field private mConfig:Lcom/r0adkll/slidr/model/SlidrConfig;

.field private mConnection:Landroid/content/ServiceConnection;

.field mIvLockMore:Landroid/widget/ImageView;

.field mLockReceiver:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$TimeReceiver;

.field mPopupWindow:Landroid/widget/PopupWindow;

.field mRlChargeLayout:Landroid/widget/RelativeLayout;

.field mTvDate:Landroid/widget/TextView;

.field mTvPercent:Landroid/widget/TextView;

.field mTvTime:Landroid/widget/TextView;

.field mTvWeek:Landroid/widget/TextView;

.field private mVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

.field mYTService:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

.field rootLayout:Landroid/widget/RelativeLayout;

.field seekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

.field tvAlbum:Landroid/widget/TextView;

.field tvSongName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mBound:Z

    .line 126
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->STEP:I

    .line 223
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$3;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$3;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;)Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->setTime()V

    return-void
.end method

.method private hideSystemUI()V
    .locals 2

    .line 460
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1504

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private initPopWindow()V
    .locals 4

    .line 600
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00fc

    const/4 v2, 0x0

    .line 601
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090050

    .line 602
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f090041

    .line 603
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 604
    new-instance v3, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$5;

    invoke-direct {v3, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$5;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 610
    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$6;

    invoke-direct {v2, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$6;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 618
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mPopupWindow:Landroid/widget/PopupWindow;

    return-void
.end method

.method private initView(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 286
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getThumbnails()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getThumbnails()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->loadHttpBitmap(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 290
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->tvAlbum:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getChannelTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->tvSongName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 294
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->isFavoriteVideo(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 295
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->btnFavourite:Landroid/widget/ImageView;

    const v0, 0x7f08021a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 297
    :cond_2
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->btnFavourite:Landroid/widget/ImageView;

    const v0, 0x7f08021e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 301
    :goto_0
    sget-object p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentMode:Ljava/lang/String;

    const/4 v0, -0x1

    .line 302
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7020de65

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_5

    const v2, -0x59af2d27

    if-eq v1, v2, :cond_4

    const v2, 0x47f8f2e

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "ORDER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const-string v1, "SHUFFLE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v0, 0x2

    goto :goto_1

    :cond_5
    const-string v1, "REPEAT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :cond_6
    :goto_1
    if-eqz v0, :cond_9

    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_7

    goto :goto_2

    .line 310
    :cond_7
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->btnPlaymode:Landroid/widget/ImageButton;

    const v0, 0x7f080263

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2

    .line 307
    :cond_8
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->btnPlaymode:Landroid/widget/ImageButton;

    const v0, 0x7f080264

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2

    .line 304
    :cond_9
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->btnPlaymode:Landroid/widget/ImageButton;

    const v0, 0x7f080261

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 314
    :goto_2
    sget-boolean p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->isPlaying:Z

    if-eqz p1, :cond_a

    .line 315
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->btnPlay:Landroid/widget/ImageButton;

    const v0, 0x7f080269

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_a
    return-void
.end method

.method private loadAdS()V
    .locals 0

    return-void
.end method

.method private loadHttpBitmap(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "http"

    .line 398
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->ivCover:Landroid/widget/ImageView;

    invoke-static {p0, p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/util/ImageUtil;->loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 403
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 404
    new-instance v1, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v1}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    .line 405
    invoke-virtual {v1, p1}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 406
    invoke-virtual {v1}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object p1

    .line 408
    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object p1

    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$4;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$4;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;)V

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/Call;->enqueue(Lcom/squareup/okhttp/Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .line 571
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$TimeReceiver;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$TimeReceiver;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mLockReceiver:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$TimeReceiver;

    .line 572
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 573
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 574
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 575
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mLockReceiver:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$TimeReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setPaddingTop()V
    .locals 4

    .line 594
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 595
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/ScreenSize;->STATUS_BAR_HEIGHT:I

    .line 596
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mAppLayout:Landroid/widget/RelativeLayout;

    sget v1, Lcom/floatingtunes/youtubeplayer/topmusic/player/ScreenSize;->STATUS_BAR_HEIGHT:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    return-void
.end method

.method private setTime()V
    .locals 4

    .line 564
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 565
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mTvTime:Landroid/widget/TextView;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mTvWeek:Landroid/widget/TextView;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEEE, "

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mTvDate:Landroid/widget/TextView;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd MMMM"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private unRegisterReceiver()V
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mLockReceiver:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$TimeReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public aboveLockScreen()V
    .locals 2

    .line 470
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x680080

    .line 471
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public closeWindow(Lcom/floatingtunes/youtubeplayer/topmusic/bus/busforplay/CloseWindow;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 324
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 326
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onBtnFavouriteClicked()V
    .locals 0

    return-void
.end method

.method public onBtnNextClicked()V
    .locals 2

    .line 527
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->STEP:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->STEP:I

    .line 528
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mBound:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mServiceRunning:Z

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mYTService:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->onPreOrNextButtonClick(Z)V

    :cond_0
    return-void
.end method

.method public onBtnPlayClicked()V
    .locals 1

    .line 519
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->STEP:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->STEP:I

    .line 520
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mBound:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mServiceRunning:Z

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mYTService:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->onPlayButtonClick()V

    :cond_0
    return-void
.end method

.method public onBtnPlaymodeClicked()V
    .locals 6

    .line 493
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mBound:Z

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mServiceRunning:Z

    if-eqz v0, :cond_7

    .line 494
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mYTService:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->setPlayMode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 495
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

    .line 503
    :cond_4
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->btnPlaymode:Landroid/widget/ImageButton;

    const v1, 0x7f080263

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 500
    :cond_5
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->btnPlaymode:Landroid/widget/ImageButton;

    const v1, 0x7f080264

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 497
    :cond_6
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->btnPlaymode:Landroid/widget/ImageButton;

    const v1, 0x7f080261

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method public onBtnPreviousClicked()V
    .locals 2

    .line 511
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->STEP:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->STEP:I

    .line 512
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mBound:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mServiceRunning:Z

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mYTService:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->onPreOrNextButtonClick(Z)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 130
    invoke-super {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00a6

    .line 131
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 132
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 133
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->aboveLockScreen()V

    .line 134
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->setPaddingTop()V

    .line 137
    new-instance p1, Lcom/r0adkll/slidr/model/SlidrConfig$Builder;

    invoke-direct {p1}, Lcom/r0adkll/slidr/model/SlidrConfig$Builder;-><init>()V

    sget-object v0, Lcom/r0adkll/slidr/model/SlidrPosition;->LEFT:Lcom/r0adkll/slidr/model/SlidrPosition;

    .line 138
    invoke-virtual {p1, v0}, Lcom/r0adkll/slidr/model/SlidrConfig$Builder;->position(Lcom/r0adkll/slidr/model/SlidrPosition;)Lcom/r0adkll/slidr/model/SlidrConfig$Builder;

    const/high16 v0, 0x45160000    # 2400.0f

    .line 139
    invoke-virtual {p1, v0}, Lcom/r0adkll/slidr/model/SlidrConfig$Builder;->velocityThreshold(F)Lcom/r0adkll/slidr/model/SlidrConfig$Builder;

    const/16 v0, 0x20

    .line 140
    invoke-static {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/util/Utils;->convertToPx(ILandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/r0adkll/slidr/model/SlidrConfig$Builder;->touchSize(F)Lcom/r0adkll/slidr/model/SlidrConfig$Builder;

    .line 141
    invoke-virtual {p1}, Lcom/r0adkll/slidr/model/SlidrConfig$Builder;->build()Lcom/r0adkll/slidr/model/SlidrConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mConfig:Lcom/r0adkll/slidr/model/SlidrConfig;

    .line 142
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mConfig:Lcom/r0adkll/slidr/model/SlidrConfig;

    invoke-static {p0, p1}, Lcom/r0adkll/slidr/Slidr;->attach(Landroid/app/Activity;Lcom/r0adkll/slidr/model/SlidrConfig;)Lcom/r0adkll/slidr/model/SlidrInterface;

    .line 144
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 146
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 149
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->btnFavourite:Landroid/widget/ImageView;

    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$1;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->seekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 166
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->seekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 167
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->seekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$2;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 191
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->registerReceiver()V

    .line 192
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->setTime()V

    .line 193
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->initPopWindow()V

    .line 194
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->loadAdS()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 584
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 585
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->unRegisterReceiver()V

    .line 586
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 587
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mBound:Z

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 589
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mBound:Z

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 242
    invoke-super {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;->onResume()V

    .line 243
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->hideSystemUI()V

    .line 245
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/bus/LockPlayEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/LockPlayEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 247
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    .line 248
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    if-eqz v0, :cond_0

    .line 249
    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->initView(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    :cond_0
    return-void
.end method

.method public onStateEvent(Lcom/floatingtunes/youtubeplayer/topmusic/bus/StateEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 334
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

    .line 343
    :pswitch_4
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->btnPlay:Landroid/widget/ImageButton;

    const v0, 0x7f08026a

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2

    .line 339
    :pswitch_5
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->btnPlay:Landroid/widget/ImageButton;

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
    .locals 1

    .line 485
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 486
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public onTimeEvent(Lcom/floatingtunes/youtubeplayer/topmusic/bus/TimeEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 372
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/TimeEvent;->getCurrent()I

    move-result v0

    .line 373
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/TimeEvent;->getTotal()I

    move-result p1

    .line 375
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->durationStart:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/util/Utils;->formatDuration(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->durationEnd:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/util/Utils;->formatDuration(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->durationEnd:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/util/Utils;->formatDuration(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    :cond_0
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->seekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 381
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->seekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 383
    :cond_1
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->seekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public onVideoChange(Lcom/floatingtunes/youtubeplayer/topmusic/bus/busforplay/PlayVideoChangeEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 389
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/busforplay/PlayVideoChangeEvent;->getVideo()Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    .line 390
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/busforplay/PlayVideoChangeEvent;->getVideo()Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->initView(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    return-void
.end method

.method public onViewClicked()V
    .locals 0

    return-void
.end method

.method public onViewClickedMore()V
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mIvLockMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method
