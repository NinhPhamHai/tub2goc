.class public Lch/blinkenlights/android/vanilla/AudioSearchActivity;
.super Lch/blinkenlights/android/vanilla/PlaybackActivity;
.source "AudioSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/blinkenlights/android/vanilla/AudioSearchActivity$AudioSearchWorker;
    }
.end annotation


# instance fields
.field private mWorker:Lch/blinkenlights/android/vanilla/AudioSearchActivity$AudioSearchWorker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lch/blinkenlights/android/vanilla/AudioSearchActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/AudioSearchActivity;->onSearchCompleted()V

    return-void
.end method

.method private onSearchCompleted()V
    .locals 0

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 38
    invoke-super {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    const-string v2, "android.media.action.MEDIA_PLAY_FROM_SEARCH"

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 47
    :cond_1
    invoke-static {p0, p1}, Lch/blinkenlights/android/vanilla/PermissionRequestActivity;->requestPermissions(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 52
    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 55
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "query"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 56
    new-instance v2, Lch/blinkenlights/android/vanilla/AudioSearchActivity$AudioSearchWorker;

    invoke-direct {v2, p0, v0}, Lch/blinkenlights/android/vanilla/AudioSearchActivity$AudioSearchWorker;-><init>(Lch/blinkenlights/android/vanilla/AudioSearchActivity;Lch/blinkenlights/android/vanilla/AudioSearchActivity$1;)V

    iput-object v2, p0, Lch/blinkenlights/android/vanilla/AudioSearchActivity;->mWorker:Lch/blinkenlights/android/vanilla/AudioSearchActivity$AudioSearchWorker;

    .line 57
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/AudioSearchActivity;->mWorker:Lch/blinkenlights/android/vanilla/AudioSearchActivity$AudioSearchWorker;

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 43
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
