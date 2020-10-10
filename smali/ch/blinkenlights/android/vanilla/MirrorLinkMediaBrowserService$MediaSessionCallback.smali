.class final Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaSessionCallback;
.super Landroid/media/session/MediaSession$Callback;
.source "MirrorLinkMediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaSessionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;


# direct methods
.method private constructor <init>(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)V
    .locals 0

    .line 594
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaSessionCallback;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$1;)V
    .locals 0

    .line 594
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaSessionCallback;-><init>(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)V

    return-void
.end method


# virtual methods
.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "ch.blinkenlights.android.vanilla.REPEAT"

    .line 643
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 644
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaSessionCallback;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {p1}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$800(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const-string p2, "ch.blinkenlights.android.vanilla.SHUFFLE"

    .line 645
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 646
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaSessionCallback;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {p1}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$800(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onFastForward()V
    .locals 2

    .line 633
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaSessionCallback;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$800(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 613
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaSessionCallback;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$800(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPlay()V
    .locals 2

    .line 598
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaSessionCallback;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$800(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 608
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaSessionCallback;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {p2}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$800(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaSessionCallback;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$800(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 652
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaSessionCallback;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {p1}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$800(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onRewind()V
    .locals 2

    .line 638
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaSessionCallback;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$800(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onSeekTo(J)V
    .locals 3

    .line 603
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaSessionCallback;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$800(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaSessionCallback;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {v1}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$800(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Landroid/os/Handler;

    move-result-object v1

    long-to-int p2, p1

    const/4 p1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSkipToNext()V
    .locals 2

    .line 623
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaSessionCallback;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$800(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onSkipToPrevious()V
    .locals 2

    .line 628
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaSessionCallback;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$800(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 618
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaSessionCallback;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$800(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
