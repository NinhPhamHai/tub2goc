.class Lch/blinkenlights/android/vanilla/PlaybackActivity$2;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/blinkenlights/android/vanilla/PlaybackActivity;->setSong(Lch/blinkenlights/android/vanilla/Song;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/PlaybackActivity;

.field final synthetic val$song:Lch/blinkenlights/android/vanilla/Song;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/PlaybackActivity;Lch/blinkenlights/android/vanilla/Song;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity$2;->this$0:Lch/blinkenlights/android/vanilla/PlaybackActivity;

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity$2;->val$song:Lch/blinkenlights/android/vanilla/Song;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 304
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity$2;->this$0:Lch/blinkenlights/android/vanilla/PlaybackActivity;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity$2;->val$song:Lch/blinkenlights/android/vanilla/Song;

    invoke-virtual {v0, v1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->onSongChange(Lch/blinkenlights/android/vanilla/Song;)V

    return-void
.end method
