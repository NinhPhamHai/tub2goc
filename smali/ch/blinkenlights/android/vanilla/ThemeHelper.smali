.class public Lch/blinkenlights/android/vanilla/ThemeHelper;
.super Ljava/lang/Object;
.source "ThemeHelper.java"


# direct methods
.method public static final fetchThemeColor(Landroid/content/Context;I)I
    .locals 2

    const/4 v0, 0x1

    .line 125
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 126
    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 127
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static final getDefaultCoverColors(Landroid/content/Context;)[I
    .locals 4

    .line 135
    invoke-static {}, Lch/blinkenlights/android/vanilla/ThemeHelper;->usesHoloTheme()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 136
    new-array p0, v1, [I

    fill-array-data p0, :array_0

    return-object p0

    :cond_0
    const v0, 0x1010031

    .line 138
    invoke-static {p0, v0}, Lch/blinkenlights/android/vanilla/ThemeHelper;->fetchThemeColor(Landroid/content/Context;I)I

    move-result p0

    const v0, 0x171717

    const v2, -0x777778

    const/4 v3, 0x1

    if-le p0, v2, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    mul-int v2, v2, v0

    .line 140
    new-array v0, v1, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    add-int/2addr p0, v2

    aput p0, v0, v3

    return-object v0

    nop

    :array_0
    .array-data 4
        -0x1000000
        -0xbfbfc0
    .end array-data
.end method

.method public static final getPlayButtonResource(Z)I
    .locals 2

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    if-eqz p0, :cond_0

    .line 73
    sget p0, Lch/blinkenlights/android/vanilla/R$drawable;->widget_pause:I

    goto :goto_0

    :cond_0
    sget p0, Lch/blinkenlights/android/vanilla/R$drawable;->widget_play:I

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    .line 75
    sget p0, Lch/blinkenlights/android/vanilla/R$drawable;->pause:I

    goto :goto_0

    :cond_2
    sget p0, Lch/blinkenlights/android/vanilla/R$drawable;->play:I

    :goto_0
    return p0
.end method

.method private static final getSelectedThemeIndex(Landroid/content/Context;)I
    .locals 4

    .line 102
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->getSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "selected_theme"

    const-string v2, "0"

    .line 103
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lch/blinkenlights/android/vanilla/R$array;->theme_ids:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 106
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 107
    aget-object v3, p0, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static final getThemeResource(Landroid/content/Context;I)I
    .locals 1

    .line 41
    invoke-static {}, Lch/blinkenlights/android/vanilla/ThemeHelper;->usesHoloTheme()Z

    move-result v0

    if-nez v0, :cond_5

    .line 44
    sget v0, Lch/blinkenlights/android/vanilla/R$style;->Playback:I

    if-ne p1, v0, :cond_0

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lch/blinkenlights/android/vanilla/R$array;->theme_category_playback:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    .line 46
    :cond_0
    sget v0, Lch/blinkenlights/android/vanilla/R$style;->Library:I

    if-ne p1, v0, :cond_1

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lch/blinkenlights/android/vanilla/R$array;->theme_category_library:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    .line 48
    :cond_1
    sget v0, Lch/blinkenlights/android/vanilla/R$style;->BackActionBar:I

    if-ne p1, v0, :cond_2

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lch/blinkenlights/android/vanilla/R$array;->theme_category_backactionbar:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    .line 50
    :cond_2
    sget v0, Lch/blinkenlights/android/vanilla/R$style;->PopupDialog:I

    if-ne p1, v0, :cond_3

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lch/blinkenlights/android/vanilla/R$array;->theme_category_popupdialog:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    .line 52
    :cond_3
    sget v0, Lch/blinkenlights/android/vanilla/R$style;->BottomSheetDialog:I

    if-ne p1, v0, :cond_4

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lch/blinkenlights/android/vanilla/R$array;->theme_category_bottomsheetdialog:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 57
    :goto_0
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/ThemeHelper;->getSelectedThemeIndex(Landroid/content/Context;)I

    move-result p0

    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    .line 58
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 55
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "setTheme() called with unknown theme!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    move p0, p1

    :goto_1
    return p0
.end method

.method public static final setTheme(Landroid/content/Context;I)V
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lch/blinkenlights/android/vanilla/ThemeHelper;->getThemeResource(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->setTheme(I)V

    return-void
.end method

.method public static final usesHoloTheme()Z
    .locals 2

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
