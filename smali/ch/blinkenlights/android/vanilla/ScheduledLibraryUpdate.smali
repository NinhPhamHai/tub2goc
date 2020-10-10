.class public Lch/blinkenlights/android/vanilla/ScheduledLibraryUpdate;
.super Landroid/app/job/JobService;
.source "ScheduledLibraryUpdate.java"


# instance fields
.field private mJobParams:Landroid/app/job/JobParameters;

.field private final mObserver:Lch/blinkenlights/android/medialibrary/LibraryObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 134
    new-instance v0, Lch/blinkenlights/android/vanilla/ScheduledLibraryUpdate$1;

    invoke-direct {v0, p0}, Lch/blinkenlights/android/vanilla/ScheduledLibraryUpdate$1;-><init>(Lch/blinkenlights/android/vanilla/ScheduledLibraryUpdate;)V

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/ScheduledLibraryUpdate;->mObserver:Lch/blinkenlights/android/medialibrary/LibraryObserver;

    return-void
.end method

.method static synthetic access$000(Lch/blinkenlights/android/vanilla/ScheduledLibraryUpdate;)Landroid/app/job/JobParameters;
    .locals 0

    .line 33
    iget-object p0, p0, Lch/blinkenlights/android/vanilla/ScheduledLibraryUpdate;->mJobParams:Landroid/app/job/JobParameters;

    return-object p0
.end method

.method static synthetic access$100(Lch/blinkenlights/android/vanilla/ScheduledLibraryUpdate;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/ScheduledLibraryUpdate;->finalizeScan()V

    return-void
.end method

.method private finalizeScan()V
    .locals 1

    .line 123
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/ScheduledLibraryUpdate;->mObserver:Lch/blinkenlights/android/medialibrary/LibraryObserver;

    invoke-static {v0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->unregisterLibraryObserver(Lch/blinkenlights/android/medialibrary/LibraryObserver;)V

    .line 124
    invoke-static {p0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->abortLibraryScan(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lch/blinkenlights/android/vanilla/ScheduledLibraryUpdate;->mJobParams:Landroid/app/job/JobParameters;

    return-void
.end method

.method private static jobsEqual(Landroid/app/job/JobInfo;Landroid/app/job/JobInfo;)Z
    .locals 5

    .line 80
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 81
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 82
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v0

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 83
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v0

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 84
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result p0

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static scheduleUpdate(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "jobscheduler"

    .line 52
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 54
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lch/blinkenlights/android/vanilla/ScheduledLibraryUpdate;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    new-instance p0, Landroid/app/job/JobInfo$Builder;

    const/16 v2, 0x9

    invoke-direct {p0, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v1, 0x1

    .line 56
    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 57
    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    const-wide/32 v2, 0x6ddd000

    .line 58
    invoke-virtual {p0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 59
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    .line 61
    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobInfo;

    .line 62
    invoke-static {v3, p0}, Lch/blinkenlights/android/vanilla/ScheduledLibraryUpdate;->jobsEqual(Landroid/app/job/JobInfo;Landroid/app/job/JobInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x0

    return p0

    .line 67
    :cond_1
    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return v1
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 7

    .line 95
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    return v1

    .line 98
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3fe6666666666666L    # 0.7

    const/4 v0, 0x1

    cmpl-double v6, v2, v4

    if-lez v6, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 100
    :goto_0
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/ScheduledLibraryUpdate;->mJobParams:Landroid/app/job/JobParameters;

    .line 101
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/ScheduledLibraryUpdate;->mObserver:Lch/blinkenlights/android/medialibrary/LibraryObserver;

    invoke-static {p1}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->registerLibraryObserver(Lch/blinkenlights/android/medialibrary/LibraryObserver;)V

    .line 102
    invoke-static {p0, v2, v1}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->startLibraryScan(Landroid/content/Context;ZZ)V

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 115
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/ScheduledLibraryUpdate;->finalizeScan()V

    const/4 p1, 0x0

    return p1
.end method
