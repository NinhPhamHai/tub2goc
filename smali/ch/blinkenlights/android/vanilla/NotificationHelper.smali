.class public Lch/blinkenlights/android/vanilla/NotificationHelper;
.super Ljava/lang/Object;
.source "NotificationHelper.java"


# instance fields
.field private mChannelId:Ljava/lang/String;

.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "notification"

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    .line 45
    iput-object p2, p0, Lch/blinkenlights/android/vanilla/NotificationHelper;->mChannelId:Ljava/lang/String;

    .line 47
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    .line 48
    new-instance p1, Landroid/app/NotificationChannel;

    const/4 v0, 0x2

    invoke-direct {p1, p2, p3, v0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 49
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p2, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel(I)V
    .locals 1

    .line 93
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public getNewBuilder(Landroid/content/Context;)Landroid/app/Notification$Builder;
    .locals 2

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 61
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/NotificationHelper;->mChannelId:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0
.end method

.method public getNewNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/NotificationHelper;->getNewBuilder(Landroid/content/Context;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public notify(ILandroid/app/Notification;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
