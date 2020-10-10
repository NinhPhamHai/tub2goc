.class Lch/blinkenlights/android/vanilla/PlaybackService$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "PlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/vanilla/PlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/PlaybackService;


# direct methods
.method private constructor <init>(Lch/blinkenlights/android/vanilla/PlaybackService;)V
    .locals 0

    .line 1498
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService$Receiver;->this$0:Lch/blinkenlights/android/vanilla/PlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lch/blinkenlights/android/vanilla/PlaybackService;Lch/blinkenlights/android/vanilla/PlaybackService$1;)V
    .locals 0

    .line 1498
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackService$Receiver;-><init>(Lch/blinkenlights/android/vanilla/PlaybackService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1502
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.AUDIO_BECOMING_NOISY"

    .line 1504
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1505
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService$Receiver;->this$0:Lch/blinkenlights/android/vanilla/PlaybackService;

    iget-boolean p2, p1, Lch/blinkenlights/android/vanilla/PlaybackService;->mHeadsetPause:Z

    if-eqz p2, :cond_1

    .line 1506
    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->pause()I

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 1508
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1509
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackService$Receiver;->this$0:Lch/blinkenlights/android/vanilla/PlaybackService;

    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->userActionTriggered()V

    :cond_1
    :goto_0
    return-void
.end method
