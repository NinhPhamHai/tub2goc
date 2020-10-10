.class public Lcom/floatingtunes/youtubeplayer/topmusic/notification/NotiManager;
.super Ljava/lang/Object;
.source "NotiManager.java"


# direct methods
.method static synthetic access$000(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V
    .locals 0

    .line 42
    invoke-static {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/notification/NotiManager;->createNewSongsNotification(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    return-void
.end method

.method private static createNewSongsNotification(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V
    .locals 4

    .line 213
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "new songs"

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    const/4 v0, 0x3

    .line 216
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "new song is coming"

    invoke-direct {v2, v1, v3, v0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 217
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 219
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 220
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 222
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x10008000

    .line 223
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 224
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 226
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v2, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x7f0802f1

    .line 227
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 228
    invoke-virtual {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 229
    invoke-virtual {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getChannelTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 230
    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 231
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    new-instance p2, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {p2}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    .line 233
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    const/4 p1, 0x0

    .line 234
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 232
    invoke-virtual {v2, p2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 235
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 237
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p0

    const p2, 0x1e1b9

    .line 238
    invoke-virtual {p0, p2, p1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public static createNoti(Landroid/content/Context;)V
    .locals 10

    .line 52
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->isNewSongShow()Z

    move-result v0

    const-string v1, "create notification"

    if-nez v0, :cond_2

    const-string v0, "new"

    .line 53
    invoke-static {v1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/util/FirebaseUtil;->addFabricEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->getDbCheckInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    if-eqz v0, :cond_9

    .line 60
    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/notification/NotiManager$1;

    invoke-direct {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/notification/NotiManager$1;-><init>()V

    .line 61
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 60
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicConfig;

    if-eqz v0, :cond_9

    .line 64
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicConfig;->getMusicBean()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    if-eqz v1, :cond_9

    .line 66
    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getThumbnails()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v2, "https://s.ytimg.com/yts/img/no_thumbnail-vfl4t3-4R.jpg"

    .line 72
    :cond_1
    new-instance v3, Lokhttp3/OkHttpClient;

    invoke-direct {v3}, Lokhttp3/OkHttpClient;-><init>()V

    .line 73
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    .line 74
    invoke-virtual {v4, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 75
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 77
    invoke-virtual {v3, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    new-instance v3, Lcom/floatingtunes/youtubeplayer/topmusic/notification/NotiManager$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/notification/NotiManager$2;-><init>(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicConfig;)V

    invoke-interface {v2, v3}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    goto/16 :goto_3

    :cond_2
    const-string v0, "not new"

    .line 104
    invoke-static {v1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/util/FirebaseUtil;->addFabricEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 108
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v2, "Music just for you "

    .line 115
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_3

    .line 119
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\ud83c\udfa7"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    if-ne v3, v5, :cond_4

    .line 121
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\ud83c\udfb6"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 123
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\ud83d\ude0d"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v6, "Tap to listen to new songs ~"

    .line 135
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->getRandomFromHistory()Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 137
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "You\'ve listened "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", wanna get a new one ? "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_5
    move-object v7, v6

    :goto_1
    if-nez v3, :cond_6

    const-string v6, "Enjoy top pop songs of all time"

    goto :goto_2

    :cond_6
    if-ne v3, v5, :cond_7

    goto :goto_2

    :cond_7
    move-object v6, v7

    .line 149
    :goto_2
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    const-string v7, "MUSIC_DAILY_NOTIFICATION"

    invoke-direct {v3, p0, v7}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v8, 0x7f0802f1

    .line 150
    invoke-virtual {v3, v8}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 151
    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 152
    invoke-virtual {v3, v6}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 153
    invoke-virtual {v3, v1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 154
    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const v5, 0x1341534

    if-lt v0, v1, :cond_8

    const v0, 0x7f110045

    .line 157
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    new-instance v1, Landroid/app/NotificationChannel;

    invoke-direct {v1, v7, v0, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 160
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 161
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 162
    invoke-virtual {p0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 163
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_3

    .line 167
    :cond_8
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p0

    .line 168
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public static createScheduleNotification(Landroid/content/Context;)V
    .locals 6

    const-string v0, "alarm"

    .line 181
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-eqz v0, :cond_1

    .line 185
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/floatingtunes/youtubeplayer/topmusic/notification/MusicUpdateReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x12d687    # 1.729997E-39f

    const/high16 v3, 0x10000000

    .line 187
    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 189
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 190
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v2, 0xa

    .line 191
    invoke-virtual {v1, v2, v2}, Ljava/util/Calendar;->add(II)V

    .line 193
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 195
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    const/4 v5, 0x2

    if-lt v3, v4, :cond_0

    .line 196
    invoke-virtual {v0, v5, v1, v2, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {v0, v5, v1, v2, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :cond_1
    :goto_0
    return-void
.end method
