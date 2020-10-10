.class public Lch/blinkenlights/android/vanilla/PreferencesActivity;
.super Landroid/preference/PreferenceActivity;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/blinkenlights/android/vanilla/PreferencesActivity$PlaylistFragment;,
        Lch/blinkenlights/android/vanilla/PreferencesActivity$MiscFragment;,
        Lch/blinkenlights/android/vanilla/PreferencesActivity$CoverArtFragment;,
        Lch/blinkenlights/android/vanilla/PreferencesActivity$ShakeFragment;,
        Lch/blinkenlights/android/vanilla/PreferencesActivity$NotificationsFragment;,
        Lch/blinkenlights/android/vanilla/PreferencesActivity$LibraryFragment;,
        Lch/blinkenlights/android/vanilla/PreferencesActivity$PlaybackFragment;,
        Lch/blinkenlights/android/vanilla/PreferencesActivity$EqualizerFragment;,
        Lch/blinkenlights/android/vanilla/PreferencesActivity$ReplayGainFragment;,
        Lch/blinkenlights/android/vanilla/PreferencesActivity$AudioFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    sget v1, Lch/blinkenlights/android/vanilla/R$xml;->preference_headers:I

    invoke-virtual {p0, v1, v0}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 88
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 90
    invoke-static {}, Lch/blinkenlights/android/vanilla/ThemeHelper;->usesHoloTheme()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    const-class v3, Lch/blinkenlights/android/vanilla/PreferencesTheme;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 71
    sget v0, Lch/blinkenlights/android/vanilla/R$style;->BackActionBar:I

    invoke-static {p0, v0}, Lch/blinkenlights/android/vanilla/ThemeHelper;->setTheme(Landroid/content/Context;I)V

    .line 72
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->getSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 78
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 79
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->getSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "selected_theme"

    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->recreate()V

    :cond_0
    return-void
.end method
