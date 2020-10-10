.class Lch/blinkenlights/android/vanilla/AudioSearchActivity$AudioSearchWorker;
.super Landroid/os/AsyncTask;
.source "AudioSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/vanilla/AudioSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioSearchWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/AudioSearchActivity;


# direct methods
.method private constructor <init>(Lch/blinkenlights/android/vanilla/AudioSearchActivity;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/AudioSearchActivity$AudioSearchWorker;->this$0:Lch/blinkenlights/android/vanilla/AudioSearchActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lch/blinkenlights/android/vanilla/AudioSearchActivity;Lch/blinkenlights/android/vanilla/AudioSearchActivity$1;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/AudioSearchActivity$AudioSearchWorker;-><init>(Lch/blinkenlights/android/vanilla/AudioSearchActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/AudioSearchActivity$AudioSearchWorker;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 5

    .line 73
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/AudioSearchActivity$AudioSearchWorker;->this$0:Lch/blinkenlights/android/vanilla/AudioSearchActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 74
    new-instance v1, Lch/blinkenlights/android/vanilla/MediaAdapter;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3, v3}, Lch/blinkenlights/android/vanilla/MediaAdapter;-><init>(Landroid/content/Context;ILch/blinkenlights/android/vanilla/Limiter;Lch/blinkenlights/android/vanilla/LibraryActivity;)V

    const/4 v4, 0x0

    .line 75
    aget-object p1, p1, v4

    invoke-virtual {v1, p1}, Lch/blinkenlights/android/vanilla/MediaAdapter;->setFilter(Ljava/lang/String;)V

    .line 77
    sget-object p1, Lch/blinkenlights/android/vanilla/Song;->FILLED_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v1, p1}, Lch/blinkenlights/android/vanilla/MediaAdapter;->buildSongQuery([Ljava/lang/String;)Lch/blinkenlights/android/vanilla/QueryTask;

    move-result-object p1

    .line 78
    iput v4, p1, Lch/blinkenlights/android/vanilla/QueryTask;->mode:I

    .line 80
    invoke-static {v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->pause()I

    .line 82
    invoke-virtual {v0, v2}, Lch/blinkenlights/android/vanilla/PlaybackService;->setShuffleMode(I)I

    .line 83
    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->emptyQueue()V

    .line 84
    invoke-virtual {v0, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->addSongs(Lch/blinkenlights/android/vanilla/QueryTask;)V

    .line 85
    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->getTimelineLength()I

    move-result p1

    if-lez p1, :cond_0

    .line 86
    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->play()I

    :cond_0
    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 70
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/AudioSearchActivity$AudioSearchWorker;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 92
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/AudioSearchActivity$AudioSearchWorker;->this$0:Lch/blinkenlights/android/vanilla/AudioSearchActivity;

    invoke-static {p1}, Lch/blinkenlights/android/vanilla/AudioSearchActivity;->access$100(Lch/blinkenlights/android/vanilla/AudioSearchActivity;)V

    return-void
.end method
