.class public Lch/blinkenlights/android/vanilla/WidgetE;
.super Landroid/appwidget/AppWidgetProvider;
.source "WidgetE.java"


# static fields
.field private static sEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static checkEnabled(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V
    .locals 2

    .line 73
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lch/blinkenlights/android/vanilla/WidgetE;

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
    sput-boolean p0, Lch/blinkenlights/android/vanilla/WidgetE;->sEnabled:Z

    return-void
.end method

.method public static updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lch/blinkenlights/android/vanilla/Song;I)V
    .locals 5

    .line 87
    sget-boolean v0, Lch/blinkenlights/android/vanilla/WidgetE;->sEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lch/blinkenlights/android/vanilla/R$layout;->widget_e:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    and-int/lit8 v1, p3, 0x2

    const-string v2, "setText"

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 93
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->buttons:I

    invoke-virtual {v0, p2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 94
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->title:I

    invoke-virtual {v0, p2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 95
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->artist:I

    sget v1, Lch/blinkenlights/android/vanilla/R$string;->no_songs:I

    invoke-virtual {v0, p2, v2, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 97
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->buttons:I

    invoke-virtual {v0, p2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 98
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->title:I

    invoke-virtual {v0, p2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 99
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->artist:I

    sget v1, Lch/blinkenlights/android/vanilla/R$string;->app_name:I

    invoke-virtual {v0, p2, v2, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_0

    .line 101
    :cond_2
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->title:I

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 102
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->buttons:I

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 103
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->title:I

    iget-object v2, p2, Lch/blinkenlights/android/vanilla/Song;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 104
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->artist:I

    iget-object p2, p2, Lch/blinkenlights/android/vanilla/Song;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_0
    and-int/lit8 p2, p3, 0x1

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    .line 108
    :goto_1
    sget v1, Lch/blinkenlights/android/vanilla/R$id;->play_pause:I

    if-eqz p2, :cond_4

    sget p2, Lch/blinkenlights/android/vanilla/R$drawable;->pause:I

    goto :goto_2

    :cond_4
    sget p2, Lch/blinkenlights/android/vanilla/R$drawable;->play:I

    :goto_2
    invoke-virtual {v0, v1, p2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 109
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->end_action:I

    sget-object v1, Lch/blinkenlights/android/vanilla/SongTimeline;->FINISH_ICONS:[I

    invoke-static {p3}, Lch/blinkenlights/android/vanilla/PlaybackService;->finishAction(I)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, p2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 110
    sget p2, Lch/blinkenlights/android/vanilla/R$id;->shuffle:I

    sget-object v1, Lch/blinkenlights/android/vanilla/SongTimeline;->SHUFFLE_ICONS:[I

    invoke-static {p3}, Lch/blinkenlights/android/vanilla/PlaybackService;->shuffleMode(I)I

    move-result p3

    aget p3, v1, p3

    invoke-virtual {v0, p2, p3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 116
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lch/blinkenlights/android/vanilla/LibraryActivity;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "android.intent.action.MAIN"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 117
    invoke-static {p0, v4, p2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 118
    sget p3, Lch/blinkenlights/android/vanilla/R$id;->title:I

    invoke-virtual {v0, p3, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 119
    sget p3, Lch/blinkenlights/android/vanilla/R$id;->artist:I

    invoke-virtual {v0, p3, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string p2, "ch.blinkenlights.android.vanilla.action.TOGGLE_PLAYBACK"

    .line 121
    invoke-static {p0, p2}, Lch/blinkenlights/android/vanilla/ShortcutPseudoActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 122
    invoke-static {p0, v4, p2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 123
    sget p3, Lch/blinkenlights/android/vanilla/R$id;->play_pause:I

    invoke-virtual {v0, p3, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string p2, "ch.blinkenlights.android.vanilla.action.NEXT_SONG"

    .line 125
    invoke-static {p0, p2}, Lch/blinkenlights/android/vanilla/ShortcutPseudoActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 126
    invoke-static {p0, v4, p2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 127
    sget p3, Lch/blinkenlights/android/vanilla/R$id;->next:I

    invoke-virtual {v0, p3, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string p2, "ch.blinkenlights.android.vanilla.action.PREVIOUS_SONG"

    .line 129
    invoke-static {p0, p2}, Lch/blinkenlights/android/vanilla/ShortcutPseudoActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 130
    invoke-static {p0, v4, p2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 131
    sget p3, Lch/blinkenlights/android/vanilla/R$id;->previous:I

    invoke-virtual {v0, p3, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string p2, "ch.blinkenlights.android.vanilla.CYCLE_SHUFFLE"

    .line 133
    invoke-static {p0, p2}, Lch/blinkenlights/android/vanilla/ShortcutPseudoActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 134
    invoke-static {p0, v4, p2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 135
    sget p3, Lch/blinkenlights/android/vanilla/R$id;->shuffle:I

    invoke-virtual {v0, p3, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const-string p2, "ch.blinkenlights.android.vanilla.CYCLE_REPEAT"

    .line 137
    invoke-static {p0, p2}, Lch/blinkenlights/android/vanilla/ShortcutPseudoActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 138
    invoke-static {p0, v4, p2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 139
    sget p3, Lch/blinkenlights/android/vanilla/R$id;->end_action:I

    invoke-virtual {v0, p3, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 141
    new-instance p2, Landroid/content/ComponentName;

    const-class p3, Lch/blinkenlights/android/vanilla/WidgetE;

    invoke-direct {p2, p0, p3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x0

    .line 49
    sput-boolean p1, Lch/blinkenlights/android/vanilla/WidgetE;->sEnabled:Z

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x1

    .line 43
    sput-boolean p1, Lch/blinkenlights/android/vanilla/WidgetE;->sEnabled:Z

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3

    .line 58
    invoke-static {}, Lch/blinkenlights/android/vanilla/PlaybackService;->hasInstance()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 59
    invoke-static {p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object p3

    .line 60
    invoke-virtual {p3, v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->getSong(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object v0

    .line 61
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

    .line 64
    sput-boolean v1, Lch/blinkenlights/android/vanilla/WidgetE;->sEnabled:Z

    .line 65
    invoke-static {p1, p2, p3, v0}, Lch/blinkenlights/android/vanilla/WidgetE;->updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lch/blinkenlights/android/vanilla/Song;I)V

    return-void
.end method
