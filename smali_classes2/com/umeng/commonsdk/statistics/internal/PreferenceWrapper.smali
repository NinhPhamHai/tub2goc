.class public Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;
.super Ljava/lang/Object;
.source "PreferenceWrapper.java"


# direct methods
.method public static getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const-string v1, "umeng_general_config"

    .line 29
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
