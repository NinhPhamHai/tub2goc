.class Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$1;
.super Ljava/util/TimerTask;
.source "PreferencesMediaLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$1;->this$0:Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 158
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$1;->this$0:Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$1$1;

    invoke-direct {v1, p0}, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$1$1;-><init>(Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
