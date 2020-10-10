.class Lch/blinkenlights/android/vanilla/FullPlaybackActivity$2;
.super Ljava/lang/Object;
.source "FullPlaybackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/blinkenlights/android/vanilla/FullPlaybackActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/FullPlaybackActivity;

.field final synthetic val$song:Lch/blinkenlights/android/vanilla/Song;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/FullPlaybackActivity;Lch/blinkenlights/android/vanilla/Song;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity$2;->this$0:Lch/blinkenlights/android/vanilla/FullPlaybackActivity;

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity$2;->val$song:Lch/blinkenlights/android/vanilla/Song;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 386
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "type"

    const/4 v0, 0x2

    .line 387
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 388
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity$2;->val$song:Lch/blinkenlights/android/vanilla/Song;

    iget-wide v0, p2, Lch/blinkenlights/android/vanilla/Song;->id:J

    const-string p2, "id"

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 389
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity$2;->this$0:Lch/blinkenlights/android/vanilla/FullPlaybackActivity;

    iget-object p2, p2, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
