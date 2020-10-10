.class public Lch/blinkenlights/android/vanilla/OneCellWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "OneCellWidget.java"


# static fields
.field private static sEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static checkEnabled(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V
    .locals 2

    .line 75
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lch/blinkenlights/android/vanilla/OneCellWidget;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p0

    array-length p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Lch/blinkenlights/android/vanilla/OneCellWidget;->sEnabled:Z

    return-void
.end method

.method public static updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lch/blinkenlights/android/vanilla/Song;I)V
    .locals 5

    .line 89
    sget-boolean v0, Lch/blinkenlights/android/vanilla/OneCellWidget;->sEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->getSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "double_tap"

    .line 93
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 95
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget v4, Lch/blinkenlights/android/vanilla/R$layout;->one_cell_widget:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 98
    :goto_0
    sget v4, Lch/blinkenlights/android/vanilla/R$id;->play_pause:I

    if-eqz v3, :cond_2

    sget v3, Lch/blinkenlights/android/vanilla/R$drawable;->hidden_pause:I

    goto :goto_1

    :cond_2
    sget v3, Lch/blinkenlights/android/vanilla/R$drawable;->hidden_play:I

    :goto_1
    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    if-eqz v0, :cond_3

    const-string v3, "ch.blinkenlights.android.vanilla.action.TOGGLE_PLAYBACK_DELAYED"

    goto :goto_2

    :cond_3
    const-string v3, "ch.blinkenlights.android.vanilla.action.TOGGLE_PLAYBACK"

    .line 105
    :goto_2
    invoke-static {p0, v3}, Lch/blinkenlights/android/vanilla/ShortcutPseudoActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 106
    invoke-static {p0, v1, v3, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 107
    sget v4, Lch/blinkenlights/android/vanilla/R$id;->play_pause:I

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    if-eqz v0, :cond_4

    const-string v0, "ch.blinkenlights.android.vanilla.action.NEXT_SONG_DELAYED"

    goto :goto_3

    :cond_4
    const-string v0, "ch.blinkenlights.android.vanilla.action.NEXT_SONG"

    .line 109
    :goto_3
    invoke-static {p0, v0}, Lch/blinkenlights/android/vanilla/ShortcutPseudoActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 110
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 111
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->next:I

    invoke-virtual {v2, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/4 v0, 0x0

    and-int/lit8 p3, p3, 0x2

    const-string v1, "setText"

    if-eqz p3, :cond_5

    .line 116
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->title:I

    sget p3, Lch/blinkenlights/android/vanilla/R$string;->no_songs:I

    invoke-virtual {v2, p2, v1, p3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_4

    :cond_5
    if-nez p2, :cond_6

    .line 118
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->title:I

    sget p3, Lch/blinkenlights/android/vanilla/R$string;->app_name:I

    invoke-virtual {v2, p2, v1, p3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_4

    .line 120
    :cond_6
    sget p3, Lch/blinkenlights/android/vanilla/R$id;->title:I

    iget-object v0, p2, Lch/blinkenlights/android/vanilla/Song;->title:Ljava/lang/String;

    invoke-virtual {v2, p3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 121
    invoke-virtual {p2, p0}, Lch/blinkenlights/android/vanilla/Song;->getCover(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_4
    if-nez v0, :cond_7

    .line 125
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->cover:I

    sget p3, Lch/blinkenlights/android/vanilla/R$drawable;->fallback_cover:I

    invoke-virtual {v2, p2, p3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_5

    .line 127
    :cond_7
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->cover:I

    invoke-virtual {v2, p2, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 130
    :goto_5
    new-instance p2, Landroid/content/ComponentName;

    const-class p3, Lch/blinkenlights/android/vanilla/OneCellWidget;

    invoke-direct {p2, p0, p3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x0

    .line 51
    sput-boolean p1, Lch/blinkenlights/android/vanilla/OneCellWidget;->sEnabled:Z

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x1

    .line 45
    sput-boolean p1, Lch/blinkenlights/android/vanilla/OneCellWidget;->sEnabled:Z

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3

    .line 60
    invoke-static {}, Lch/blinkenlights/android/vanilla/PlaybackService;->hasInstance()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 61
    invoke-static {p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object p3

    .line 62
    invoke-virtual {p3, v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->getSong(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object v0

    .line 63
    invoke-virtual {p3}, Lch/blinkenlights/android/vanilla/PlaybackService;->getState()I

    move-result p3

    move-object v2, v0

    move v0, p3

    move-object p3, v2

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/4 v1, 0x1

    .line 66
    sput-boolean v1, Lch/blinkenlights/android/vanilla/OneCellWidget;->sEnabled:Z

    .line 67
    invoke-static {p1, p2, p3, v0}, Lch/blinkenlights/android/vanilla/OneCellWidget;->updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lch/blinkenlights/android/vanilla/Song;I)V

    return-void
.end method
