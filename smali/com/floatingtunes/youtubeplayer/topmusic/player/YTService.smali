.class public Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;
.super Landroid/app/Service;
.source "YTService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$LocalBinder;
    }
.end annotation


# static fields
.field private static CLOSE_LAYOUT_HEIGHT:I = 0x0

.field private static HIDE_TIME:I = 0xfa0

.field private static PLAYER_HEIGHT:I = 0x0

.field public static POWER_MODE:Z = false

.field private static TOP_LAYOUT_HEIGHT:I = 0x0

.field public static YOUTUBE_WARNING:Z = false

.field public static isPlaying:Z = true

.field public static mCurrentMode:Ljava/lang/String; = "ORDER"

.field public static mCurrentSize:Ljava/lang/String; = "SMALL"

.field public static mCurrentVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean; = null

.field public static mServiceRunning:Z = false

.field public static mWebPlayer:Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;


# instance fields
.field private hideRunnable:Ljava/lang/Runnable;

.field private final mBinder:Landroid/os/IBinder;

.field mCloseLayout:Landroid/widget/RelativeLayout;

.field private mCurrentSmallPlayerSizeType:I

.field public mCurrentState:Ljava/lang/String;

.field mDurationEnd:Landroid/widget/TextView;

.field mDurationStart:Landroid/widget/TextView;

.field mFrameLayout:Landroid/widget/FrameLayout;

.field mFull:Landroid/widget/ImageView;

.field mFullContainer:Landroid/widget/RelativeLayout;

.field mFullControl:Landroid/widget/RelativeLayout;

.field mFullPlayer:Landroid/widget/RelativeLayout;

.field mHome:Landroid/widget/ImageView;

.field mMode:Landroid/widget/ImageView;

.field mNBigView:Landroid/widget/RemoteViews;

.field mNSmallView:Landroid/widget/RemoteViews;

.field mNext:Landroid/widget/ImageView;

.field mNotification:Landroid/app/Notification;

.field mNotificationManager:Landroid/app/NotificationManager;

.field mParamsCloseLayout:Landroid/view/WindowManager$LayoutParams;

.field mParamsFrame:Landroid/view/WindowManager$LayoutParams;

.field mParamsFull:Landroid/view/WindowManager$LayoutParams;

.field mParamsMiddleContainer:Landroid/view/WindowManager$LayoutParams;

.field mParamsSmallContainer:Landroid/view/WindowManager$LayoutParams;

.field mParamsWarning:Landroid/view/WindowManager$LayoutParams;

.field mParamsWebView:Landroid/view/WindowManager$LayoutParams;

.field mPlay:Landroid/widget/ImageView;

.field mPlaybackControl:Landroid/widget/RelativeLayout;

.field mPlayerSizeLayout:Landroid/widget/LinearLayout;

.field mPower:Landroid/widget/ImageView;

.field mPre:Landroid/widget/ImageView;

.field mPreButtonClick:Z

.field mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

.field mSmallCloseBtn:Landroid/widget/ImageView;

.field mSmallContainer:Landroid/widget/RelativeLayout;

.field mSmallCover:Landroid/widget/RelativeLayout;

.field mSmallPlayer:Landroid/widget/RelativeLayout;

.field mTvPlayerType:Landroid/widget/TextView;

.field mWarningDialog:Landroid/widget/RelativeLayout;

.field mWatcherReceiver:Lcom/floatingtunes/youtubeplayer/topmusic/player/WatcherReceiver;

.field mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 133
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 88
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$LocalBinder;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mBinder:Landroid/os/IBinder;

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPreButtonClick:Z

    const/16 v0, 0x2c00

    .line 126
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentSmallPlayerSizeType:I

    .line 637
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$8;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$8;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->hideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->showOrHide()V

    return-void
.end method

.method static synthetic access$102(I)I
    .locals 0

    .line 81
    sput p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->TOP_LAYOUT_HEIGHT:I

    return p0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 81
    sget v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->CLOSE_LAYOUT_HEIGHT:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0

    .line 81
    sput p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->CLOSE_LAYOUT_HEIGHT:I

    return p0
.end method

