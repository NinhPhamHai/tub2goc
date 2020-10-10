.class Lch/blinkenlights/android/vanilla/LibraryActivity$2;
.super Ljava/lang/Object;
.source "LibraryActivity.java"

# interfaces
.implements Lch/blinkenlights/android/vanilla/PlaylistInputDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/blinkenlights/android/vanilla/LibraryActivity;->onFancyItemSelected(Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/LibraryActivity;

.field final synthetic val$playlistId:J


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/LibraryActivity;J)V
    .locals 0

    .line 738
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryActivity$2;->this$0:Lch/blinkenlights/android/vanilla/LibraryActivity;

    iput-wide p2, p0, Lch/blinkenlights/android/vanilla/LibraryActivity$2;->val$playlistId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    .line 741
    new-instance v0, Lch/blinkenlights/android/vanilla/PlaylistTask;

    iget-wide v1, p0, Lch/blinkenlights/android/vanilla/LibraryActivity$2;->val$playlistId:J

    invoke-direct {v0, v1, v2, p1}, Lch/blinkenlights/android/vanilla/PlaylistTask;-><init>(JLjava/lang/String;)V

    .line 742
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryActivity$2;->this$0:Lch/blinkenlights/android/vanilla/LibraryActivity;

    iget-object p1, p1, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
