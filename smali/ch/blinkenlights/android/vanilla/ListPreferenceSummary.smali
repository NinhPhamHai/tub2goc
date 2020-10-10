.class public Lch/blinkenlights/android/vanilla/ListPreferenceSummary;
.super Landroid/preference/ListPreference;
.source "ListPreferenceSummary.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 45
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 58
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/ListPreferenceSummary;->shouldDisableDependents()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/preference/ListPreference;->notifyDependencyChange(Z)V

    .line 59
    invoke-virtual {p0}, Landroid/preference/ListPreference;->notifyChanged()V

    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 2

    .line 51
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
