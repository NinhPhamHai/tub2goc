.class public Lch/blinkenlights/android/vanilla/FourSquareWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "FourSquareWidget.java"


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

    const-class v1, Lch/blinkenlights/android/vanilla/FourSquareWidget;

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
    sput-boolean p0, Lch/blinkenlights/android/vanilla/FourSquareWidget;->sEnabled:Z

    return-void
.end method

.method public static updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lch/blinkenlights/android/vanilla/Song;I)V
    .locals 8

    .line 89
    sget-boolean v0, Lch/blinkenlights/android/vanilla/FourSquareWidget;->sEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lch/blinkenlights/android/vanilla/R$layout;->four_square_widget:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 95
    :goto_0
    sget v3, Lch/blinkenlights/android/vanilla/R$drawable;->play:I

    .line 96
    sget v4, Lch/blinkenlights/android/vanilla/R$drawable;->next:I

    const/4 v5, 0x0

    and-int/lit8 p3, p3, 0x2

    const-string v6, "setText"

    const/4 v7, 0x4

    if-eqz p3, :cond_2

    .line 100
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->buttons:I

    invoke-virtual {v0, p2, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 101
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->title:I

    invoke-virtual {v0, p2, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 102
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->artist:I

    sget p3, Lch/blinkenlights/android/vanilla/R$string;->no_songs:I

    invoke-virtual {v0, p2, v6, p3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_2

    :cond_2
    if-nez p2, :cond_3

    .line 104
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->buttons:I

    invoke-virtual {v0, p2, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 105
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->title:I

    invoke-virtual {v0, p2, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 106
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->artist:I

    sget p3, Lch/blinkenlights/android/vanilla/R$string;->app_name:I

    invoke-virtual {v0, p2, v6, p3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_2

    .line 108
    :cond_3
    sget p3, Lch/blinkenlights/android/vanilla/R$id;->title:I

    invoke-virtual {v0, p3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 109
    sget p3, Lch/blinkenlights/android/vanilla/R$id;->buttons:I

    invoke-virtual {v0, p3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 110
    sget p3, Lch/blinkenlights/android/vanilla/R$id;->title:I

    iget-object v3, p2, Lch/blinkenlights/android/vanilla/Song;->title:Ljava/lang/String;

    invoke-virtual {v0, p3, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 111
    sget p3, Lch/blinkenlights/android/vanilla/R$id;->artist:I

    iget-object v3, p2, Lch/blinkenlights/android/vanilla/Song;->artist:Ljava/lang/String;

    invoke-virtual {v0, p3, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 112
    invoke-virtual {p2, p0}, Lch/blinkenlights/android/vanilla/Song;->getCover(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v1, :cond_4

    .line 113
    sget p2, Lch/blinkenlights/android/vanilla/R$drawable;->hidden_pause:I

    goto :goto_1

    :cond_4
    sget p2, Lch/blinkenlights/android/vanilla/R$drawable;->hidden_play:I

    :goto_1
    move v3, p2

    .line 114
    sget v4, Lch/blinkenlights/android/vanilla/R$drawable;->hidden_next:I

    .line 117
    :goto_2
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->play_pause:I

    invoke-virtual {v0, p2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 118
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->next:I

    invoke-virtual {v0, p2, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    if-nez v5, :cond_5

    .line 121
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->cover:I

    sget p3, Lch/blinkenlights/android/vanilla/R$drawable;->fallback_cover_large:I

    invoke-virtual {v0, p2, p3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_3

    .line 123
    :cond_5
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->cover:I

    invoke-virtual {v0, p2, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 131
    :goto_3
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lch/blinkenlights/android/vanilla/LibraryActivity;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "android.intent.action.MAIN"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 132
    invoke-static {p0, v2, p2, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 133
    sget p3, Lch/blinkenlights/android/vanilla/R$id;->title:I

    invoke-virtual {v0, p3, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 134
    sget p3, Lch/blinkenlights/android/vanilla/R$id;->artist:I

    invoke-virtual {v0, p3, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string p2, "ch.blinkenlights.android.vanilla.action.TOGGLE_PLAYBACK"

    .line 136
    invoke-static {p0, p2}, Lch/blinkenlights/android/vanilla/ShortcutPseudoActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 137
    invoke-static {p0, v2, p2, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 138
    sget p3, Lch/blinkenlights/android/vanilla/R$id;->play_pause:I

    invoke-virtual {v0, p3, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string p2, "ch.blinkenlights.android.vanilla.action.NEXT_SONG"

    .line 140
    invoke-static {p0, p2}, Lch/blinkenlights/android/vanilla/ShortcutPseudoActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 141
    invoke-static {p0, v2, p2, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 142
    sget p3, Lch/blinkenlights/android/vanilla/R$id;->next:I

    invoke-virtual {v0, p3, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 144
    new-instance p2, Landroid/content/ComponentName;

    const-class p3, Lch/blinkenlights/android/vanilla/FourSquareWidget;

    invoke-direct {p2, p0, p3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x0

    .line 51
    sput-boolean p1, Lch/blinkenlights/android/vanilla/FourSquareWidget;->sEnabled:Z

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x1

    .line 45
    sput-boolean p1, Lch/blinkenlights/android/vanilla/FourSquareWidget;->sEnabled:Z

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
    sput-boolean v1, Lch/blinkenlights/android/vanilla/FourSquareWidget;->sEnabled:Z

    .line 67
    invoke-static {p1, p2, p3, v0}, Lch/blinkenlights/android/vanilla/FourSquareWidget;->updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lch/blinkenlights/android/vanilla/Song;I)V

    return-void
.end method
