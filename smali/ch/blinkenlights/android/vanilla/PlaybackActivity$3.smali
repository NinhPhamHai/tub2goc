.class Lch/blinkenlights/android/vanilla/PlaybackActivity$3;
.super Ljava/lang/Object;
.source "PlaybackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/blinkenlights/android/vanilla/PlaybackActivity;->showToast(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/PlaybackActivity;

.field final synthetic val$duration:I

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/PlaybackActivity;Ljava/lang/String;I)V
    .locals 0

    .line 589
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity$3;->this$0:Lch/blinkenlights/android/vanilla/PlaybackActivity;

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity$3;->val$message:Ljava/lang/String;

    iput p3, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity$3;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 592
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity$3;->this$0:Lch/blinkenlights/android/vanilla/PlaybackActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity$3;->val$message:Ljava/lang/String;

    iget v2, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity$3;->val$duration:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
