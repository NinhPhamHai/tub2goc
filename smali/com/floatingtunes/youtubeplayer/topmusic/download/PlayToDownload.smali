.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/PlayToDownload;
.super Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;
.source "PlayToDownload.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static PARAM:Ljava/lang/String; = "VIDEO_ID"


# instance fields
.field private currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

.field private currentWorker:Lio/reactivex/disposables/Disposable;

.field loadingView:Landroid/widget/ProgressBar;

.field private mVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

.field private selectedVideoStreamIndex:I

.field private sortedVideoStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;-><init>()V

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/PlayToDownload;->selectedVideoStreamIndex:I

    return-void
.end method

.method public static actionStart(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V
    .locals 2

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/PlayToDownload;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/PlayToDownload;->PARAM:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private handleResult(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 2

    .line 145
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoStreams()Ljava/util/List;

    move-result-object v0

    .line 146
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoOnlyStreams()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    .line 143
    invoke-static {p0, v0, p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->getSortedStreamVideosList(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/PlayToDownload;->sortedVideoStreams:Ljava/util/List;

    .line 148
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/PlayToDownload;->sortedVideoStreams:Ljava/util/List;

    invoke-static {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->getDefaultResolutionIndex(Landroid/content/Context;Ljava/util/List;)I

    move-result p1

    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/PlayToDownload;->selectedVideoStreamIndex:I

    return-void
.end method

.method static synthetic lambda$loadData$1(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private loadData()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/PlayToDownload;->mVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www.youtube.com/watch?v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/PlayToDownload;->mVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getVideoId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 100
    invoke-static {v1, v0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ExtractorHelper;->getStreamInfo(ILjava/lang/String;Z)Lio/reactivex/Single;

    move-result-object v0

    .line 101
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 102
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$PlayToDownload$bCtvdSg5QzY8t7On5MGNCHX6n-Q;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$PlayToDownload$bCtvdSg5QzY8t7On5MGNCHX6n-Q;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/PlayToDownload;)V

    sget-object v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$PlayToDownload$FZj9ORoOq9IiTbHt8Lxwwd5g97I;->INSTANCE:Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$PlayToDownload$FZj9ORoOq9IiTbHt8Lxwwd5g97I;

    .line 103
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/PlayToDownload;->currentWorker:Lio/reactivex/disposables/Disposable;

    goto :goto_0

    :cond_0
    const-string v0, "error"

    .line 115
    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/ToastUtil;->showMessage(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method


# virtual methods
.method public closeDialogCallback(Lcom/floatingtunes/youtubeplayer/topmusic/bus/DownloadDiaogEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public synthetic lambda$loadData$0$PlayToDownload(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/PlayToDownload;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 106
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/PlayToDownload;->handleResult(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 107
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/PlayToDownload;->openDownloadDialog()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    const p1, 0x7f0c0029

    .line 67
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 68
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/PlayToDownload;->PARAM:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/PlayToDownload;->mVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    .line 74
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/PlayToDownload;->loadData()V

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 85
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 86
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 164
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 153
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 158
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public openDownloadDialog()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/PlayToDownload;->loadingView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/PlayToDownload;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->newInstance(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/PlayToDownload;->sortedVideoStreams:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->setVideoStreams(Ljava/util/List;)V

    .line 130
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/PlayToDownload;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getAudioStreams()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->setAudioStreams(Ljava/util/List;)V

    .line 131
    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/PlayToDownload;->selectedVideoStreamIndex:I

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->setSelectedVideoStream(I)V

    .line 132
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/PlayToDownload;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getSubtitles()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->setSubtitleStreams(Ljava/util/List;)V

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "downloadDialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
