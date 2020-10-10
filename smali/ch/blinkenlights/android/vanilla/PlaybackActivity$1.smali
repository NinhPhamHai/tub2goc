.class Lch/blinkenlights/android/vanilla/PlaybackActivity$1;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/blinkenlights/android/vanilla/PlaybackActivity;->setState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/PlaybackActivity;

.field final synthetic val$state:I

.field final synthetic val$toggled:I


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/PlaybackActivity;II)V
    .locals 0

    .line 254
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity$1;->this$0:Lch/blinkenlights/android/vanilla/PlaybackActivity;

    iput p2, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity$1;->val$state:I

    iput p3, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity$1;->val$toggled:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 258
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity$1;->this$0:Lch/blinkenlights/android/vanilla/PlaybackActivity;

    iget v1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity$1;->val$state:I

    iget v2, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity$1;->val$toggled:I

    invoke-virtual {v0, v1, v2}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->onStateChange(II)V

    return-void
.end method
