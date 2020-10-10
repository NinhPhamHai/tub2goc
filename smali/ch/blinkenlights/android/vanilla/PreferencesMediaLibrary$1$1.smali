.class Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$1$1;
.super Ljava/lang/Object;
.source "PreferencesMediaLibrary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$1;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$1;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$1$1;->this$1:Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 160
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$1$1;->this$1:Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$1;

    iget-object v0, v0, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary$1;->this$0:Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;->access$000(Lch/blinkenlights/android/vanilla/PreferencesMediaLibrary;)V

    return-void
.end method
