.class public Lch/blinkenlights/android/vanilla/PreferencesActivity$ReplayGainFragment;
.super Landroid/preference/PreferenceFragment;
.source "PreferencesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/vanilla/PreferencesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReplayGainFragment"
.end annotation


# instance fields
.field cbAlbumReplayGain:Landroid/preference/CheckBoxPreference;

.field cbTrackReplayGain:Landroid/preference/CheckBoxPreference;

.field sbGainBump:Lch/blinkenlights/android/vanilla/SeekBarPreference;

.field sbUntaggedDebump:Lch/blinkenlights/android/vanilla/SeekBarPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lch/blinkenlights/android/vanilla/PreferencesActivity$ReplayGainFragment;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PreferencesActivity$ReplayGainFragment;->updateConfigWidgets()V

    return-void
.end method

.method private updateConfigWidgets()V
    .locals 2

    .line 143
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PreferencesActivity$ReplayGainFragment;->cbTrackReplayGain:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PreferencesActivity$ReplayGainFragment;->cbAlbumReplayGain:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 144
    :goto_1
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PreferencesActivity$ReplayGainFragment;->sbGainBump:Lch/blinkenlights/android/vanilla/SeekBarPreference;

    invoke-virtual {v1, v0}, Landroid/preference/DialogPreference;->setEnabled(Z)V

    .line 145
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PreferencesActivity$ReplayGainFragment;->sbUntaggedDebump:Lch/blinkenlights/android/vanilla/SeekBarPreference;

    invoke-virtual {v1, v0}, Landroid/preference/DialogPreference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 122
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 124
    sget p1, Lch/blinkenlights/android/vanilla/R$xml;->preference_replaygain:I

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "enable_track_replaygain"

    .line 125
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PreferencesActivity$ReplayGainFragment;->cbTrackReplayGain:Landroid/preference/CheckBoxPreference;

    const-string p1, "enable_album_replaygain"

    .line 126
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PreferencesActivity$ReplayGainFragment;->cbAlbumReplayGain:Landroid/preference/CheckBoxPreference;

    const-string p1, "replaygain_bump"

    .line 127
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lch/blinkenlights/android/vanilla/SeekBarPreference;

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PreferencesActivity$ReplayGainFragment;->sbGainBump:Lch/blinkenlights/android/vanilla/SeekBarPreference;

    const-string p1, "replaygain_untagged_debump"

    .line 128
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lch/blinkenlights/android/vanilla/SeekBarPreference;

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PreferencesActivity$ReplayGainFragment;->sbUntaggedDebump:Lch/blinkenlights/android/vanilla/SeekBarPreference;

    .line 130
    new-instance p1, Lch/blinkenlights/android/vanilla/PreferencesActivity$ReplayGainFragment$1;

    invoke-direct {p1, p0}, Lch/blinkenlights/android/vanilla/PreferencesActivity$ReplayGainFragment$1;-><init>(Lch/blinkenlights/android/vanilla/PreferencesActivity$ReplayGainFragment;)V

    .line 137
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PreferencesActivity$ReplayGainFragment;->cbTrackReplayGain:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 138
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PreferencesActivity$ReplayGainFragment;->cbAlbumReplayGain:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 139
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PreferencesActivity$ReplayGainFragment;->updateConfigWidgets()V

    return-void
.end method
