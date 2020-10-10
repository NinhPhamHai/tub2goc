.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;
.super Ljava/lang/Object;
.source "Deleter.java"


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;

.field private mContext:Landroid/content/Context;

.field private mDownloadManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

.field private mHandler:Landroid/os/Handler;

.field private mIterator:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;

.field private mView:Landroid/view/View;

.field private final rCommit:Ljava/lang/Runnable;

.field private final rNext:Ljava/lang/Runnable;

.field private final rShow:Ljava/lang/Runnable;

.field private running:Z

.field private snackbar:Lcom/google/android/material/snackbar/Snackbar;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;Landroid/os/Handler;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->running:Z

    .line 39
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->mView:Landroid/view/View;

    .line 40
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->mContext:Landroid/content/Context;

    .line 41
    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->mAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;

    .line 42
    iput-object p4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->mDownloadManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    .line 43
    iput-object p5, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->mIterator:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;

    .line 44
    iput-object p6, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->mHandler:Landroid/os/Handler;

    .line 47
    new-instance p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/-$$Lambda$Deleter$kg0XCOjflXy6tUVFxv6mtRaUqY4;

    invoke-direct {p1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/-$$Lambda$Deleter$kg0XCOjflXy6tUVFxv6mtRaUqY4;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;)V

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->rShow:Ljava/lang/Runnable;

    .line 48
    new-instance p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/-$$Lambda$Deleter$s6nBfpUxjLB1akA5IvwOUIV24LU;

    invoke-direct {p1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/-$$Lambda$Deleter$s6nBfpUxjLB1akA5IvwOUIV24LU;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;)V

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->rNext:Ljava/lang/Runnable;

    .line 49
    new-instance p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/-$$Lambda$Deleter$_5yrJUIKleW7gw1WKJftcXYd1b4;

    invoke-direct {p1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/-$$Lambda$Deleter$_5yrJUIKleW7gw1WKJftcXYd1b4;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;)V

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->rCommit:Ljava/lang/Runnable;

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    return-void
.end method

.method private commit()V
    .locals 5

    .line 91
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 93
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;

    .line 95
    iget-boolean v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->deleted:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 97
    :cond_1
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->mIterator:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v2, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->unHide(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;)V

    .line 98
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->mDownloadManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    invoke-virtual {v2, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->deleteMission(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;)V

    .line 100
    instance-of v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/FinishedMission;

    if-eqz v2, :cond_2

    .line 101
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getUri()Landroid/net/Uri;

    move-result-object v0

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_3

    .line 107
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->pause()V

    return-void

    .line 111
    :cond_3
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->show()V

    return-void
.end method

.method private forget()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->mIterator:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->unHide(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;)V

    .line 63
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->mAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/adapter/MissionAdapter;->applyChanges()V

    .line 65
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->show()V

    return-void
.end method

.method public static synthetic lambda$_5yrJUIKleW7gw1WKJftcXYd1b4(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;)V
    .locals 0

    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->commit()V

    return-void
.end method

.method public static synthetic lambda$kg0XCOjflXy6tUVFxv6mtRaUqY4(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;)V
    .locals 0

    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->show()V

    return-void
.end method

.method public static synthetic lambda$s6nBfpUxjLB1akA5IvwOUIV24LU(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;)V
    .locals 0

    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->next()V

    return-void
.end method

.method private next()V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->mContext:Landroid/content/Context;

    const v1, 0x7f11015b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->mView:Landroid/view/View;

    const/4 v2, -0x2

    invoke-static {v1, v0, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 83
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    const v1, 0x7f1102ff

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/-$$Lambda$Deleter$enhXa5gmE5BmO4GLP7yblGDc5xg;

    invoke-direct {v2, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/-$$Lambda$Deleter$enhXa5gmE5BmO4GLP7yblGDc5xg;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 84
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    .line 85
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 87
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->rCommit:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private pause()V
    .locals 2

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->running:Z

    .line 116
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->rNext:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 117
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->rShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 118
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->rCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 119
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->dismiss()V

    :cond_0
    return-void
.end method

.method private show()V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->pause()V

    .line 72
    iput-boolean v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->running:Z

    .line 74
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->rNext:Ljava/lang/Runnable;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public append(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->mIterator:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;->hide(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;)V

    .line 56
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 58
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->show()V

    return-void
.end method

.method public dispose(Z)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->pause()V

    if-nez p1, :cond_1

    return-void

    .line 134
    :cond_1
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->mDownloadManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    invoke-virtual {v1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->deleteMission(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 135
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic lambda$next$0$Deleter(Landroid/view/View;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->forget()V

    return-void
.end method

.method public resume()V
    .locals 4

    .line 123
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->running:Z

    if-eqz v0, :cond_0

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/ui/common/Deleter;->rShow:Ljava/lang/Runnable;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