.method static synthetic access$300(Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->setSmallPlayerSize(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;)I
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->getPaddingTop()I

    move-result p0

    return p0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 81
    sget v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->PLAYER_HEIGHT:I

    return v0
.end method

.method static synthetic access$600(Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->closeWindow()V

    return-void
.end method

.method static synthetic access$700(Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->launchPlayActivity()V

    return-void
.end method

.method private closeWindow()V
    .locals 2

    .line 1153
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->isFromFacebook(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ShowAd;->actionStart(Landroid/content/Context;)V

    .line 1157
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/bus/busforplay/CloseWindow;

    invoke-direct {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/busforplay/CloseWindow;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1159
    sput-boolean v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mServiceRunning:Z

    .line 1160
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->removeViews()V

    .line 1161
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->getQueueLab()Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->clearQueues()V

    .line 1162
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method private getPaddingTop()I
    .locals 2

    .line 1179
    sget v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->TOP_LAYOUT_HEIGHT:I

    sget v1, Lcom/floatingtunes/youtubeplayer/topmusic/player/ScreenSize;->STATUS_BAR_HEIGHT:I

    add-int/2addr v0, v1

    return v0
.end method

.method private handleNotificationEvent(Ljava/lang/String;)V
    .locals 2

    const-string v0, "NEXT NO"

    .line 780
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 781
    invoke-virtual {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->loadNextVideo(Z)V

    return-void

    :cond_0
    const-string v0, "PLAY AND PAUSE"

    .line 784
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 785
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentState:Ljava/lang/String;

    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 786
    sget-object p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWebPlayer:Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;

    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/JavaScript;->playVideo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->loadJS(Ljava/lang/String;)V

    goto :goto_0

    .line 788
    :cond_1
    sget-object p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWebPlayer:Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;

    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/JavaScript;->pauseVideo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->loadJS(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    const-string v0, "PRE NO"

    .line 792
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 793
    iput-boolean v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPreButtonClick:Z

    const/4 p1, 0x0

    .line 794
    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->loadNextVideo(Z)V

    return-void

    :cond_3
    const-string v0, "STOP NO"

    .line 797
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 798
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->closeWindow()V

    :cond_4
    return-void
.end method

.method private handlePlaybackError()V
    .locals 2

    .line 1335
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/ToastUtil;->playbackError()V

    .line 1338
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->getQueueLab()Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->getSize()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 1341
    :cond_0
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPreButtonClick:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1342
    invoke-virtual {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->loadNextVideo(Z)V

    .line 1343
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPreButtonClick:Z

    goto :goto_0

    .line 1345
    :cond_1
    invoke-virtual {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->loadNextVideo(Z)V

    :goto_0
    return-void
.end method

.method private hideControlView()V
    .locals 2

    .line 612
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mMode:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 613
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 614
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 615
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNext:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 616
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPre:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 617
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 618
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mFull:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 619
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mDurationStart:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 620
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mDurationEnd:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 621
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPower:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 622
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mHome:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideNotiByYoutubeWarning()V
    .locals 5

    .line 932
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNBigView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNSmallView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    const v1, 0x7f0901df

    const/16 v2, 0x8

    .line 933
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 934
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNBigView:Landroid/widget/RemoteViews;

    const v1, 0x7f0901cd

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 935
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNBigView:Landroid/widget/RemoteViews;

    const v3, 0x7f0901a9

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 936
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNSmallView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 937
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNBigView:Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110205

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090294

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 938
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNBigView:Landroid/widget/RemoteViews;

    const v1, 0x7f090032

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110226

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 939
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNSmallView:Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 940
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x65

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method private initNotification(Landroid/content/Context;)V
    .locals 7

    .line 532
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c00dc

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNBigView:Landroid/widget/RemoteViews;

    const-string v0, "notification"

    .line 534
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 536
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c00e0

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNSmallView:Landroid/widget/RemoteViews;

    .line 538
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "PRE NO"

    .line 539
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v3, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v3, "NEXT NO"

    .line 540
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {p1, v4, v3, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const-string v4, "PLAY AND PAUSE"

    .line 541
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {p1, v5, v4, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const-string v5, "STOP NO"

    .line 542
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v5, 0x4

    invoke-static {p1, v5, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 544
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "notification source"

    .line 545
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x5

    invoke-static {v5, v6, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 548
    iget-object v5, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNBigView:Landroid/widget/RemoteViews;

    const v6, 0x7f0901df

    invoke-virtual {v5, v6, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 549
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNBigView:Landroid/widget/RemoteViews;

    const v5, 0x7f0901cd

    invoke-virtual {v1, v5, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 550
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNBigView:Landroid/widget/RemoteViews;

    const v6, 0x7f0901a9

    invoke-virtual {v1, v6, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 551
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNBigView:Landroid/widget/RemoteViews;

    const v3, 0x7f09026c

    invoke-virtual {v1, v3, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 553
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNSmallView:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v5, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 554
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNSmallView:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v3, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 556
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_0

    .line 557
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->createNotificationChannelId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "sunday.freemusicplayeryoutube.floatingtubeplayer.YTService"

    .line 562
    :goto_0
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, p1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p1, 0x7f0802e6

    .line 564
    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 565
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 566
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNBigView:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 567
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNSmallView:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 568
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 570
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNotification:Landroid/app/Notification;

    const/16 p1, 0x65

    .line 572
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0, p1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method private initParams()V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mParamsSmallContainer:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/ParamsConfig;->getSmall(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mParamsSmallContainer:Landroid/view/WindowManager$LayoutParams;

    .line 287
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mParamsMiddleContainer:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/ParamsConfig;->getMiddle(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mParamsMiddleContainer:Landroid/view/WindowManager$LayoutParams;

    .line 288
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mParamsCloseLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/ParamsConfig;->getClose(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mParamsCloseLayout:Landroid/view/WindowManager$LayoutParams;

    .line 289
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mParamsWebView:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/ParamsConfig;->getWeb(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mParamsWebView:Landroid/view/WindowManager$LayoutParams;

    .line 290
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mParamsFull:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/ParamsConfig;->getFull(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mParamsFull:Landroid/view/WindowManager$LayoutParams;

    .line 291
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mParamsFrame:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/ParamsConfig;->getFrame(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mParamsFrame:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method private initTouchEvent()V
    .locals 2

    .line 1078
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSmallCover:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initWindow()V
    .locals 6

    .line 297
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->initParams()V

    const-string v0, "window"

    .line 299
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWindowManager:Landroid/view/WindowManager;

    const-string v0, "layout_inflater"

    .line 300
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0c00f4

    .line 303
    invoke-virtual {v0, v3, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCloseLayout:Landroid/widget/RelativeLayout;

    .line 304
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCloseLayout:Landroid/widget/RelativeLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v3, 0x7f0c00f7

    .line 307
    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSmallContainer:Landroid/widget/RelativeLayout;

    .line 308
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSmallContainer:Landroid/widget/RelativeLayout;

    const v4, 0x7f0901d9

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSmallPlayer:Landroid/widget/RelativeLayout;

    .line 309
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSmallContainer:Landroid/widget/RelativeLayout;

    const v5, 0x7f0901d8

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSmallCover:Landroid/widget/RelativeLayout;

    .line 310
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSmallContainer:Landroid/widget/RelativeLayout;

    const v5, 0x7f09006d

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSmallCloseBtn:Landroid/widget/ImageView;

    .line 311
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSmallContainer:Landroid/widget/RelativeLayout;

    const v5, 0x7f0902bb

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mTvPlayerType:Landroid/widget/TextView;

    .line 312
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSmallContainer:Landroid/widget/RelativeLayout;

    const v5, 0x7f090146

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPlayerSizeLayout:Landroid/widget/LinearLayout;

    .line 313
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSmallCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0c00f5

    .line 316
    invoke-virtual {v0, v3, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mFullContainer:Landroid/widget/RelativeLayout;

    .line 317
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mFullContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mFullPlayer:Landroid/widget/RelativeLayout;

    .line 318
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mFullContainer:Landroid/widget/RelativeLayout;

    const v4, 0x7f0900e1

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mFullControl:Landroid/widget/RelativeLayout;

    const v3, 0x7f0c00f1

    .line 321
    invoke-virtual {v0, v3, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPlaybackControl:Landroid/widget/RelativeLayout;

    .line 322
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPlaybackControl:Landroid/widget/RelativeLayout;

    const v1, 0x7f090193

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mMode:Landroid/widget/ImageView;

    .line 323
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPlaybackControl:Landroid/widget/RelativeLayout;

    const v1, 0x7f0900e0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mFull:Landroid/widget/ImageView;

    .line 324
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPlaybackControl:Landroid/widget/RelativeLayout;

    const v1, 0x7f0901d2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPlay:Landroid/widget/ImageView;

    .line 325
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPlaybackControl:Landroid/widget/RelativeLayout;

    const v1, 0x7f0901a8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNext:Landroid/widget/ImageView;

    .line 326
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPlaybackControl:Landroid/widget/RelativeLayout;

    const v1, 0x7f0901dd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPre:Landroid/widget/ImageView;

    .line 327
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPlaybackControl:Landroid/widget/RelativeLayout;

    const v1, 0x7f0901db

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPower:Landroid/widget/ImageView;

    .line 328
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPlaybackControl:Landroid/widget/RelativeLayout;

    const v1, 0x7f0900f1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mHome:Landroid/widget/ImageView;

    .line 330
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPlaybackControl:Landroid/widget/RelativeLayout;

    const v1, 0x7f090242

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 331
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 332
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 333
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPlaybackControl:Landroid/widget/RelativeLayout;

    const v1, 0x7f0900a3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mDurationStart:Landroid/widget/TextView;

    .line 334
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPlaybackControl:Landroid/widget/RelativeLayout;

    const v1, 0x7f0900a2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mDurationEnd:Landroid/widget/TextView;

    .line 335
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mMode:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNext:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPre:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPower:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mFull:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mHome:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$2;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 363
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPlaybackControl:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$3;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$3;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSmallContainer:Landroid/widget/RelativeLayout;

    const v1, 0x7f0902a1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 372
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$4;

    invoke-direct {v2, p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$4;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 380
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCloseLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$5;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$5;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 388
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSmallContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$6;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$6;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 397
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$7;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$7;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 415
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->loadSmallPlayer()V

    .line 418
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->initTouchEvent()V

    return-void
.end method

.method private launchPlayActivity()V
    .locals 2

    .line 663
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentSize:Ljava/lang/String;

    const-string v1, "MIDDLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 664
    sput-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentSize:Ljava/lang/String;

    .line 666
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->removeViews()V

    .line 668
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-static {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->actionStart(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    :cond_0
    return-void
.end method

.method private loadFullPlayer(Lcom/floatingtunes/youtubeplayer/topmusic/bus/busforplay/PlayActivityEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 674
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->loadFullPlayer()V

    return-void
.end method

.method private loadImage(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "http"

    .line 845
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, "https://s.ytimg.com/yts/img/no_thumbnail-vfl4t3-4R.jpg"

    .line 850
    :cond_1
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 851
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 852
    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 853
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 855
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$9;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$9;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method private movePlayerToRight()V
    .locals 5

    .line 706
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/16 v1, 0x3c

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 708
    sget v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/ScreenSize;->SCREEN_WIDTH:I

    const/16 v3, 0xb0

    .line 709
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/util/Utils;->convertToPx(ILandroid/content/Context;)I

    move-result v3

    sub-int/2addr v0, v3

    .line 710
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/util/Utils;->convertToPx(ILandroid/content/Context;)I

    move-result v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-gtz v1, :cond_1

    const/4 v1, 0x0

    .line 719
    :cond_1
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mParamsSmallContainer:Landroid/view/WindowManager$LayoutParams;

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 720
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 721
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSmallContainer:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 725
    :cond_2
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/util/Utils;->convertToPx(ILandroid/content/Context;)I

    move-result v0

    if-gtz v0, :cond_3

    const/4 v0, 0x0

    .line 731
    :cond_3
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mParamsSmallContainer:Landroid/view/WindowManager$LayoutParams;

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 732
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 733
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSmallContainer:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private setSmallPlayerSize(I)V
    .locals 4

    const/16 v0, 0x40

    const/16 v1, 0x70

    const/16 v2, 0x2c00

    if-eq p1, v2, :cond_3

    const v3, 0x2716e

    if-eq p1, v3, :cond_2

    const v3, 0x334e0

    if-eq p1, v3, :cond_1

    const v3, 0x3f852

    if-eq p1, v3, :cond_0

    .line 475
    iput v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentSmallPlayerSizeType:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x104

    const/16 v0, 0xb2

    .line 470
    iput v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentSmallPlayerSizeType:I

    goto :goto_0

    :cond_1
    const/16 v1, 0xd2

    const/16 v0, 0x90

    .line 465
    iput v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentSmallPlayerSizeType:I

    goto :goto_0

    :cond_2
    const/16 v1, 0xa0

    const/16 v0, 0x6e

    .line 460
    iput v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentSmallPlayerSizeType:I

    goto :goto_0

    .line 455
    :cond_3
    iput v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentSmallPlayerSizeType:I

    .line 478
    :goto_0
    invoke-static {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/util/Utils;->convertToPx(ILandroid/content/Context;)I

    move-result p1

    .line 479
    invoke-static {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/util/Utils;->convertToPx(ILandroid/content/Context;)I

    move-result v0

    .line 480
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPlayerSizeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 481
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPlayerSizeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 482
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPlayerSizeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 483
    sput v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->PLAYER_HEIGHT:I

    return-void
.end method

.method private showControlView()V
    .locals 2

    .line 596
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mMode:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 597
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 598
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 599
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNext:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 600
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPre:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 601
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 602
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mFull:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 603
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mDurationStart:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 604
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mDurationEnd:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 605
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPower:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 606
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mHome:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showNotiByYoutubeWarning()V
    .locals 4

    .line 946
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNBigView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNSmallView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    if-eqz v1, :cond_0

    const v1, 0x7f0901df

    const/4 v2, 0x0

    .line 947
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 948
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNBigView:Landroid/widget/RemoteViews;

    const v1, 0x7f0901cd

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 949
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNBigView:Landroid/widget/RemoteViews;

    const v3, 0x7f0901a9

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 950
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNSmallView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 951
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNBigView:Landroid/widget/RemoteViews;

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090294

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 952
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNBigView:Landroid/widget/RemoteViews;

    const v1, 0x7f090032

    sget-object v3, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-virtual {v3}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getChannelTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 953
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNSmallView:Landroid/widget/RemoteViews;

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 954
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x65

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method private showOrHide()V
    .locals 4

    .line 628
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPlaybackControl:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->hideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 629
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPlay:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 630
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->hideControlView()V

    goto :goto_0

    .line 632
    :cond_0
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->showControlView()V

    .line 633
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPlaybackControl:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->hideRunnable:Ljava/lang/Runnable;

    sget v2, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->HIDE_TIME:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private showWarningDialog()V
    .locals 5

    .line 885
    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->noWarningDialog(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWarningDialog:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "layout_inflater"

    .line 889
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f0c00ec

    const/4 v3, 0x0

    .line 890
    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWarningDialog:Landroid/widget/RelativeLayout;

    goto :goto_0

    .line 892
    :cond_1
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 893
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWarningDialog:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 896
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWarningDialog:Landroid/widget/RelativeLayout;

    const v2, 0x7f09021b

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 897
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWarningDialog:Landroid/widget/RelativeLayout;

    const v3, 0x7f090219

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 898
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWarningDialog:Landroid/widget/RelativeLayout;

    const v4, 0x7f09005a

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 899
    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 900
    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$10;

    invoke-direct {v1, p0, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$10;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 907
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$11;

    invoke-direct {v0, p0, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$11;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 913
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$12;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$12;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;)V

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 926
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mParamsWarning:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/ParamsConfig;->getWarning(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mParamsWarning:Landroid/view/WindowManager$LayoutParams;

    .line 927
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWarningDialog:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mParamsWarning:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static start(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V
    .locals 2

    .line 139
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/bus/busforplay/ShowWindow;

    invoke-direct {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/busforplay/ShowWindow;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 141
    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/util/PermissionUtil;->checkPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    instance-of p1, p0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz p1, :cond_0

    .line 143
    check-cast p0, Landroidx/appcompat/app/AppCompatActivity;

    .line 144
    new-instance p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$1;

    invoke-direct {p1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$1;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-static {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/util/PermissionUtil;->showPermissionDialog(Landroidx/appcompat/app/AppCompatActivity;Lcom/floatingtunes/youtubeplayer/topmusic/util/PermissionDialog$Listener;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    .line 158
    sput-object p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    .line 159
    sget-boolean p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mServiceRunning:Z

    if-eqz p1, :cond_2

    .line 160
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/floatingtunes/youtubeplayer/topmusic/bus/StartEvent;

    invoke-direct {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/StartEvent;-><init>()V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 162
    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_3
    :goto_0
    return-void
.end method

.method private startPlaying()V
    .locals 3

    .line 176
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    if-eqz v0, :cond_0

    .line 178
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/bus/busforplay/PlayVideoChangeEvent;

    sget-object v2, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-direct {v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/busforplay/PlayVideoChangeEvent;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 180
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->saveToHistory(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    .line 182
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWebPlayer:Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getVideoId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/JavaScript;->loadVideo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->loadJS(Ljava/lang/String;)V

    .line 184
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->updateNotificationAll(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    :cond_0
    return-void
.end method

.method private updateNotificationAll(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 813
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getThumbnails()Ljava/lang/String;

    move-result-object v0

    .line 814
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 815
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getChannelTitle()Ljava/lang/String;

    move-result-object p1

    .line 817
    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->loadImage(Ljava/lang/String;)V

    .line 819
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNBigView:Landroid/widget/RemoteViews;

    const v2, 0x7f0901df

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 820
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNBigView:Landroid/widget/RemoteViews;

    const v2, 0x7f0901cd

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 821
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNBigView:Landroid/widget/RemoteViews;

    const v4, 0x7f0901a9

    invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 822
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNSmallView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 824
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNBigView:Landroid/widget/RemoteViews;

    const v2, 0x7f090294

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 825
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNBigView:Landroid/widget/RemoteViews;

    const v3, 0x7f090032

    invoke-virtual {v0, v3, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 826
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNSmallView:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 831
    :try_start_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v0, 0x65

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 833
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private updatePlayPauseIcon(Z)V
    .locals 2

    const v0, 0x7f0901cd

    if-eqz p1, :cond_0

    .line 988
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPlay:Landroid/widget/ImageView;

    const v1, 0x7f080300

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 989
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNBigView:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 990
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNSmallView:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 992
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPlay:Landroid/widget/ImageView;

    const v1, 0x7f080301

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 993
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNBigView:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 994
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNSmallView:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 996
    :goto_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v0, 0x65

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public createNotificationChannelId()Ljava/lang/String;
    .locals 4

    .line 578
    const-class v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 580
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x0

    const-string v3, "Music Background Service"

    invoke-direct {v1, v0, v3, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const v3, 0x7f060040

    .line 582
    invoke-virtual {p0, v3}, Landroid/app/Service;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 583
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    const-string v2, "notification"

    .line 584
    invoke-virtual {p0, v2}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 585
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-object v0
.end method

.method public getWebPlayer()Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;
    .locals 1

    .line 1055
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWebPlayer:Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;

    return-object v0
.end method

.method public hideSmallPlayerAndPause(Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 199
    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent;->mAdStatus:Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;

    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;->DISPLAY:Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;

    if-ne p1, v0, :cond_1

    .line 200
    sget-object p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWebPlayer:Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;

    if-eqz p1, :cond_0

    .line 201
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/JavaScript;->pauseVideo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->loadJS(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 202
    sput-boolean p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->isPlaying:Z

    .line 204
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSmallContainer:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 205
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 206
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSmallContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mParamsSmallContainer:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public loadFullPlayer()V
    .locals 4

    .line 679
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentSize:Ljava/lang/String;

    const-string v1, "FULL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 680
    sput-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentSize:Ljava/lang/String;

    .line 681
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->removeViews()V

    .line 682
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->showControlView()V

    .line 683
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPlaybackControl:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->hideRunnable:Ljava/lang/Runnable;

    sget v2, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->HIDE_TIME:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 684
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mParamsFrame:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 685
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mFullPlayer:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWebPlayer:Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->getPlayer()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mParamsWebView:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 686
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mFullControl:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPlaybackControl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 687
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mFullContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mParamsFull:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public loadNextVideo(Z)V
    .locals 7

    .line 1303
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7020de65

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eq v1, v2, :cond_2

    const v2, -0x59af2d27

    if-eq v1, v2, :cond_1

    const v2, 0x47f8f2e

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "ORDER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const-string v1, "SHUFFLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "REPEAT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_8

    if-eq v0, v6, :cond_7

    if-eq v0, v4, :cond_4

    goto :goto_3

    .line 1311
    :cond_4
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->getQueueLab()Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;

    move-result-object v0

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->getIndexById(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)I

    move-result v0

    if-ne v0, v5, :cond_5

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    add-int/2addr v0, v6

    .line 1317
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->getQueueLab()Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->getSize()I

    move-result p1

    rem-int v3, v0, p1

    goto :goto_2

    :cond_6
    sub-int/2addr v0, v6

    .line 1319
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->getQueueLab()Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->getSize()I

    move-result p1

    add-int/2addr v0, p1

    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->getQueueLab()Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->getSize()I

    move-result p1

    rem-int v3, v0, p1

    .line 1322
    :goto_2
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->getQueueLab()Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->getIdByIndex(I)Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    move-result-object p1

    sput-object p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    goto :goto_3

    .line 1307
    :cond_7
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->getQueueLab()Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->getSize()I

    move-result p1

    int-to-double v2, p1

    mul-double v0, v0, v2

    double-to-int p1, v0

    .line 1308
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->getQueueLab()Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->getIdByIndex(I)Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    move-result-object p1

    sput-object p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    .line 1325
    :cond_8
    :goto_3
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->startPlaying()V

    return-void
.end method

.method public loadSmallPlayer()V
    .locals 3

    const-string v0, "SMALL"

    .line 654
    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentSize:Ljava/lang/String;

    .line 655
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->removeViews()V

    .line 656
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSmallPlayer:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWebPlayer:Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->getPlayer()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mParamsWebView:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 657
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCloseLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mParamsCloseLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 658
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSmallContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mParamsSmallContainer:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public loadSmallPlayer(Lcom/floatingtunes/youtubeplayer/topmusic/bus/busforplay/PlayActivityEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 649
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->loadSmallPlayer()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 240
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onButtonEvent(Lcom/floatingtunes/youtubeplayer/topmusic/bus/ButtonEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 429
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/ButtonEvent;->getEvent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7026c5a5

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x1efce7

    if-eq v0, v1, :cond_1

    const v1, 0x21ecdf

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "HOME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "BACK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "RECENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-string v0, "FULL"

    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    goto :goto_2

    .line 442
    :cond_4
    sget-object p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentSize:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 443
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->loadSmallPlayer()V

    goto :goto_2

    .line 437
    :cond_5
    sget-object p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentSize:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 438
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->loadSmallPlayer()V

    goto :goto_2

    .line 432
    :cond_6
    sget-object p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentSize:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 433
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->loadSmallPlayer()V

    :cond_7
    :goto_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1002
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1014
    :sswitch_0
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPreButtonClick:Z

    .line 1015
    invoke-virtual {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->loadNextVideo(Z)V

    goto/16 :goto_1

    .line 1032
    :sswitch_1
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->openPowerMode()V

    .line 1033
    sput-boolean v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->POWER_MODE:Z

    goto/16 :goto_1

    .line 1007
    :sswitch_2
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentState:Ljava/lang/String;

    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1008
    sget-object p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWebPlayer:Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;

    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/JavaScript;->playVideo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->loadJS(Ljava/lang/String;)V

    goto :goto_1

    .line 1010
    :cond_0
    sget-object p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWebPlayer:Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;

    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/JavaScript;->pauseVideo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->loadJS(Ljava/lang/String;)V

    goto :goto_1

    .line 1018
    :sswitch_3
    invoke-virtual {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->loadNextVideo(Z)V

    goto :goto_1

    .line 1021
    :sswitch_4
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->setPlayMode()Ljava/lang/String;

    goto :goto_1

    .line 1037
    :sswitch_5
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x20000000

    .line 1038
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1040
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 1042
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1044
    invoke-virtual {p1}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 1046
    :goto_0
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->loadSmallPlayer()V

    .line 1047
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mParamsSmallContainer:Landroid/view/WindowManager$LayoutParams;

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1048
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1049
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSmallContainer:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1024
    :sswitch_6
    sget-object p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentSize:Ljava/lang/String;

    const-string v0, "MIDDLE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1025
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->loadFullPlayer()V

    goto :goto_1

    .line 1027
    :cond_1
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->loadSmallPlayer()V

    goto :goto_1

    .line 1004
    :sswitch_7
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->closeWindow()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09006d -> :sswitch_7
        0x7f0900e0 -> :sswitch_6
        0x7f0900f1 -> :sswitch_5
        0x7f090193 -> :sswitch_4
        0x7f0901a8 -> :sswitch_3
        0x7f0901d2 -> :sswitch_2
        0x7f0901db -> :sswitch_1
        0x7f0901dd -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate()V
    .locals 2

    .line 246
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 249
    :try_start_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 251
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWebPlayer:Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;

    .line 252
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWebPlayer:Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->initPlayer()V

    .line 254
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/WatcherReceiver;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/WatcherReceiver;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWatcherReceiver:Lcom/floatingtunes/youtubeplayer/topmusic/player/WatcherReceiver;

    .line 255
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWatcherReceiver:Lcom/floatingtunes/youtubeplayer/topmusic/player/WatcherReceiver;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/WatcherReceiver;->registerHomeKeyReceiver(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 257
    sput-boolean v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mServiceRunning:Z

    .line 259
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->initWindow()V

    .line 260
    invoke-direct {p0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->initNotification(Landroid/content/Context;)V

    .line 262
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->isFromFacebook(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlayService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Service;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1169
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1170
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->getQueueLab()Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->clearQueues()V

    .line 1171
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->removeViews()V

    .line 1172
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWebPlayer:Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->onDestroy()V

    .line 1173
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWatcherReceiver:Lcom/floatingtunes/youtubeplayer/topmusic/player/WatcherReceiver;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/WatcherReceiver;->unregisterHomeKeyReceiver(Landroid/content/Context;)V

    .line 1174
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1175
    sput-boolean v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mServiceRunning:Z

    return-void
.end method

.method public onLockEvent(Lcom/floatingtunes/youtubeplayer/topmusic/bus/LockEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1190
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->isFromFacebook(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1193
    :cond_0
    sget-boolean v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mServiceRunning:Z

    if-eqz v0, :cond_1

    .line 1194
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/LockEvent;->isLock()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 1197
    sput-boolean p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->YOUTUBE_WARNING:Z

    .line 1199
    sget-object p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWebPlayer:Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;

    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/JavaScript;->pauseVideo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->loadJS(Ljava/lang/String;)V

    .line 1201
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->showWarningDialog()V

    .line 1203
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->hideNotiByYoutubeWarning()V

    :cond_1
    return-void
.end method

.method public onLockPlaying(Lcom/floatingtunes/youtubeplayer/topmusic/bus/LockPlayEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 698
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/LockPlayEvent;->isLockPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 699
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->movePlayerToRight()V

    :cond_0
    return-void
.end method

.method public onPlayButtonClick()V
    .locals 2

    .line 979
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentState:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWebPlayer:Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;

    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/JavaScript;->playVideo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->loadJS(Ljava/lang/String;)V

    goto :goto_0

    .line 982
    :cond_0
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWebPlayer:Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;

    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/JavaScript;->pauseVideo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->loadJS(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPreOrNextButtonClick(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 971
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPreButtonClick:Z

    const/4 p1, 0x0

    .line 972
    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->loadNextVideo(Z)V

    goto :goto_0

    .line 974
    :cond_0
    invoke-virtual {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->loadNextVideo(Z)V

    :goto_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    if-eqz p1, :cond_0

    .line 274
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 275
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 276
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->handleNotificationEvent(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method public onStateEvent(Lcom/floatingtunes/youtubeplayer/topmusic/bus/StateEvent;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1256
    sget-boolean v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mServiceRunning:Z

    if-nez v0, :cond_0

    return-void

    .line 1258
    :cond_0
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/StateEvent;->getState()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x35

    const-string v3, "2"

    const-string v4, "1"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v2, :cond_4

    const/16 v2, 0x39

    if-eq v1, v2, :cond_3

    const/16 v2, 0x5a4

    if-eq v1, v2, :cond_2

    const/16 v2, 0x61f

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    const-string v1, "10"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x7

    goto :goto_0

    :cond_2
    const-string v1, "-1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string v1, "9"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    const-string v1, "5"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x4

    :cond_5
    :goto_0
    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 1291
    :pswitch_4
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->startPlaying()V

    goto :goto_1

    .line 1288
    :pswitch_5
    invoke-virtual {p0, v5}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->loadNextVideo(Z)V

    goto :goto_1

    .line 1285
    :pswitch_6
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->handlePlaybackError()V

    goto :goto_1

    .line 1274
    :pswitch_7
    iput-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentState:Ljava/lang/String;

    .line 1275
    invoke-direct {p0, v6}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->updatePlayPauseIcon(Z)V

    .line 1276
    sput-boolean v6, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->isPlaying:Z

    goto :goto_1

    .line 1263
    :pswitch_8
    iput-object v4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentState:Ljava/lang/String;

    .line 1265
    sget-boolean p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->YOUTUBE_WARNING:Z

    if-eqz p1, :cond_6

    .line 1266
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->showNotiByYoutubeWarning()V

    .line 1267
    sput-boolean v6, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->YOUTUBE_WARNING:Z

    .line 1269
    :cond_6
    invoke-direct {p0, v5}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->updatePlayPauseIcon(Z)V

    .line 1270
    sput-boolean v5, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->isPlaying:Z

    :goto_1
    :pswitch_9
    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public onTimeEvent(Lcom/floatingtunes/youtubeplayer/topmusic/bus/TimeEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1234
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/TimeEvent;->getCurrent()I

    move-result v0

    .line 1235
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/TimeEvent;->getTotal()I

    move-result p1

    .line 1237
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mDurationStart:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/util/Utils;->formatDuration(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1238
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mDurationEnd:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/util/Utils;->formatDuration(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1239
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mDurationEnd:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/util/Utils;->formatDuration(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1242
    :cond_0
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 1243
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1245
    :cond_1
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public openPowerMode()V
    .locals 3

    .line 1209
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/floatingtunes/youtubeplayer/topmusic/player/BlcakgroundActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 1210
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    .line 1211
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1213
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1215
    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1217
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 1220
    :goto_0
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->loadSmallPlayer()V

    .line 1221
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mParamsSmallContainer:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1222
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1223
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSmallContainer:Landroid/widget/RelativeLayout;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public removeViews()V
    .locals 2

    .line 747
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mFullContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mFullContainer:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCloseLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 751
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCloseLayout:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 753
    :cond_1
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSmallContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 754
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSmallContainer:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 756
    :cond_2
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 757
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 759
    :cond_3
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWebPlayer:Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->getPlayer()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWebPlayer:Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->getPlayer()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 760
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWebPlayer:Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->getPlayer()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWebPlayer:Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->getPlayer()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 762
    :cond_4
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPlaybackControl:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 763
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPlaybackControl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPlaybackControl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 765
    :cond_5
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWarningDialog:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 766
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWarningDialog:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_6
    return-void
.end method

.method public removeViews(Lcom/floatingtunes/youtubeplayer/topmusic/bus/busforplay/RemoveViewEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 742
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->removeViews()V

    return-void
.end method

.method public setPlayMode()Ljava/lang/String;
    .locals 8

    .line 1059
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7020de65

    const-string v3, "ORDER"

    const-string v4, "SHUFFLE"

    const-string v5, "REPEAT"

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v1, v2, :cond_2

    const v2, -0x59af2d27

    if-eq v1, v2, :cond_1

    const v2, 0x47f8f2e

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v7, :cond_5

    if-eq v0, v6, :cond_4

    goto :goto_2

    .line 1069
    :cond_4
    sput-object v3, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentMode:Ljava/lang/String;

    .line 1070
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mMode:Landroid/widget/ImageView;

    const v1, 0x7f080310

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 1065
    :cond_5
    sput-object v4, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentMode:Ljava/lang/String;

    .line 1066
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mMode:Landroid/widget/ImageView;

    const v1, 0x7f080327

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 1061
    :cond_6
    sput-object v5, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentMode:Ljava/lang/String;

    .line 1062
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mMode:Landroid/widget/ImageView;

    const v1, 0x7f080315

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1074
    :goto_2
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentMode:Ljava/lang/String;

    return-object v0
.end method

.method public setSmallPlayerSize(Lcom/floatingtunes/youtubeplayer/topmusic/bus/PlayerSizeEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 489
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/PlayerSizeEvent;->getType()I

    move-result p1

    const/16 v0, 0x40

    const/16 v1, 0x70

    const/16 v2, 0x2c00

    if-eq p1, v2, :cond_3

    const v3, 0x2716e

    if-eq p1, v3, :cond_2

    const v3, 0x334e0

    if-eq p1, v3, :cond_1

    const v3, 0x3f852

    if-eq p1, v3, :cond_0

    .line 516
    iput v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentSmallPlayerSizeType:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x104

    const/16 v0, 0xb2

    .line 511
    iput v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentSmallPlayerSizeType:I

    goto :goto_0

    :cond_1
    const/16 v1, 0xd2

    const/16 v0, 0x90

    .line 506
    iput v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentSmallPlayerSizeType:I

    goto :goto_0

    :cond_2
    const/16 v1, 0xa0

    const/16 v0, 0x6e

    .line 501
    iput v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentSmallPlayerSizeType:I

    goto :goto_0

    .line 496
    :cond_3
    iput v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCurrentSmallPlayerSizeType:I

    .line 519
    :goto_0
    invoke-static {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/util/Utils;->convertToPx(ILandroid/content/Context;)I

    move-result p1

    .line 520
    invoke-static {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/util/Utils;->convertToPx(ILandroid/content/Context;)I

    move-result v0

    .line 521
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPlayerSizeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 522
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPlayerSizeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 523
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mPlayerSizeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 524
    sput v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->PLAYER_HEIGHT:I

    return-void
.end method

.method public showSmallPlayerAndReplay(Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 218
    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent;->mAdStatus:Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;

    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;->DISMISS:Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;

    if-ne p1, v0, :cond_1

    .line 219
    sget-object p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWebPlayer:Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;

    if-eqz p1, :cond_0

    .line 220
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/JavaScript;->playVideo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->loadJS(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 221
    sput-boolean p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->isPlaying:Z

    .line 223
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSmallContainer:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 224
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 225
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSmallContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mParamsSmallContainer:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public sleepStopEvent(Lcom/floatingtunes/youtubeplayer/topmusic/bus/TimeStopEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 963
    :try_start_0
    sget-object p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWebPlayer:Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;

    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/JavaScript;->pauseVideo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/WebPlayer;->loadJS(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 965
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public startPlaying(Lcom/floatingtunes/youtubeplayer/topmusic/bus/StartEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 171
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->startPlaying()V

    return-void
.end method
