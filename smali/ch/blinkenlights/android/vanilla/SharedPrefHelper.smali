.class public final Lch/blinkenlights/android/vanilla/SharedPrefHelper;
.super Ljava/lang/Object;
.source "SharedPrefHelper.java"


# static fields
.field private static sSettings:Landroid/content/SharedPreferences;


# direct methods
.method public static getSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    .line 44
    sget-object v0, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->sSettings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 45
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->sSettings:Landroid/content/SharedPreferences;

    .line 46
    :cond_0
    sget-object p0, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->sSettings:Landroid/content/SharedPreferences;

    return-object p0
.end method
