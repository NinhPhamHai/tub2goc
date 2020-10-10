.class Lch/blinkenlights/android/vanilla/PreferencesActivity$ReplayGainFragment$1;
.super Ljava/lang/Object;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/blinkenlights/android/vanilla/PreferencesActivity$ReplayGainFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/PreferencesActivity$ReplayGainFragment;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/PreferencesActivity$ReplayGainFragment;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PreferencesActivity$ReplayGainFragment$1;->this$0:Lch/blinkenlights/android/vanilla/PreferencesActivity$ReplayGainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 0

    .line 132
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PreferencesActivity$ReplayGainFragment$1;->this$0:Lch/blinkenlights/android/vanilla/PreferencesActivity$ReplayGainFragment;

    invoke-static {p1}, Lch/blinkenlights/android/vanilla/PreferencesActivity$ReplayGainFragment;->access$000(Lch/blinkenlights/android/vanilla/PreferencesActivity$ReplayGainFragment;)V

    const/4 p1, 0x0

    return p1
.end method
