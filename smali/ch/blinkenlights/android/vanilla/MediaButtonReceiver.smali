.class public Lch/blinkenlights/android/vanilla/MediaButtonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaButtonReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/blinkenlights/android/vanilla/MediaButtonReceiver$DelayedClickCounter;
    }
.end annotation


# static fields
.field private static sBeep:I = -0x1

.field private static sBeepPlayer:Landroid/media/AsyncPlayer; = null

.field private static sBeepSound:Landroid/net/Uri; = null

.field private static sLastClickTime:J = 0x0L

.field private static sUseControls:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 42
    sget-wide v0, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;->sLastClickTime:J

    return-wide v0
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;->runAction(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static beep(Landroid/content/Context;)V
    .locals 4

    .line 77
    sget v0, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;->sBeep:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 78
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->getSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "media_button_beep"

    .line 79
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput v0, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;->sBeep:I

    .line 82
    :cond_0
    sget v0, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;->sBeep:I

    if-ne v0, v1, :cond_2

    .line 83
    sget-object v0, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;->sBeepPlayer:Landroid/media/AsyncPlayer;

    if-nez v0, :cond_1

    .line 84
    new-instance v0, Landroid/media/AsyncPlayer;

    const-string v1, "BeepPlayer"

    invoke-direct {v0, v1}, Landroid/media/AsyncPlayer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;->sBeepPlayer:Landroid/media/AsyncPlayer;

    const-string v0, "android.resource://ch.blinkenlights.android.vanilla/raw/beep"

    .line 85
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;->sBeepSound:Landroid/net/Uri;

    .line 87
    :cond_1
    sget-object v0, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;->sBeepPlayer:Landroid/media/AsyncPlayer;

    sget-object v1, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;->sBeepSound:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/media/AsyncPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZI)V

    :cond_2
    return-void
.end method

.method public static processKey(Landroid/content/Context;Landroid/view/KeyEvent;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 128
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;->useHeadsetControls(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 131
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    .line 134
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v3, 0x4f

    if-eq p1, v3, :cond_3

    const/16 v3, 0x7e

    if-eq p1, v3, :cond_2

    const/16 v3, 0x7f

    if-eq p1, v3, :cond_1

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    if-nez v1, :cond_5

    const-string v2, "ch.blinkenlights.android.vanilla.action.PREVIOUS_SONG_AUTOPLAY"

    goto :goto_1

    :pswitch_1
    if-nez v1, :cond_5

    const-string v2, "ch.blinkenlights.android.vanilla.action.NEXT_SONG_AUTOPLAY"

    goto :goto_1

    :cond_1
    :pswitch_2
    if-nez v1, :cond_5

    const-string v2, "ch.blinkenlights.android.vanilla.action.PAUSE"

    goto :goto_1

    :cond_2
    if-nez v1, :cond_5

    const-string v2, "ch.blinkenlights.android.vanilla.action.PLAY"

    goto :goto_1

    :cond_3
    :pswitch_3
    if-nez v1, :cond_5

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 142
    sget-wide v3, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;->sLastClickTime:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x258

    cmp-long p1, v3, v5

    if-gez p1, :cond_4

    .line 143
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;->beep(Landroid/content/Context;)V

    .line 144
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 145
    new-instance v3, Lch/blinkenlights/android/vanilla/MediaButtonReceiver$DelayedClickCounter;

    invoke-direct {v3, p0, v0, v1}, Lch/blinkenlights/android/vanilla/MediaButtonReceiver$DelayedClickCounter;-><init>(Landroid/content/Context;J)V

    .line 146
    invoke-virtual {p1, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    const-string v2, "ch.blinkenlights.android.vanilla.action.TOGGLE_PLAYBACK"

    .line 150
    :goto_0
    sput-wide v0, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;->sLastClickTime:J

    .line 175
    :cond_5
    :goto_1
    invoke-static {p0, v2}, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;->runAction(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static reloadPreference(Landroid/content/Context;)V
    .locals 0

    const/4 p0, -0x1

    .line 98
    sput p0, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;->sUseControls:I

    .line 99
    sput p0, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;->sBeep:I

    return-void
.end method

.method private static runAction(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 190
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lch/blinkenlights/android/vanilla/PlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "extra_early_notification"

    .line 192
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 194
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 195
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method public static useHeadsetControls(Landroid/content/Context;)Z
    .locals 3

    .line 110
    sget v0, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;->sUseControls:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 111
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->getSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "media_button"

    .line 112
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput p0, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;->sUseControls:I

    .line 115
    :cond_0
    sget p0, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;->sUseControls:I

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 243
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.extra.KEY_EVENT"

    .line 244
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/view/KeyEvent;

    .line 245
    invoke-static {p1, p2}, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;->processKey(Landroid/content/Context;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 246
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 247
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    :cond_0
    return-void
.end method
