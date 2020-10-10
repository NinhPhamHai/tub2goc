.class Lch/blinkenlights/android/vanilla/LibraryActivity$4;
.super Ljava/lang/Object;
.source "LibraryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/LibraryActivity;Landroid/content/Intent;)V
    .locals 0

    .line 754
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryActivity$4;->this$0:Lch/blinkenlights/android/vanilla/LibraryActivity;

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/LibraryActivity$4;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 756
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/LibraryActivity$4;->this$0:Lch/blinkenlights/android/vanilla/LibraryActivity;

    iget-object p1, p1, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lch/blinkenlights/android/vanilla/LibraryActivity$4;->val$intent:Landroid/content/Intent;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
