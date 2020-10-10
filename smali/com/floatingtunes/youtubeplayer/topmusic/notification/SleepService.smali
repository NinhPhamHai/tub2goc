.class public Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;
.super Landroid/app/Service;
.source "SleepService.java"


# static fields
.field public static isRunning:Z

.field public static remainingSeconds:I


# instance fields
.field private notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->updateNotification()V

    return-void
.end method

.method static synthetic access$100(Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->cancelTimer()V

    return-void
.end method

.method static synthetic access$200(Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->deleteNotification()V

    return-void
.end method

.method private cancelTimer()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method

.method private createNotification()V
    .locals 4

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 110
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 112
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    const-string v3, "Sleep Timer By Music"

    invoke-direct {v2, p0, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x7f080287

    .line 113
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    const v3, 0x7f1102cb

    .line 114
    invoke-virtual {p0, v3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    sget v3, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->remainingSeconds:I

    .line 115
    invoke-direct {p0, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->formatSeconds(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 116
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 117
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 118
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    iput-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 120
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const v1, 0x2e7cbc7

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method private createNotificationChannel()V
    .locals 4

    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x3

    .line 145
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "sleep timer music"

    const-string v3, "Sleep Timer By Music"

    invoke-direct {v1, v3, v2, v0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 146
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 148
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 149
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method private deleteNotification()V
    .locals 2

    .line 134
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    const v1, 0x2e7cbc7

    .line 136
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    return-void
.end method

.method private formatSeconds(I)Ljava/lang/String;
    .locals 6

    .line 155
    div-int/lit16 v0, p1, 0xe10

    .line 156
    rem-int/lit16 v1, p1, 0xe10

    div-int/lit8 v1, v1, 0x3c

    .line 157
    rem-int/lit8 p1, p1, 0x3c

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 160
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "%02d:%02d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v5, 0x3

    .line 162
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    const-string p1, "%02d:%02d:%02d"

    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private startTimer()V
    .locals 7

    .line 56
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->timer:Ljava/util/Timer;

    .line 57
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->timer:Ljava/util/Timer;

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService$1;

    invoke-direct {v2, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private updateNotification()V
    .locals 3

    .line 127
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    sget v2, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->remainingSeconds:I

    invoke-direct {p0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->formatSeconds(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 129
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const v2, 0x2e7cbc7

    invoke-virtual {v0, v2, v1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    const/4 v0, 0x1

    .line 88
    sput-boolean v0, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->isRunning:Z

    .line 89
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->createNotificationChannel()V

    .line 90
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->createNotification()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 95
    sput-boolean v0, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->isRunning:Z

    .line 96
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->cancelTimer()V

    .line 97
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->deleteNotification()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    const-string p3, "sleep_time"

    .line 43
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->remainingSeconds:I

    .line 44
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->startTimer()V

    goto :goto_0

    .line 46
    :cond_0
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->cancelTimer()V

    .line 47
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :goto_0
    const/4 p1, 0x3

    return p1
.end method
