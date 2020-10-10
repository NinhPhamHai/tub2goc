.class Lch/blinkenlights/android/vanilla/RemoteControlImplLp$1;
.super Landroid/media/session/MediaSession$Callback;
.source "RemoteControlImplLp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/blinkenlights/android/vanilla/RemoteControlImplLp;->initializeRemote()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/RemoteControlImplLp;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/RemoteControlImplLp;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplLp$1;->this$0:Lch/blinkenlights/android/vanilla/RemoteControlImplLp;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 4

    .line 71
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplLp$1;->this$0:Lch/blinkenlights/android/vanilla/RemoteControlImplLp;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/RemoteControlImplLp;->access$000(Lch/blinkenlights/android/vanilla/RemoteControlImplLp;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x4f

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-static {v0, v1}, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;->processKey(Landroid/content/Context;Landroid/view/KeyEvent;)Z

    return-void
.end method

.method public onPlay()V
    .locals 4

    .line 75
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplLp$1;->this$0:Lch/blinkenlights/android/vanilla/RemoteControlImplLp;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/RemoteControlImplLp;->access$000(Lch/blinkenlights/android/vanilla/RemoteControlImplLp;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x4f

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-static {v0, v1}, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;->processKey(Landroid/content/Context;Landroid/view/KeyEvent;)Z

    return-void
.end method

.method public onSkipToNext()V
    .locals 4

    .line 79
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplLp$1;->this$0:Lch/blinkenlights/android/vanilla/RemoteControlImplLp;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/RemoteControlImplLp;->access$000(Lch/blinkenlights/android/vanilla/RemoteControlImplLp;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x57

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-static {v0, v1}, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;->processKey(Landroid/content/Context;Landroid/view/KeyEvent;)Z

    return-void
.end method

.method public onSkipToPrevious()V
    .locals 4

    .line 83
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplLp$1;->this$0:Lch/blinkenlights/android/vanilla/RemoteControlImplLp;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/RemoteControlImplLp;->access$000(Lch/blinkenlights/android/vanilla/RemoteControlImplLp;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x58

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-static {v0, v1}, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;->processKey(Landroid/content/Context;Landroid/view/KeyEvent;)Z

    return-void
.end method

.method public onStop()V
    .locals 4

    .line 88
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/RemoteControlImplLp$1;->this$0:Lch/blinkenlights/android/vanilla/RemoteControlImplLp;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/RemoteControlImplLp;->access$000(Lch/blinkenlights/android/vanilla/RemoteControlImplLp;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x7f

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-static {v0, v1}, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;->processKey(Landroid/content/Context;Landroid/view/KeyEvent;)Z

    return-void
.end method
